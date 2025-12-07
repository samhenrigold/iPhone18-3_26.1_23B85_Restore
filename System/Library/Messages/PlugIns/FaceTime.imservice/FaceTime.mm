id sub_23BCA0328()
{
  qword_281422898 = objc_alloc_init(MEMORY[0x277CBEB18]);
  result = objc_alloc_init(MEMORY[0x277CBEB38]);
  qword_2814228A0 = result;
  return result;
}

uint64_t sub_23BCA420C(uint64_t a1, __CFString *a2, __CFDictionary *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = a3;
  v1169 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_topic(a2, a2, a3, a4, a6, a5);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"com.apple.private.ac", v10, v12, v11);
  v13 = OSLogHandleForIDSCategory();
  v14 = a4;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v20 = NSStringFromClass(v15);
    if (isEqualToString)
    {
      v22 = @"audio";
    }

    else
    {
      v22 = @"video";
    }

    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v16, v17, v18, v21, v19);
    v24 = v23.n128_f64[0];
    objc_msgSend_timeSent(a2, v25, v26, v27, v23, v28);
    *buf = 138413570;
    v1160 = v20;
    v1161 = 2112;
    v1162 = v7;
    v1163 = 1024;
    *v1164 = v14;
    *&v1164[4] = 2112;
    *&v1164[6] = a5;
    v1165 = 2112;
    v1166 = v22;
    v1167 = 2048;
    v1168 = v24 - v29;
    _os_log_impl(&dword_23BC9F000, v13, OS_LOG_TYPE_DEFAULT, "Message class: %@  delivered with error: %@  code: %d result: %@  call type: %@   message delivery time: %fs", buf, 0x3Au);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v35 = objc_opt_class();
      v40 = NSStringFromClass(v35);
      if (isEqualToString)
      {
        v42 = @"audio";
      }

      else
      {
        v42 = @"video";
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v36, v37, v38, v41, v39);
      v44 = v43.n128_f64[0];
      objc_msgSend_timeSent(a2, v45, v46, v47, v43, v48);
      v1122 = v44 - v49;
      v1120 = a5;
      v1121 = v42;
      v1116 = v7;
      v1118 = v14;
      v1113 = v40;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v50 = objc_opt_class();
      v55 = NSStringFromClass(v50);
      if (isEqualToString)
      {
        v57 = @"audio";
      }

      else
      {
        v57 = @"video";
      }

      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v51, v52, v53, v56, v54, v1113, v1116, v1118, v1120, v1121, *&v1122);
      v59 = v58.n128_f64[0];
      objc_msgSend_timeSent(a2, v60, v61, v62, v58, v63);
      v1122 = v59 - v64;
      v1120 = a5;
      v1121 = v57;
      v1116 = v7;
      v1118 = v14;
      v1113 = v55;
      IMLogString();
    }
  }

  v1128 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v30, v31, v32, v34, v33, v1113, v1116, v1118, v1120, v1121, *&v1122);
  if (v14 == 5058)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (IMOSLoggingEnabled())
      {
        v70 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v1160 = a2;
          _os_log_impl(&dword_23BC9F000, v70, OS_LOG_TYPE_INFO, "  Peer claimed it was too old to receive a signal, that's ok!  (Message: %@)", buf, 0xCu);
        }
      }

      v14 = 0;
      v7 = 0;
    }

    else
    {
      v14 = 5058;
    }
  }

  v1127 = v14;
  if (v14 == 5020)
  {
    v71 = 0;
  }

  else
  {
    v71 = v14;
  }

  v1130 = v71;
  if (v14 == 5020)
  {
    v72 = 0;
  }

  else
  {
    v72 = v7;
  }

  v1125 = v72;
  v73 = objc_msgSend_sharedInstance(MEMORY[0x277D192A8], v65, v66, v67, v69, v68);
  objc_msgSend_isScreenLocked(v73, v74, v75, v76, v78, v77);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_23BCB5020(v1130);
    v84 = objc_msgSend_date(MEMORY[0x277CBEAA8], v79, v80, v81, v83, v82);
    v90 = objc_msgSend_userInfo(a2, v85, v86, v87, v89, v88);
    v95 = objc_msgSend_objectForKey_(v90, v91, @"sendDate", v92, v94, v93);
    objc_msgSend_timeIntervalSinceDate_(v84, v96, v95, v97, v99, v98);
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v100, v101, v102, v104, v103);
    FTAWDLogCallInvitationSent();
LABEL_42:
    v287 = MEMORY[0x277CBEB38];
    v288 = objc_msgSend_uniqueIDString(a2, v106, v107, v108, v110, v109);
    v289 = MEMORY[0x277CCACA8];
    v295 = objc_msgSend_command(a2, v290, v291, v292, v294, v293);
    v300 = objc_msgSend_stringWithFormat_(v289, v296, @"%d", v297, v299, v298, v295);
    v1128 = objc_msgSend_dictionaryWithObjectsAndKeys_(v287, v301, v105, v302, v304, v303, @"SendDuration", v288, @"MessageIdentifier", v300, @"CommandID", 0);
    goto LABEL_43;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_23BCB5020(v1130);
    v116 = objc_msgSend_date(MEMORY[0x277CBEAA8], v111, v112, v113, v115, v114);
    v122 = objc_msgSend_userInfo(a2, v117, v118, v119, v121, v120);
    v127 = objc_msgSend_objectForKey_(v122, v123, @"sendDate", v124, v126, v125);
    objc_msgSend_timeIntervalSinceDate_(v116, v128, v127, v129, v131, v130);
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v132, v133, v134, v136, v135);
    FTAWDLogCallAcceptSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sub_23BCB5020(v1130);
    v142 = objc_msgSend_date(MEMORY[0x277CBEAA8], v137, v138, v139, v141, v140);
    v148 = objc_msgSend_userInfo(a2, v143, v144, v145, v147, v146);
    v153 = objc_msgSend_objectForKey_(v148, v149, @"sendDate", v150, v152, v151);
    objc_msgSend_timeIntervalSinceDate_(v142, v154, v153, v155, v157, v156);
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v158, v159, v160, v162, v161);
    FTAWDLogCallCancelSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v168 = objc_msgSend_date(MEMORY[0x277CBEAA8], v163, v164, v165, v167, v166);
    v174 = objc_msgSend_userInfo(a2, v169, v170, v171, v173, v172);
    v179 = objc_msgSend_objectForKey_(v174, v175, @"sendDate", v176, v178, v177);
    objc_msgSend_timeIntervalSinceDate_(v168, v180, v179, v181, v183, v182);
    v185 = v184;
    sub_23BCB5020(v1130);
    v191 = objc_msgSend_reason(a2, v186, v187, v188, v190, v189);
    v197 = objc_msgSend_unsignedIntValue(v191, v192, v193, v194, v196, v195);
    sub_23BCB5014(v197);
    v198.n128_u64[0] = v185;
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v199, v200, v201, v198, v202);
    FTAWDLogCallDeclineSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v208 = objc_msgSend_sessionToken(a2, v203, v204, v205, v207, v206);
    v214 = objc_msgSend___imHexString(v208, v209, v210, v211, v213, v212);
    objc_msgSend_containsObject_(*(*(a1 + 32) + 336), v215, v214, v216, v218, v217);
    sub_23BCB5020(v1130);
    v224 = objc_msgSend_date(MEMORY[0x277CBEAA8], v219, v220, v221, v223, v222);
    v230 = objc_msgSend_userInfo(a2, v225, v226, v227, v229, v228);
    v235 = objc_msgSend_objectForKey_(v230, v231, @"sendDate", v232, v234, v233);
    objc_msgSend_timeIntervalSinceDate_(v224, v236, v235, v237, v239, v238);
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v240, v241, v242, v244, v243);
    FTAWDLogCallRelayInitiateSent();
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v250 = objc_msgSend_sessionToken(a2, v245, v246, v247, v249, v248);
    v256 = objc_msgSend___imHexString(v250, v251, v252, v253, v255, v254);
    objc_msgSend_containsObject_(*(*(a1 + 32) + 336), v257, v256, v258, v260, v259);
    sub_23BCB5020(v1130);
    v266 = objc_msgSend_date(MEMORY[0x277CBEAA8], v261, v262, v263, v265, v264);
    v272 = objc_msgSend_userInfo(a2, v267, v268, v269, v271, v270);
    v277 = objc_msgSend_objectForKey_(v272, v273, @"sendDate", v274, v276, v275);
    objc_msgSend_timeIntervalSinceDate_(v266, v278, v277, v279, v281, v280);
    v105 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v282, v283, v284, v286, v285);
    FTAWDLogCallRelayUpdateSent();
    goto LABEL_42;
  }

LABEL_43:
  v305 = objc_msgSend_userInfo(a2, v245, v246, v247, v249, v248);
  v1123 = objc_msgSend_objectForKey_(v305, v306, @"conference", v307, v309, v308);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v315 = objc_msgSend_userInfo(a2, v310, v311, v312, v314, v313);
    v320 = objc_msgSend_objectForKey_(v315, v316, @"conference", v317, v319, v318);
    v326 = objc_msgSend_sessionToken(a2, v321, v322, v323, v325, v324);
    v1132 = objc_msgSend___imHexString(v326, v327, v328, v329, v331, v330);
    if (!v1130)
    {
      objc_msgSend__setInitiatedConference_(*(*(*(a1 + 40) + 8) + 40), v332, v1132, v333, v335, v334);
      objc_msgSend__setCallType_forConferenceID_(*(*(*(a1 + 40) + 8) + 40), v336, isEqualToString, v1132, v338, v337);
    }

    if ((objc_msgSend_isEqualToString_(v320, v332, v1132, v333, v335, v334) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v344 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v344, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v1160 = v320;
          v1161 = 2112;
          v1162 = v1132;
          _os_log_impl(&dword_23BC9F000, v344, OS_LOG_TYPE_INFO, "  Initiate processed!   CID changed from %@ to %@", buf, 0x16u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v345 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v345, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v1160 = v1132;
          _os_log_impl(&dword_23BC9F000, v345, OS_LOG_TYPE_INFO, "Conference ID: %@", buf, 0xCu);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      if (!v1130)
      {
        v351 = *(*(*(a1 + 40) + 8) + 40);
        v352 = objc_msgSend_sessionToken(a2, v346, v347, v348, v350, v349);
        objc_msgSend__setConferenceIDMap_forToken_(v351, v353, v320, v352, v355, v354);
      }

      v356 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v346, @"%@", v348, v350, v349, v1132);
      objc_msgSend_setObject_forKey_(v1128, v357, v356, @"ConferenceID", v359, v358);
      v1143 = 0u;
      v1144 = 0u;
      v1141 = 0u;
      v1142 = 0u;
      v364 = objc_msgSend_queuedMessages(qword_281422890, v360, v361, v362, 0, v363);
      v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v364, v365, &v1141, v1150, v366, 16);
      if (v371)
      {
        v373 = *v1142;
        v372.n128_u64[0] = 138412546;
        do
        {
          for (i = 0; i != v371; ++i)
          {
            if (*v1142 != v373)
            {
              objc_enumerationMutation(v364);
            }

            v375 = *(*(&v1141 + 1) + 8 * i);
            v376 = objc_msgSend_userInfo(v375, v367, v368, v369, v372, v370);
            v381 = objc_msgSend_objectForKey_(v376, v377, @"conference", v378, v380, v379);
            if (IMOSLoggingEnabled())
            {
              v386 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v386, OS_LOG_TYPE_INFO))
              {
                v388 = objc_msgSend_sessionToken(v375, v382, v387, v383, v385, v384);
                v394 = objc_msgSend___imHexString(v388, v389, v390, v391, v393, v392);
                *buf = 138412802;
                v1160 = v375;
                v1161 = 2112;
                v1162 = v381;
                v1163 = 2112;
                *v1164 = v394;
                _os_log_impl(&dword_23BC9F000, v386, OS_LOG_TYPE_INFO, "  Found queued message: %@   (%@: %@)", buf, 0x20u);
              }
            }

            if (objc_msgSend_isEqualToString_(v381, v382, v320, v383, v385, v384))
            {
              if (IMOSLoggingEnabled())
              {
                v400 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v400, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v1160 = v320;
                  v1161 = 2112;
                  v1162 = v1132;
                  _os_log_impl(&dword_23BC9F000, v400, OS_LOG_TYPE_INFO, "  Fixing conference ID: %@ => %@", buf, 0x16u);
                }
              }

              v401 = objc_msgSend_sessionToken(a2, v395, v396, v397, v399, v398);
              objc_msgSend_setSessionToken_(v375, v402, v401, v403, v405, v404);
            }
          }

          v371 = objc_msgSend_countByEnumeratingWithState_objects_count_(v364, v367, &v1141, v1150, v372, 16);
        }

        while (v371);
      }

      v406 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
        v407 = objc_msgSend_broadcasterForACConferenceListeners(v406, v367, v368, v369, v372, v370);
      }

      else
      {
        v407 = objc_msgSend_broadcasterForVCConferenceListeners(v406, v367, v368, v369, v372, v370);
      }

      v414 = v407;
      v415 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v408, v409, v410, v412, v411);
      objc_msgSend_account_conference_changedToNewConferenceID_(v414, v416, v415, v320, v417, v1132);
      v1123 = v1132;
    }

    if (v1130)
    {
      PLLogRegisteredEvent();
      goto LABEL_249;
    }

    v418 = *(*(*(a1 + 40) + 8) + 40);
    if (isEqualToString)
    {
      v419 = objc_msgSend_broadcasterForACConferenceListeners(v418, v339, v340, v341, v343, v342);
    }

    else
    {
      v419 = objc_msgSend_broadcasterForVCConferenceListeners(v418, v339, v340, v341, v343, v342);
    }

    v425 = v419;
    v426 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v420, v421, v422, v424, v423);
    objc_msgSend_account_conference_invitationSentSuccessfully_(v425, v427, v426, v1132, v428, 1);
    PLLogRegisteredEvent();
  }

  else
  {
    PLLogRegisteredEvent();
    v413 = v1130;
    if (v1130)
    {
      goto LABEL_247;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v574 = objc_msgSend_sessionToken(a2, v569, v570, v571, v573, v572);
      v580 = objc_msgSend___imHexString(v574, v575, v576, v577, v579, v578);
      v581 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v588 = objc_msgSend_relayType(a2, v582, v583, v584, v586, v585);
      if (v588)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FE8], v588);
      }

      v593 = objc_msgSend_relayConnectionId(a2, v587, v588, v589, v591, v590);
      if (v593)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18F48], v593);
      }

      v598 = objc_msgSend_relayTransactionIdAlloc(a2, v592, v593, v594, v596, v595);
      if (v598)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FE0], v598);
      }

      v603 = objc_msgSend_relayTokenAllocReq(a2, v597, v598, v599, v601, v600);
      if (v603)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FD8], v603);
      }

      v608 = objc_msgSend_peerRelayIP(a2, v602, v603, v604, v606, v605);
      if (v608)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18F70], v608);
      }

      v613 = objc_msgSend_peerRelayPort(a2, v607, v608, v609, v611, v610);
      if (v613)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18F88], v613);
      }

      v618 = objc_msgSend_selfRelayIP(a2, v612, v613, v614, v616, v615);
      if (v618)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FB8], v618);
      }

      v622 = objc_msgSend_selfRelayPort(a2, v617, v618, v619, v621, v620);
      if (v622)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FD0], v622);
      }

      if (IMOSLoggingEnabled())
      {
        v623 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v623, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v1160 = v580;
          v1161 = 2112;
          v1162 = v581;
          _os_log_impl(&dword_23BC9F000, v623, OS_LOG_TYPE_INFO, "  Response to relay request %@    parameters: %@", buf, 0x16u);
        }
      }

      v624 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v624, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v1160 = v580;
        v1161 = 2112;
        v1162 = v581;
        _os_log_impl(&dword_23BC9F000, v624, OS_LOG_TYPE_DEFAULT, "  Response to relay request %@    parameters: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v1114 = v580;
          v1117 = v581;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v1114 = v580;
          v1117 = v581;
          IMLogString();
        }
      }

      v630 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
LABEL_243:
        v714 = objc_msgSend_broadcasterForACConferenceListeners(v630, v625, v626, v627, v629, v628);
LABEL_393:
        v824 = v714;
        v825 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v715, v716, v717, v719, v718, v1114, v1117);
        v826 = *(*(*(a1 + 40) + 8) + 40);
        v832 = objc_msgSend_peerID(a2, v827, v828, v829, v831, v830);
        v836 = objc_msgSend__displayIDForPeerID_conferenceID_(v826, v833, v832, v580, v835, v834);
        v837 = sub_23BCA7F48(v836);
        objc_msgSend_account_relay_handleInitate_fromPerson_(v824, v838, v825, v580, v839, v581, v837);

        goto LABEL_394;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || !objc_msgSend_relayType(a2, v655, v656, v657, v659, v658))
      {
        goto LABEL_394;
      }

      v665 = objc_msgSend_sessionToken(a2, v660, v661, v662, v664, v663);
      v580 = objc_msgSend___imHexString(v665, v666, v667, v668, v670, v669);
      v581 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v677 = objc_msgSend_relayType(a2, v671, v672, v673, v675, v674);
      if (v677)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FE8], v677);
      }

      v682 = objc_msgSend_relayConnectionId(a2, v676, v677, v678, v680, v679);
      if (v682)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18F48], v682);
      }

      v687 = objc_msgSend_relayTransactionIdAlloc(a2, v681, v682, v683, v685, v684);
      if (v687)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FE0], v687);
      }

      v692 = objc_msgSend_relayTokenAllocReq(a2, v686, v687, v688, v690, v689);
      if (v692)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FD8], v692);
      }

      v697 = objc_msgSend_peerRelayIP(a2, v691, v692, v693, v695, v694);
      if (v697)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18F70], v697);
      }

      v702 = objc_msgSend_peerRelayPort(a2, v696, v697, v698, v700, v699);
      if (v702)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18F88], v702);
      }

      v707 = objc_msgSend_selfRelayIP(a2, v701, v702, v703, v705, v704);
      if (v707)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FB8], v707);
      }

      v711 = objc_msgSend_selfRelayPort(a2, v706, v707, v708, v710, v709);
      if (v711)
      {
        CFDictionarySetValue(v581, *MEMORY[0x277D18FD0], v711);
      }

      if (IMOSLoggingEnabled())
      {
        v712 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v712, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v1160 = v580;
          v1161 = 2112;
          v1162 = v581;
          _os_log_impl(&dword_23BC9F000, v712, OS_LOG_TYPE_INFO, "  Inline request to relay %@    parameters: %@", buf, 0x16u);
        }
      }

      v713 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v713, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v1160 = v580;
        v1161 = 2112;
        v1162 = v581;
        _os_log_impl(&dword_23BC9F000, v713, OS_LOG_TYPE_DEFAULT, "  Inline request to relay %@    parameters: %@", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          v1114 = v580;
          v1117 = v581;
          MarcoLog();
        }

        if (IMShouldLog())
        {
          v1114 = v580;
          v1117 = v581;
          IMLogString();
        }
      }

      v630 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
        goto LABEL_243;
      }
    }

    v714 = objc_msgSend_broadcasterForVCConferenceListeners(v630, v625, v626, v627, v629, v628);
    goto LABEL_393;
  }

  v434 = objc_msgSend_sessionToken(a2, v429, v430, v431, v433, v432);
  v1133 = objc_msgSend___imHexString(v434, v435, v436, v437, v439, v438);
  obj = objc_msgSend_canonicalizedPeers(a2, v440, v441, v442, v444, v443);
  v1134 = *(*(*(a1 + 40) + 8) + 40);
  v450 = objc_msgSend_userInfo(a2, v445, v446, v447, v449, v448);
  v455 = objc_msgSend_objectForKey_(v450, v451, @"ID", v452, v454, v453);
  if (!objc_msgSend_count(obj, v456, v457, v458, v460, v459) || !objc_msgSend_length(v1133, v461, v462, v463, v465, v464))
  {
    goto LABEL_188;
  }

  objc_msgSend__setPeerInfo_conferenceID_(v1134, v461, obj, v1133, v465, v466);
  if (IMOSLoggingEnabled())
  {
    v467 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v467, OS_LOG_TYPE_INFO))
    {
      *v1151 = 138412802;
      v1152 = obj;
      v1153 = 2112;
      v1154 = v1133;
      v1155 = 2112;
      v1156 = v455;
      _os_log_impl(&dword_23BC9F000, v467, OS_LOG_TYPE_INFO, "  Processing peers: %@ for conferenceID: %@ and targetID: %@", v1151, 0x20u);
    }
  }

  v468 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v468, OS_LOG_TYPE_DEFAULT))
  {
    *v1151 = 138412290;
    v1152 = obj;
    _os_log_impl(&dword_23BC9F000, v468, OS_LOG_TYPE_DEFAULT, "Processing peers: %@", v1151, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v1114 = obj;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v1114 = obj;
      IMLogString();
    }
  }

  v1147 = 0u;
  v1148 = 0u;
  v1145 = 0u;
  v1146 = 0u;
  v472 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v469, &v1145, buf, 0, 16, v1114);
  if (!v472)
  {
    goto LABEL_188;
  }

  v473 = 0;
  v474 = *v1146;
  v465.n128_u64[0] = 138412802;
  do
  {
    for (j = 0; j != v472; ++j)
    {
      if (*v1146 != v474)
      {
        objc_enumerationMutation(obj);
      }

      v476 = *(*(&v1145 + 1) + 8 * j);
      v477 = objc_msgSend_objectForKey_(v476, v461, @"status", v470, v465, v471, v1114, v1117, v1119);
      v482 = objc_msgSend_objectForKey_(v476, v478, @"id", v479, v481, v480);
      v487 = objc_msgSend_objectForKey_(v476, v483, @"canonical-id", v484, v486, v485);
      v493 = objc_msgSend__stripFZIDPrefix(v487, v488, v489, v490, v492, v491);
      if (objc_msgSend_intValue(v477, v494, v495, v496, v498, v497))
      {
        if (IMOSLoggingEnabled())
        {
          v501 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v501, OS_LOG_TYPE_INFO))
          {
            *v1151 = 138412802;
            v1152 = v482;
            v1153 = 2112;
            v1154 = v477;
            v1155 = 2112;
            v1156 = v493;
            _os_log_impl(&dword_23BC9F000, v501, OS_LOG_TYPE_INFO, "  Skipping (non-0 status)   peerID: %@    status code: %@  canonical id: %@", v1151, 0x20u);
          }
        }

        v502 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v502, OS_LOG_TYPE_DEFAULT))
        {
          *v1151 = 138412802;
          v1152 = v482;
          v1153 = 2112;
          v1154 = v477;
          v1155 = 2112;
          v1156 = v493;
          _os_log_impl(&dword_23BC9F000, v502, OS_LOG_TYPE_DEFAULT, "  Skipping (non-0 status)   peerID: %@    status code: %@  canonical id: %@", v1151, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v1117 = v477;
            v1119 = v493;
            v1114 = v482;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v1117 = v477;
            v1119 = v493;
            v1114 = v482;
            IMLogString();
          }
        }
      }

      else
      {
        objc_msgSend__setAlternateDisplayID_forPeerID_conferenceID_(v1134, v499, v455, v482, v500, v1133);
        if (IMOSLoggingEnabled())
        {
          v503 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v503, OS_LOG_TYPE_INFO))
          {
            *v1151 = 138413058;
            v1152 = v493;
            v1153 = 2112;
            v1154 = v482;
            v1155 = 2112;
            v1156 = v455;
            v1157 = 2112;
            v1158 = v493;
            _os_log_impl(&dword_23BC9F000, v503, OS_LOG_TYPE_INFO, "     Peer: %@    Canonical: %@   Old: %@   New: %@", v1151, 0x2Au);
          }
        }

        v504 = OSLogHandleForIDSCategory();
        if (os_log_type_enabled(v504, OS_LOG_TYPE_DEFAULT))
        {
          *v1151 = 138413058;
          v1152 = v493;
          v1153 = 2112;
          v1154 = v482;
          v1155 = 2112;
          v1156 = v455;
          v1157 = 2112;
          v1158 = v493;
          _os_log_impl(&dword_23BC9F000, v504, OS_LOG_TYPE_DEFAULT, "     Peer: %@    Canonical: %@   Old: %@   New: %@", v1151, 0x2Au);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (MarcoShouldLog())
          {
            v1119 = v455;
            v1114 = v493;
            v1117 = v482;
            MarcoLog();
          }

          if (IMShouldLog())
          {
            v1119 = v455;
            v1114 = v493;
            v1117 = v482;
            IMLogString();
          }
        }

        if (objc_msgSend_isEqualToString_(v455, v505, v493, v506, v508, v507, v1114))
        {
          if (IMOSLoggingEnabled())
          {
            v514 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v514, OS_LOG_TYPE_INFO))
            {
              *v1151 = 138412290;
              v1152 = v455;
              _os_log_impl(&dword_23BC9F000, v514, OS_LOG_TYPE_INFO, "Peer ID did not change: %@", v1151, 0xCu);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            v1114 = v455;
            MarcoNoteCheckpoint();
          }
        }

        else
        {
          if (isEqualToString)
          {
            v515 = objc_msgSend_broadcasterForACConferenceListeners(v1134, v509, v510, v511, v513, v512);
          }

          else
          {
            v515 = objc_msgSend_broadcasterForVCConferenceListeners(v1134, v509, v510, v511, v513, v512);
          }

          v521 = v515;
          v522 = objc_msgSend_accountID(v1134, v516, v517, v518, v520, v519);
          objc_msgSend_account_conference_peerIDChangedFromID_toID_(v521, v523, v522, v1133, v524, v455, v493);
          if (IMOSLoggingEnabled())
          {
            v525 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v525, OS_LOG_TYPE_INFO))
            {
              *v1151 = 138412546;
              v1152 = v455;
              v1153 = 2112;
              v1154 = v493;
              _os_log_impl(&dword_23BC9F000, v525, OS_LOG_TYPE_INFO, "Peer ID was mapped from: %@ to: %@", v1151, 0x16u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            v1114 = v455;
            v1117 = v493;
            MarcoNoteCheckpoint();
          }
        }

        v473 = 1;
      }
    }

    v472 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v461, &v1145, buf, v465, 16);
  }

  while (v472);
  if (v473)
  {
    v1135 = *(*(*(a1 + 40) + 8) + 40);
    v1145 = 0u;
    v1146 = 0u;
    v1147 = 0u;
    v1148 = 0u;
    v527 = objc_msgSend_queuedMessages(qword_281422890, v461, v526, v470, 0, v471);
    v534 = objc_msgSend_countByEnumeratingWithState_objects_count_(v527, v528, &v1145, buf, v529, 16);
    if (v534)
    {
      v536 = *v1146;
      do
      {
        for (k = 0; k != v534; ++k)
        {
          if (*v1146 != v536)
          {
            objc_enumerationMutation(v527);
          }

          v538 = *(*(&v1145 + 1) + 8 * k);
          v539 = objc_msgSend_userInfo(v538, v530, v531, v532, v535, v533, v1114);
          v544 = objc_msgSend_objectForKey_(v539, v540, @"ID", v541, v543, v542);
          if (IMOSLoggingEnabled())
          {
            v545 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v545, OS_LOG_TYPE_INFO))
            {
              *v1151 = 138412546;
              v1152 = v538;
              v1153 = 2112;
              v1154 = v544;
              _os_log_impl(&dword_23BC9F000, v545, OS_LOG_TYPE_INFO, "  Found queued message: %@  with ID: %@", v1151, 0x16u);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v546 = objc_msgSend_peers(v538, v530, v531, v532, v535, v533);
            if (!objc_msgSend_count(v546, v547, v548, v549, v551, v550))
            {
              v552 = objc_msgSend_sessionToken(v538, v530, v531, v532, v535, v533);
              v558 = objc_msgSend___imHexString(v552, v553, v554, v555, v557, v556);
              if (objc_msgSend_isEqualToString_(v558, v559, v1133, v560, v562, v561))
              {
                v563 = objc_msgSend__peerInfoForDisplayID_conferenceID_skippingPairs_(v1135, v530, v544, v1133, v535, 0);
                if (IMOSLoggingEnabled())
                {
                  v568 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v568, OS_LOG_TYPE_INFO))
                  {
                    *v1151 = 138412546;
                    v1152 = v544;
                    v1153 = 2112;
                    v1154 = v563;
                    _os_log_impl(&dword_23BC9F000, v568, OS_LOG_TYPE_INFO, "  Fixing peers for ID: %@ => %@", v1151, 0x16u);
                  }
                }

                objc_msgSend_setPeers_(v538, v564, v563, v565, v567, v566);
              }
            }
          }
        }

        v534 = objc_msgSend_countByEnumeratingWithState_objects_count_(v527, v530, &v1145, buf, v535, 16);
      }

      while (v534);
    }

    v413 = 0;
  }

  else
  {
LABEL_188:
    v1125 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v461, *MEMORY[0x277D07D88], 5030, v465, 0, v1114);
    if (IMOSLoggingEnabled())
    {
      v631 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v631, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v631, OS_LOG_TYPE_INFO, "No peer response in initiate", buf, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v632 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v632, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v632, OS_LOG_TYPE_INFO, "No peer response in initiate", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    v413 = 5030;
  }

  v633 = objc_msgSend__anyPeersForConferenceIDMayRequireBreakBeforeMake_(*(*(*(a1 + 40) + 8) + 40), v530, v1133, v532, v535, v533, v1114);
  if (IMOSLoggingEnabled())
  {
    v634 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v634, OS_LOG_TYPE_INFO))
    {
      v635 = @"NO";
      if (v633)
      {
        v635 = @"YES";
      }

      *buf = 138412290;
      v1160 = v635;
      _os_log_impl(&dword_23BC9F000, v634, OS_LOG_TYPE_INFO, "Conference may require break before make: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v636 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v636, OS_LOG_TYPE_INFO))
    {
      v637 = @"NO";
      if (v633)
      {
        v637 = @"YES";
      }

      *buf = 138412290;
      v1160 = v637;
      _os_log_impl(&dword_23BC9F000, v636, OS_LOG_TYPE_INFO, "Conference may require break before make: %@", buf, 0xCu);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v641 = @"NO";
    if (v633)
    {
      v641 = @"YES";
    }

    v1114 = v641;
    MarcoNoteCheckpoint();
  }

  if (v633)
  {
    v646 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v638, MEMORY[0x277CBEC38], *MEMORY[0x277D19528], v640, v639);
    v648 = *(*(*(a1 + 40) + 8) + 40);
    if (isEqualToString)
    {
      v649 = objc_msgSend_broadcasterForACConferenceListeners(v648, v642, v643, v644, v647, v645);
    }

    else
    {
      v649 = objc_msgSend_broadcasterForVCConferenceListeners(v648, v642, v643, v644, v647, v645);
    }

    v720 = v649;
    v721 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v650, v651, v652, v654, v653, v1114);
    objc_msgSend_account_conference_peerID_propertiesUpdated_(v720, v722, v721, v1133, v723, 0, v646);
  }

LABEL_247:
  if (!v413)
  {
LABEL_394:
    v725 = 0;
    goto LABEL_395;
  }

  v1127 = v413;
LABEL_249:
  if (IMOSLoggingEnabled())
  {
    v724 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v724, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v1160) = v1127;
      _os_log_impl(&dword_23BC9F000, v724, OS_LOG_TYPE_INFO, "Failed delivering message with code: %d", buf, 8u);
    }
  }

  if (MarcoShouldLogCheckpoints())
  {
    v1114 = v1127;
    MarcoNoteCheckpoint();
  }

  v725 = v1127;
  if (IMOSLoggingEnabled())
  {
    v726 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v726, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v1160) = v1127;
      _os_log_impl(&dword_23BC9F000, v726, OS_LOG_TYPE_INFO, "  Message delivery failed with code: %d", buf, 8u);
    }
  }

  if (v1127 <= 5031)
  {
    if (v1127 > 5005)
    {
      switch(v1127)
      {
        case 5006:
          if (IMOSLoggingEnabled())
          {
            v803 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v803, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v803, OS_LOG_TYPE_INFO, "Bad push token - will re-register", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v809 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v809, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v809, OS_LOG_TYPE_INFO, "  Bad push token", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v804, v805, v806, v808, v807, v1114);
          v725 = 5006;
          break;
        case 5029:
          if (IMOSLoggingEnabled())
          {
            v817 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v817, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v817, OS_LOG_TYPE_INFO, "Not authorized - needs re-register", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v823 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v823, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v823, OS_LOG_TYPE_INFO, "  Not authorized", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v818, v819, v820, v822, v821, v1114);
          v725 = 5029;
          break;
        case 5030:
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v1139 = 0u;
            v1140 = 0u;
            v1137 = 0u;
            v1138 = 0u;
            v744 = objc_msgSend_canonicalizedPeers(a2, v740, v741, v742, 0, v743);
            v751 = objc_msgSend_countByEnumeratingWithState_objects_count_(v744, v745, &v1137, v1149, v746, 16);
            if (v751)
            {
              v753 = *v1138;
              do
              {
                for (m = 0; m != v751; ++m)
                {
                  if (*v1138 != v753)
                  {
                    objc_enumerationMutation(v744);
                  }

                  v755 = *(*(&v1137 + 1) + 8 * m);
                  v756 = objc_msgSend_sharedInstance(MEMORY[0x277D18728], v747, v748, v749, v752, v750, v1114);
                  v761 = objc_msgSend_objectForKey_(v755, v757, @"raw-id", v758, v760, v759);
                  v767 = objc_msgSend_topic(a2, v762, v763, v764, v766, v765);
                  objc_msgSend__setCurrentIDStatus_forDestination_service_(v756, v768, 2, v761, v769, v767);
                }

                v751 = objc_msgSend_countByEnumeratingWithState_objects_count_(v744, v747, &v1137, v1149, v752, 16);
              }

              while (v751);
            }
          }

          v725 = 5030;
          break;
      }
    }

    else
    {
      switch(v1127)
      {
        case 5000:
          if (IMOSLoggingEnabled())
          {
            v796 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v796, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v796, OS_LOG_TYPE_INFO, "Not authenticated - needs re-register", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v802 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v802, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v802, OS_LOG_TYPE_INFO, "  Unauthenticated", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v797, v798, v799, v801, v800, v1114);
          v725 = 5000;
          break;
        case 5002:
          if (IMOSLoggingEnabled())
          {
            v810 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v810, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v810, OS_LOG_TYPE_INFO, "Version mismatch", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v816 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v816, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v816, OS_LOG_TYPE_INFO, "  Version Mismatch", buf, 2u);
            }
          }

          objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v811, v812, v813, v815, v814, v1114);
          v725 = 5002;
          break;
        case 5004:
          if (IMOSLoggingEnabled())
          {
            v731 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v731, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v731, OS_LOG_TYPE_INFO, "Server Busy", buf, 2u);
            }
          }

          if (MarcoShouldLogCheckpoints())
          {
            MarcoNoteCheckpoint();
          }

          if (IMOSLoggingEnabled())
          {
            v732 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v732, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_23BC9F000, v732, OS_LOG_TYPE_INFO, "  Server too busy", buf, 2u);
            }
          }

          v725 = 5004;
          break;
      }
    }
  }

  else if (v1127 <= 5056)
  {
    switch(v1127)
    {
      case 5032:
        if (IMOSLoggingEnabled())
        {
          v782 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v782, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v782, OS_LOG_TYPE_INFO, "Bad signature - will re-register", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }

        if (IMOSLoggingEnabled())
        {
          v788 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v788, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v788, OS_LOG_TYPE_INFO, "  Bad signature", buf, 2u);
          }
        }

        objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v783, v784, v785, v787, v786, v1114);
        v725 = 5032;
        break;
      case 5033:
        if (IMOSLoggingEnabled())
        {
          v789 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v789, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v789, OS_LOG_TYPE_INFO, "New signature required - will re-register", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }

        if (IMOSLoggingEnabled())
        {
          v795 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v795, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v795, OS_LOG_TYPE_INFO, "  Requires new signature", buf, 2u);
          }
        }

        objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v790, v791, v792, v794, v793, v1114);
        v725 = 5033;
        break;
      case 5034:
        if (IMOSLoggingEnabled())
        {
          v733 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v733, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v733, OS_LOG_TYPE_INFO, "New registration required - will re-register", buf, 2u);
          }
        }

        if (MarcoShouldLogCheckpoints())
        {
          MarcoNoteCheckpoint();
        }

        if (IMOSLoggingEnabled())
        {
          v739 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v739, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v739, OS_LOG_TYPE_INFO, "  Requires new registration", buf, 2u);
          }
        }

        objc_msgSend_reregister(*(*(*(a1 + 40) + 8) + 40), v734, v735, v736, v738, v737, v1114);
        v725 = 5034;
        break;
    }
  }

  else if (v1127 > 5062)
  {
    if (v1127 == 5063)
    {
      if (IMOSLoggingEnabled())
      {
        v778 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v778, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v778, OS_LOG_TYPE_INFO, "Invitation region context needs update", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      if (IMOSLoggingEnabled())
      {
        v781 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v781, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v781, OS_LOG_TYPE_INFO, "  Invitation region context needs update", buf, 2u);
        }
      }

      v1125 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v779, *MEMORY[0x277D07D88], 5063, v780, 0, v1114);
      v725 = 5063;
    }

    else if (v1127 == 5064)
    {
      if (IMOSLoggingEnabled())
      {
        v770 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v770, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v770, OS_LOG_TYPE_INFO, "Incomplete phone number", buf, 2u);
        }
      }

      if (MarcoShouldLogCheckpoints())
      {
        MarcoNoteCheckpoint();
      }

      if (IMOSLoggingEnabled())
      {
        v773 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v773, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23BC9F000, v773, OS_LOG_TYPE_INFO, "  Incomplete phone number", buf, 2u);
        }
      }

      v1125 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v771, *MEMORY[0x277D07D88], 5064, v772, 0, v1114);
      v725 = 5064;
    }
  }

  else if (v1127 == 5057)
  {
    if (IMOSLoggingEnabled())
    {
      v774 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v774, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v774, OS_LOG_TYPE_INFO, "Self version is too old", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v777 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v777, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v777, OS_LOG_TYPE_INFO, "  Self version is too old", buf, 2u);
      }
    }

    v1125 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v775, *MEMORY[0x277D07D88], 5057, v776, 0, v1114);
    v725 = 5057;
  }

  else if (v1127 == 5058)
  {
    if (IMOSLoggingEnabled())
    {
      v727 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v727, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v727, OS_LOG_TYPE_INFO, "Peer version is too old", buf, 2u);
      }
    }

    if (MarcoShouldLogCheckpoints())
    {
      MarcoNoteCheckpoint();
    }

    if (IMOSLoggingEnabled())
    {
      v730 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v730, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v730, OS_LOG_TYPE_INFO, "  Peer verion is too old", buf, 2u);
      }
    }

    v1125 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v728, *MEMORY[0x277D07D88], 5058, v729, 0, v1114);
    v725 = 5058;
  }

LABEL_395:
  if (!v1125)
  {
    goto LABEL_448;
  }

  if (IMOSLoggingEnabled())
  {
    v840 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v840, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v1160 = v1125;
      _os_log_impl(&dword_23BC9F000, v840, OS_LOG_TYPE_INFO, "  Message delivery failed with error: %@", buf, 0xCu);
    }
  }

  v841 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v847 = objc_msgSend_userInfo(a2, v842, v843, v844, v846, v845);
  v852 = objc_msgSend_objectForKey_(v847, v848, @"ID", v849, v851, v850);
  v858 = objc_msgSend_userInfo(a2, v853, v854, v855, v857, v856);
  v863 = objc_msgSend_objectForKey_(v858, v859, @"properties", v860, v862, v861);
  if (objc_msgSend_length(v1123, v864, v865, v866, v868, v867))
  {
    objc_msgSend_setObject_forKey_(v841, v869, v1123, @"conference", v873, v872);
  }

  if (objc_msgSend_length(v852, v869, v870, v871, v873, v872, v1114))
  {
    objc_msgSend_setObject_forKey_(v841, v874, v852, @"ID", v878, v877);
  }

  if (objc_msgSend_count(v863, v874, v875, v876, v878, v877))
  {
    objc_msgSend_setObject_forKey_(v841, v879, v863, @"properties", v883, v882);
  }

  v884 = objc_msgSend_sessionToken(a2, v879, v880, v881, v883, v882);
  v890 = objc_msgSend___imHexString(v884, v885, v886, v887, v889, v888);
  if (objc_msgSend_length(v890, v891, v892, v893, v895, v894))
  {
    objc_msgSend_setObject_forKey_(v841, v896, v890, @"conference", v898, v897);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_411;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_reason(a2, v904, v905, v906, v908, v907))
    {
      v909 = objc_msgSend_reason(a2, v899, v900, v901, v903, v902);
      objc_msgSend_setObject_forKey_(v841, v910, v909, @"reason", v912, v911);
    }

LABEL_411:
    v913 = 1;
    v914 = 4;
    goto LABEL_412;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_peers(a2, v1067, v1068, v1069, v1071, v1070))
    {
      v1077 = objc_msgSend_peers(a2, v1072, v1073, v1074, v1076, v1075);
      objc_msgSend_setObject_forKey_(v841, v1078, v1077, @"peers", v1080, v1079);
    }

    if (objc_msgSend_reason(a2, v1072, v1073, v1074, v1076, v1075))
    {
      v1081 = objc_msgSend_reason(a2, v899, v900, v901, v903, v902);
      objc_msgSend_setObject_forKey_(v841, v1082, v1081, @"reason", v1084, v1083);
    }

    v913 = 0;
    v914 = 3;
    goto LABEL_412;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (objc_msgSend_peers(a2, v1101, v1102, v1103, v1105, v1104))
    {
      v1106 = objc_msgSend_peers(a2, v899, v900, v901, v903, v902);
      objc_msgSend_setObject_forKey_(v841, v1107, v1106, @"receivers", v1109, v1108);
    }

    v914 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v913 = 1;
      v914 = 7;
      goto LABEL_412;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v913 = 1;
      v914 = 8;
      goto LABEL_412;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v913 = 0;
      v914 = 9;
      goto LABEL_412;
    }

    if (IMOSLoggingEnabled())
    {
      v1110 = OSLogHandleForIMFoundationCategory();
      v913 = 1;
      if (os_log_type_enabled(v1110, OS_LOG_TYPE_INFO))
      {
        v1111 = objc_opt_class();
        v1112 = NSStringFromClass(v1111);
        *buf = 138412290;
        v1160 = v1112;
        _os_log_impl(&dword_23BC9F000, v1110, OS_LOG_TYPE_INFO, "Unexpected message class being delivered: %@", buf, 0xCu);
      }

      v914 = 0;
      goto LABEL_412;
    }

    v914 = 0;
  }

  v913 = 1;
LABEL_412:
  v915 = objc_msgSend_domain(v1125, v899, v900, v901, v903, v902);
  if (objc_msgSend_length(v915, v916, v917, v918, v920, v919))
  {
    v926 = objc_msgSend_domain(v1125, v921, v922, v923, v925, v924);
    objc_msgSend_setObject_forKey_(v841, v927, v926, @"internalErrorDomain", v929, v928);
  }

  v930 = objc_msgSend_userInfo(v1125, v921, v922, v923, v925, v924);
  if (objc_msgSend_count(v930, v931, v932, v933, v935, v934))
  {
    v941 = objc_msgSend_userInfo(v1125, v936, v937, v938, v940, v939);
    objc_msgSend_setObject_forKey_(v841, v942, v941, @"internalUserInfo", v944, v943);
  }

  v945 = MEMORY[0x277CCABB0];
  v946 = objc_msgSend_code(v1125, v936, v937, v938, v940, v939);
  v951 = objc_msgSend_numberWithInteger_(v945, v947, v946, v948, v950, v949);
  objc_msgSend_setObject_forKey_(v841, v952, v951, @"internalCode", v954, v953);
  if (a5)
  {
    v960 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v955, v725, v957, v959, v958);
    objc_msgSend_setObject_forKey_(v841, v961, v960, @"result", v963, v962);
  }

  if (objc_msgSend_messageBodyUsingCache(a2, v955, v956, v957, v959, v958))
  {
    v969 = objc_msgSend_messageBodyUsingCache(a2, v964, v965, v966, v968, v967);
    objc_msgSend_setObject_forKey_(v841, v970, v969, @"messageBody", v972, v971);
  }

  if (objc_msgSend_bagKey(a2, v964, v965, v966, v968, v967))
  {
    v978 = objc_msgSend_bagKey(a2, v973, v974, v975, v977, v976);
    objc_msgSend_setObject_forKey_(v841, v979, v978, @"bagKey", v981, v980);
  }

  v982 = MEMORY[0x277CCA9B8];
  v983 = objc_msgSend_count(v841, v973, v974, v975, v977, v976);
  v986 = *MEMORY[0x277D18F40];
  if (v983)
  {
    v987 = objc_msgSend_errorWithDomain_code_userInfo_(v982, v984, v986, v914, v985, v841);
  }

  else
  {
    v987 = objc_msgSend_errorWithDomain_code_userInfo_(v982, v984, v986, v914, v985, 0);
  }

  v988 = v987;
  if (v913)
  {
    v989 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v989, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v1160 = v988;
      _os_log_impl(&dword_23BC9F000, v989, OS_LOG_TYPE_DEFAULT, "Posting error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v1114 = v988;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v1114 = v988;
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v995 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v995, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v1160 = v988;
        _os_log_impl(&dword_23BC9F000, v995, OS_LOG_TYPE_INFO, "Posting error: %@", buf, 0xCu);
      }
    }

    v996 = objc_msgSend_broadcaster(*(*(*(a1 + 40) + 8) + 40), v990, v991, v992, v994, v993, v1114);
    v1002 = objc_msgSend_accountID(*(*(*(a1 + 40) + 8) + 40), v997, v998, v999, v1001, v1000);
    objc_msgSend_account_postedError_(v996, v1003, v1002, v988, v1005, v1004);
  }

  else
  {
    v1006 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v1006, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v1160 = v988;
      _os_log_impl(&dword_23BC9F000, v1006, OS_LOG_TYPE_DEFAULT, "Not reporting error: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v1114 = v988;
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v1114 = v988;
        IMLogString();
      }
    }

    if (IMOSLoggingEnabled())
    {
      v1007 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1007, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v1160 = v988;
        _os_log_impl(&dword_23BC9F000, v1007, OS_LOG_TYPE_INFO, "Not reporting error: %@", buf, 0xCu);
      }
    }
  }

LABEL_448:
  v1008 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v1008, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BC9F000, v1008, OS_LOG_TYPE_DEFAULT, "Checking to see if the queue needs flushing", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  v1014 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterVCInvocationQueue;
  if (isEqualToString)
  {
    v1014 = &OBJC_IVAR___FaceTimeServiceSession__broadcasterACInvocationQueue;
  }

  v1015 = *v1014;
  result = objc_msgSend_isEmpty(*(*(a1 + 32) + v1015), v1009, v1010, v1011, v1013, v1012, v1114);
  if ((result & 1) == 0)
  {
    v1017 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v1017, OS_LOG_TYPE_DEFAULT))
    {
      hasQueuedItems = objc_msgSend_hasQueuedItems(qword_281422890, v1018, v1019, v1020, v1022, v1021);
      *buf = 67109120;
      LODWORD(v1160) = hasQueuedItems;
      _os_log_impl(&dword_23BC9F000, v1017, OS_LOG_TYPE_DEFAULT, "Message delivery has queued items: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v1115 = objc_msgSend_hasQueuedItems(qword_281422890, v1024, v1025, v1026, v1028, v1027);
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v1115 = objc_msgSend_hasQueuedItems(qword_281422890, v1029, v1030, v1031, v1033, v1032);
        IMLogString();
      }
    }

    v1034 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v1034, OS_LOG_TYPE_DEFAULT))
    {
      v1040 = objc_msgSend_count(*(*(a1 + 32) + v1015), v1035, v1036, v1037, v1039, v1038);
      *buf = 67109120;
      LODWORD(v1160) = v1040;
      _os_log_impl(&dword_23BC9F000, v1034, OS_LOG_TYPE_DEFAULT, "Queue has %d items in it", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (MarcoShouldLog())
      {
        v1115 = objc_msgSend_count(*(*(a1 + 32) + v1015), v1046, v1047, v1048, v1050, v1049);
        MarcoLog();
      }

      if (IMShouldLog())
      {
        v1115 = objc_msgSend_count(*(*(a1 + 32) + v1015), v1041, v1042, v1043, v1045, v1044);
        IMLogString();
      }
    }

    if (objc_msgSend_hasQueuedItems(qword_281422890, v1041, v1042, v1043, v1045, v1044, v1115))
    {
      v1051 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v1051, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v1051, OS_LOG_TYPE_DEFAULT, " => Pending delivery", buf, 2u);
      }

      result = os_log_shim_legacy_logging_enabled();
      if (result)
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        result = IMShouldLog();
        if (result)
        {
          return IMLogString();
        }
      }
    }

    else
    {
      v1052 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v1052, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23BC9F000, v1052, OS_LOG_TYPE_DEFAULT, " => Flushing now", buf, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (MarcoShouldLog())
        {
          MarcoLog();
        }

        if (IMShouldLog())
        {
          IMLogString();
        }
      }

      v1058 = *(a1 + 32);
      v1059 = *(*(*(a1 + 40) + 8) + 40);
      if (isEqualToString)
      {
        v1060 = 344;
        v1061 = *(v1058 + 344);
        v1062 = objc_msgSend_broadcasterForACConferenceListeners(v1059, v1053, v1054, v1055, v1057, v1056);
      }

      else
      {
        v1060 = 352;
        v1061 = *(v1058 + 352);
        v1062 = objc_msgSend_broadcasterForVCConferenceListeners(v1059, v1053, v1054, v1055, v1057, v1056);
      }

      objc_msgSend_setTarget_(v1061, v1063, v1062, v1064, v1066, v1065);
      objc_msgSend_invokeAll(*(*(a1 + 32) + v1060), v1085, v1086, v1087, v1089, v1088);
      result = objc_msgSend_isEmpty(*(*(a1 + 32) + v1060), v1090, v1091, v1092, v1094, v1093);
      if ((result & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v1100 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v1100, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_23BC9F000, v1100, OS_LOG_TYPE_INFO, "Invocations are left over after notifying clients!", buf, 2u);
          }
        }

        return objc_msgSend_removeAllInvocations(*(*(a1 + 32) + v1015), v1095, v1096, v1097, v1099, v1098);
      }
    }
  }

  return result;
}

__CFDictionary *sub_23BCA7F48(const void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = v2;
  if (a1)
  {
    CFDictionarySetValue(v2, *MEMORY[0x277D193A8], a1);
  }

  return v3;
}

uint64_t sub_23BCAA810(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (sub_23BCB4FB0(a6, a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v12 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v6, v7, v8, v10, v9);
  valid = objc_msgSend_inValidSIMState(v12, v13, v14, v15, v17, v16);
  v24 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v19, v20, v21, v23, v22);
  return valid & (objc_msgSend_isSIMLocked(v24, v25, v26, v27, v29, v28) ^ 1);
}

uint64_t sub_23BCAAF28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (sub_23BCB4FB0(a6, a1, a2, a3, a4, a5))
  {
    return 1;
  }

  v12 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v6, v7, v8, v10, v9);
  valid = objc_msgSend_inValidSIMState(v12, v13, v14, v15, v17, v16);
  v24 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v19, v20, v21, v23, v22);
  isSIMLocked = objc_msgSend_isSIMLocked(v24, v25, v26, v27, v29, v28);
  if (isSIMLocked)
  {
    v36 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v30, v31, v32, v35, v33);
    objc_msgSend_showSIMUnlock(v36, v37, v38, v39, v41, v40);
  }

  return valid & (isSIMLocked ^ 1u);
}

void *sub_23BCACF04(void *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (result)
  {
    if (a2)
    {
      v14 = objc_msgSend_unsignedIntValue(result, a2, a3, a4, a6, a5);
      v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v7, &v14, 4, v9, v8);
      return objc_msgSend_setObject_forKey_(a2, v11, v10, @"r", v13, v12);
    }
  }

  return result;
}

void *sub_23BCACF68(void *result, void *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
    objc_msgSend_setObject_forKey_(a2, a2, result, @"k", a3, a6);
    v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v7, 1, v8, v10, v9);

    return objc_msgSend_setObject_forKey_(a2, v11, v12, @"kv", v14, v13);
  }

  return result;
}

void *sub_23BCACFD4(void *result, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (result)
  {
    if (a2)
    {
      v14 = objc_msgSend_unsignedIntValue(result, a2, a3, a4, a6, a5);
      v10 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v7, &v14, 4, v9, v8);
      return objc_msgSend_setObject_forKey_(a2, v11, v10, @"h", v13, v12);
    }
  }

  return result;
}

void sub_23BCADC48(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x23BCADAD8);
  }

  _Unwind_Resume(a1);
}

void *sub_23BCB0E7C(void *a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_objectForKey_(a1, a2, @"r", a5, a3, a6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v7, @"r", v8, v10, v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v21, @"r", v22, v24, v23);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v25 = 0;
    objc_msgSend_getBytes_length_(result, v18, &v25, 4, v20, v19);
    return (v25 != 0);
  }

  v11 = MEMORY[0x277CBEA90];
  v12 = objc_msgSend_objectForKey_(a1, v7, @"r", v8, v10, v9);
  result = objc_msgSend__IDSDataFromBase64String_(v11, v13, v12, v14, v16, v15);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_23BCB0F64(void *a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_objectForKey_(a1, a2, @"s", a5, a3, a6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v7, @"s", v8, v10, v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v21, @"s", v22, v24, v23);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v29 = 0;
    objc_msgSend_getBytes_length_(result, v18, &v29, 4, v20, v19);
    return objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, v29, v26, v28, v27);
  }

  v11 = MEMORY[0x277CBEA90];
  v12 = objc_msgSend_objectForKey_(a1, v7, @"s", v8, v10, v9);
  result = objc_msgSend__IDSDataFromBase64String_(v11, v13, v12, v14, v16, v15);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_23BCB1050(void *a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_objectForKey_(a1, a2, @"a", a5, a3, a6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v7, @"a", v8, v10, v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v21, @"a", v22, v24, v23);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v29 = 0;
    objc_msgSend_getBytes_length_(result, v18, &v29, 4, v20, v19);
    return objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, v29, v26, v28, v27);
  }

  v11 = MEMORY[0x277CBEA90];
  v12 = objc_msgSend_objectForKey_(a1, v7, @"a", v8, v10, v9);
  result = objc_msgSend__IDSDataFromBase64String_(v11, v13, v12, v14, v16, v15);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

void *sub_23BCB113C(void *a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_objectForKey_(a1, a2, @"h", a5, a3, a6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v7, @"h", v8, v10, v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v21, @"h", v22, v24, v23);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v25 = 0;
    objc_msgSend_getBytes_length_(result, v18, &v25, 4, v20, v19);
    return (v25 != 0);
  }

  v11 = MEMORY[0x277CBEA90];
  v12 = objc_msgSend_objectForKey_(a1, v7, @"h", v8, v10, v9);
  result = objc_msgSend__IDSDataFromBase64String_(v11, v13, v12, v14, v16, v15);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_23BCB1224(void *a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_objectForKey_(a1, a2, @"k", a5, a3, a6);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = MEMORY[0x277CBEA90];
    v13 = objc_msgSend_objectForKey_(a1, v7, @"k", v8, v10, v9);

    return objc_msgSend__IDSDataFromBase64String_(v11, v12, v13, v14, v16, v15);
  }

  else
  {
    objc_msgSend_objectForKey_(a1, v7, @"k", v8, v10, v9);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return objc_msgSend_objectForKey_(a1, v18, @"k", v19, v21, v20);
    }

    else
    {
      return 0;
    }
  }
}

void *sub_23BCB1308(void *a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  objc_msgSend_objectForKey_(a1, a2, @"p", a5, a3, a6);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_msgSend_objectForKey_(a1, v7, @"p", v8, v10, v9);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    result = objc_msgSend_objectForKey_(a1, v21, @"p", v22, v24, v23);
    if (!result)
    {
      return result;
    }

LABEL_6:
    v29 = 0;
    objc_msgSend_getBytes_length_(result, v18, &v29, 4, v20, v19);
    return objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v25, v29, v26, v28, v27);
  }

  v11 = MEMORY[0x277CBEA90];
  v12 = objc_msgSend_objectForKey_(a1, v7, @"p", v8, v10, v9);
  result = objc_msgSend__IDSDataFromBase64String_(v11, v13, v12, v14, v16, v15);
  if (result)
  {
    goto LABEL_6;
  }

  return result;
}

id sub_23BCB2858(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277CBEAC0]);
  v9 = objc_msgSend_initWithObjectsAndKeys_(v4, v5, a1, v6, v8, v7, @"id", a2, @"push-token", 0);
  v10 = objc_alloc(MEMORY[0x277CBEA60]);
  v15 = objc_msgSend_initWithObjects_(v10, v11, v9, v12, v14, v13, 0);

  return v15;
}

uint64_t sub_23BCB4FB0(__n128 a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = objc_msgSend_sharedInstance(MEMORY[0x277D07DB0], a3, a4, a5, a1, a6);
  if (!objc_msgSend_isTelephonyDevice(v6, v7, v8, v9, v11, v10))
  {
    return 1;
  }

  v17 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v12, v13, v14, v16, v15);
  if (objc_msgSend_allowAnyNetwork(v17, v18, v19, v20, v22, v21))
  {
    return 1;
  }

  v29 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v23, v24, v25, v27, v26);

  return MEMORY[0x2821F9670](v29, sel_isAirplaneModeEnabled, v30, v31, v32);
}

uint64_t sub_23BCB5014(unsigned int a1)
{
  if (a1 < 4)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23BCB5020(uint64_t a1)
{
  v1 = a1;
  if (a1 <= 4999)
  {
    if (a1 > 199)
    {
      if (a1 == 200)
      {
        return 2;
      }

      if (a1 == 1000)
      {
        return 70;
      }
    }

    else
    {
      if (!a1)
      {
        return 1;
      }

      if (a1 == 1)
      {
        return 0;
      }
    }

    goto LABEL_89;
  }

  if (a1 > 5999)
  {
    if (a1 > 9999)
    {
      if (a1 == 10000)
      {
        return 73;
      }

      if (a1 == 20000)
      {
        return 74;
      }
    }

    else
    {
      if (a1 == 6000)
      {
        return 71;
      }

      if (a1 == 8000)
      {
        return 72;
      }
    }

LABEL_89:
    v2 = IMLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_23BCBF7DC(v1, v2);
    }

    return v1;
  }

  switch(a1)
  {
    case 5000:
      v1 = 3;
      break;
    case 5001:
      v1 = 4;
      break;
    case 5002:
      v1 = 5;
      break;
    case 5003:
      v1 = 6;
      break;
    case 5004:
      v1 = 7;
      break;
    case 5005:
      v1 = 8;
      break;
    case 5006:
      v1 = 9;
      break;
    case 5007:
      v1 = 10;
      break;
    case 5008:
      v1 = 11;
      break;
    case 5009:
      v1 = 12;
      break;
    case 5010:
      v1 = 13;
      break;
    case 5011:
      v1 = 14;
      break;
    case 5012:
      v1 = 15;
      break;
    case 5013:
      v1 = 16;
      break;
    case 5014:
      v1 = 17;
      break;
    case 5015:
      v1 = 18;
      break;
    case 5016:
      v1 = 19;
      break;
    case 5017:
      v1 = 20;
      break;
    case 5018:
      v1 = 21;
      break;
    case 5019:
      v1 = 22;
      break;
    case 5020:
      v1 = 23;
      break;
    case 5021:
      v1 = 24;
      break;
    case 5022:
      v1 = 25;
      break;
    case 5023:
      v1 = 26;
      break;
    case 5024:
      v1 = 27;
      break;
    case 5025:
      v1 = 28;
      break;
    case 5026:
      v1 = 29;
      break;
    case 5027:
      v1 = 30;
      break;
    case 5028:
      v1 = 31;
      break;
    case 5029:
      v1 = 32;
      break;
    case 5030:
      v1 = 33;
      break;
    case 5031:
      v1 = 34;
      break;
    case 5032:
      v1 = 35;
      break;
    case 5033:
      v1 = 36;
      break;
    case 5034:
      v1 = 37;
      break;
    case 5035:
      v1 = 41;
      break;
    case 5036:
      v1 = 42;
      break;
    case 5037:
      v1 = 43;
      break;
    case 5038:
    case 5055:
      v1 = 44;
      break;
    case 5039:
      v1 = 38;
      break;
    case 5040:
      v1 = 39;
      break;
    case 5041:
      v1 = 40;
      break;
    case 5046:
      v1 = 45;
      break;
    case 5047:
      v1 = 46;
      break;
    case 5048:
      v1 = 47;
      break;
    case 5051:
      v1 = 48;
      break;
    case 5052:
      v1 = 49;
      break;
    case 5057:
      v1 = 50;
      break;
    case 5058:
      v1 = 51;
      break;
    case 5059:
      v1 = 52;
      break;
    case 5060:
      v1 = 53;
      break;
    case 5061:
      v1 = 54;
      break;
    case 5062:
      v1 = 55;
      break;
    case 5063:
      v1 = 56;
      break;
    case 5064:
      v1 = 57;
      break;
    case 5068:
      v1 = 58;
      break;
    case 5076:
      v1 = 64;
      break;
    case 5078:
      v1 = 59;
      break;
    case 5079:
      v1 = 60;
      break;
    case 5080:
      v1 = 61;
      break;
    case 5085:
      v1 = 65;
      break;
    case 5086:
      v1 = 66;
      break;
    case 5087:
      v1 = 67;
      break;
    case 5088:
      v1 = 68;
      break;
    case 5089:
      v1 = 62;
      break;
    case 5090:
      v1 = 63;
      break;
    case 5092:
      v1 = 69;
      break;
    default:
      goto LABEL_89;
  }

  return v1;
}

uint64_t sub_23BCB5370(uint64_t a1)
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  gettimeofday(&v8, 0);
  memset(&v7, 0, sizeof(v7));
  localtime_r(&v8.tv_sec, &v7);
  return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v2, @"%02d:%02d:%02d.%06d %@", v3, v5, v4, v7.tm_hour, v7.tm_min, v7.tm_sec, v8.tv_usec, a1);
}

void sub_23BCB6034(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_23BCB8A78()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = _Block_copy(&unk_284E71408);
  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v3, 1, v4, v6, v5);
  objc_msgSend_setObject_forKey_(v1, v8, v2, v7, v10, v9);

  v11 = _Block_copy(&unk_284E71428);
  v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v12, 127, v13, v15, v14);
  objc_msgSend_setObject_forKey_(v1, v17, v11, v16, v19, v18);

  v20 = _Block_copy(&unk_284E71448);
  v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v21, 2, v22, v24, v23);
  objc_msgSend_setObject_forKey_(v1, v26, v20, v25, v28, v27);

  v29 = _Block_copy(&unk_284E71468);
  v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v30, 3, v31, v33, v32);
  objc_msgSend_setObject_forKey_(v1, v35, v29, v34, v37, v36);

  v38 = _Block_copy(&unk_284E71488);
  v43 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v39, 4, v40, v42, v41);
  objc_msgSend_setObject_forKey_(v1, v44, v38, v43, v46, v45);

  v47 = _Block_copy(&unk_284E714A8);
  v52 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v48, 5, v49, v51, v50);
  objc_msgSend_setObject_forKey_(v1, v53, v47, v52, v55, v54);

  v56 = _Block_copy(&unk_284E714C8);
  v61 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v57, 6, v58, v60, v59);
  objc_msgSend_setObject_forKey_(v1, v62, v56, v61, v64, v63);

  v65 = _Block_copy(&unk_284E714E8);
  v70 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v66, 7, v67, v69, v68);
  objc_msgSend_setObject_forKey_(v1, v71, v65, v70, v73, v72);

  v74 = _Block_copy(&unk_284E71508);
  v79 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v75, 8, v76, v78, v77);
  objc_msgSend_setObject_forKey_(v1, v80, v74, v79, v82, v81);

  qword_2814228B0 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_23BCB8C84(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v196 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v192 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleInitatePush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v192 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v177 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v177 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v177);
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v187, v195, 0, 16);
  if (v14)
  {
    v183 = *v188;
    obj = v12;
    do
    {
      v15 = 0;
      v184 = v14;
      do
      {
        if (*v188 != v183)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v187 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v20, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = MEMORY[0x277CBEA90];
            v26 = objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            v182 = objc_msgSend__IDSDataFromBase64String_(v25, v27, v26, v28, v30, v29);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v182 = objc_msgSend_objectForKey_(a4, v31, @"s", v32, v34, v33);
            }

            else
            {
              v182 = 0;
            }
          }

          v35 = objc_opt_class();
          v186 = objc_msgSend_objectForKey_(a4, v36, @"i", v37, v39, v38);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v186)
            {
              v45 = objc_msgSend_registration(MEMORY[0x277D19298], v40, v41, v42, v44, v43);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v192 = @"i";
                v193 = 2112;
                v194 = v35;
                _os_log_fault_impl(&dword_23BC9F000, v45, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v186 = 0;
          }

          v46 = objc_opt_class();
          v185 = objc_msgSend_objectForKey_(a4, v47, @"I", v48, v50, v49);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v185)
            {
              v56 = objc_msgSend_registration(MEMORY[0x277D19298], v51, v52, v53, v55, v54);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v192 = @"I";
                v193 = 2112;
                v194 = v46;
                _os_log_fault_impl(&dword_23BC9F000, v56, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v185 = 0;
          }

          v57 = objc_opt_class();
          v62 = objc_msgSend_objectForKey_(a4, v58, @"W", v59, v61, v60);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v62)
          {
            v68 = objc_msgSend_registration(MEMORY[0x277D19298], v63, v64, v65, v67, v66);
            if (os_log_type_enabled(v68, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v192 = @"W";
              v193 = 2112;
              v194 = v57;
              _os_log_fault_impl(&dword_23BC9F000, v68, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v62 = 0;
          }

          v69 = objc_opt_class();
          v74 = objc_msgSend_objectForKey_(a4, v70, @"J", v71, v73, v72);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v74)
          {
            v80 = objc_msgSend_registration(MEMORY[0x277D19298], v75, v76, v77, v79, v78);
            if (os_log_type_enabled(v80, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v192 = @"J";
              v193 = 2112;
              v194 = v69;
              _os_log_fault_impl(&dword_23BC9F000, v80, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v74 = 0;
          }

          objc_msgSend_objectForKey_(a4, v75, @"P", v77, v79, v78);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = MEMORY[0x277CBEA90];
            v86 = objc_msgSend_objectForKey_(a4, v81, @"P", v82, v84, v83);
            v181 = objc_msgSend__IDSDataFromBase64String_(v85, v87, v86, v88, v90, v89);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v81, @"P", v82, v84, v83);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v181 = objc_msgSend_objectForKey_(a4, v91, @"P", v92, v94, v93);
            }

            else
            {
              v181 = 0;
            }
          }

          v95 = MEMORY[0x277CCABB0];
          v96 = objc_opt_class();
          v101 = objc_msgSend_objectForKey_(a4, v97, @"N", v98, v100, v99);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v101)
          {
            v107 = objc_msgSend_registration(MEMORY[0x277D19298], v102, v103, v104, v106, v105);
            if (os_log_type_enabled(v107, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v192 = @"N";
              v193 = 2112;
              v194 = v96;
              _os_log_fault_impl(&dword_23BC9F000, v107, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v101 = 0;
          }

          v108 = objc_msgSend_intValue(v101, v102, v103, v104, v106, v105);
          v113 = objc_msgSend_numberWithInt_(v95, v109, v108, v110, v112, v111);
          objc_msgSend_objectForKey_(a4, v114, @"B", v115, v117, v116);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v122 = MEMORY[0x277CBEA90];
            v123 = objc_msgSend_objectForKey_(a4, v118, @"B", v119, v121, v120);
            v128 = objc_msgSend__IDSDataFromBase64String_(v122, v124, v123, v125, v127, v126);
            goto LABEL_56;
          }

          objc_msgSend_objectForKey_(a4, v118, @"B", v119, v121, v120);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v128 = objc_msgSend_objectForKey_(a4, v129, @"B", v130, v132, v131);
LABEL_56:
            v133 = v128;
          }

          else
          {
            v133 = 0;
          }

          objc_msgSend_objectForKey_(a4, v129, @"A", v130, v132, v131);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v138 = MEMORY[0x277CBEA90];
            v139 = objc_msgSend_objectForKey_(a4, v134, @"A", v135, v137, v136);
            v144 = objc_msgSend__IDSDataFromBase64String_(v138, v140, v139, v141, v143, v142);
            goto LABEL_62;
          }

          objc_msgSend_objectForKey_(a4, v134, @"A", v135, v137, v136);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v144 = objc_msgSend_objectForKey_(a4, v145, @"A", v146, v148, v147);
LABEL_62:
            v149 = v144;
          }

          else
          {
            v149 = 0;
          }

          v150 = objc_opt_class();
          v155 = objc_msgSend_objectForKey_(a4, v151, @"x", v152, v154, v153);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v155)
          {
            v161 = objc_msgSend_registration(MEMORY[0x277D19298], v156, v157, v158, v160, v159);
            if (os_log_type_enabled(v161, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v192 = @"x";
              v193 = 2112;
              v194 = v150;
              _os_log_fault_impl(&dword_23BC9F000, v161, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v155 = 0;
          }

          objc_msgSend_objectForKey_(a4, v156, @"d", v158, v160, v159);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v166 = MEMORY[0x277CBEA90];
            v167 = objc_msgSend_objectForKey_(a4, v162, @"d", v163, v165, v164);
            v172 = objc_msgSend__IDSDataFromBase64String_(v166, v168, v167, v169, v171, v170);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v162, @"d", v163, v165, v164);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v172 = objc_msgSend_objectForKey_(a4, v173, @"d", v175, v174, v176);
            }

            else
            {
              v172 = 0;
            }
          }

          objc_msgSend_handler_sessionInitated_topic_myID_peerID_peerDisplayID_peerCN_peerPushToken_peerNATType_peerBlob_peerNatIP_clientInfo_serviceData_(v16, v173, a2, v182, v174, a3, v186, v185, v62, v74, v181, v113, v133, v149, v155, v172);
        }

        ++v15;
      }

      while (v184 != v15);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v187, v195, v20, 16);
    }

    while (v14);
  }
}

void sub_23BCB97EC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v114 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleProtectedInitatePush", buf, 2u);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "Protected initiate push block", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      MarcoLog();
    }

    if (IMShouldLog())
    {
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10);
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v105, v113, 0, 16);
  if (v14)
  {
    v103 = *v106;
    *&v15 = 138412802;
    v99 = v15;
    obj = v12;
    do
    {
      v16 = 0;
      v104 = v14;
      do
      {
        if (*v106 != v103)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v105 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          v20 = objc_opt_class();
          v25 = objc_msgSend_objectForKey_(a4, v21, @"W", v22, v24, v23);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v25)
          {
            v31 = objc_msgSend_registration(MEMORY[0x277D19298], v26, v27, v28, v30, v29);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v110 = @"W";
              v111 = 2112;
              v112 = v20;
              _os_log_fault_impl(&dword_23BC9F000, v31, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v25 = 0;
          }

          v32 = objc_opt_class();
          v37 = objc_msgSend_objectForKey_(a4, v33, @"i", v34, v36, v35);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v37)
          {
            v43 = objc_msgSend_registration(MEMORY[0x277D19298], v38, v39, v40, v42, v41);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v110 = @"i";
              v111 = 2112;
              v112 = v32;
              _os_log_fault_impl(&dword_23BC9F000, v43, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v37 = 0;
          }

          objc_msgSend_objectForKey_(a4, v38, @"s", v40, v42, v41);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = MEMORY[0x277CBEA90];
            v49 = objc_msgSend_objectForKey_(a4, v44, @"s", v45, v47, v46);
            v54 = objc_msgSend__IDSDataFromBase64String_(v48, v50, v49, v51, v53, v52);
            goto LABEL_31;
          }

          objc_msgSend_objectForKey_(a4, v44, @"s", v45, v47, v46);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v54 = objc_msgSend_objectForKey_(a4, v55, @"s", v56, v58, v57);
LABEL_31:
            v59 = v54;
          }

          else
          {
            v59 = 0;
          }

          v60 = objc_opt_class();
          v65 = objc_msgSend_objectForKey_(a4, v61, @"x", v62, v64, v63);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v65)
          {
            v71 = objc_msgSend_registration(MEMORY[0x277D19298], v66, v67, v68, v70, v69);
            if (os_log_type_enabled(v71, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v110 = @"x";
              v111 = 2112;
              v112 = v60;
              _os_log_fault_impl(&dword_23BC9F000, v71, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v65 = 0;
          }

          v72 = objc_opt_class();
          v77 = objc_msgSend_objectForKey_(a4, v73, @"I", v74, v76, v75);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v77)
          {
            v83 = objc_msgSend_registration(MEMORY[0x277D19298], v78, v79, v80, v82, v81);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v110 = @"I";
              v111 = 2112;
              v112 = v72;
              _os_log_fault_impl(&dword_23BC9F000, v83, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v77 = 0;
          }

          objc_msgSend_objectForKey_(a4, v78, @"P", v80, v82, v81);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v88 = MEMORY[0x277CBEA90];
            v89 = objc_msgSend_objectForKey_(a4, v84, @"P", v85, v87, v86);
            v94 = objc_msgSend__IDSDataFromBase64String_(v88, v90, v89, v91, v93, v92);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v84, @"P", v85, v87, v86);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v94 = objc_msgSend_objectForKey_(a4, v95, @"P", v97, v96, v98);
            }

            else
            {
              v94 = 0;
            }
          }

          objc_msgSend_handler_peerDisplay_topic_myID_sessionInitated_clientInfo_peerID_peerPushToken_(v17, v95, a2, v25, v96, a3, v37, v59, v65, v77, v94, v99);
        }

        ++v16;
      }

      while (v104 != v16);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v105, v113, v19, 16);
    }

    while (v14);
  }
}

void sub_23BCB9FC4(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v321 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v317 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleAcceptPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v317 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v296 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v296 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v296);
  v314 = 0u;
  v315 = 0u;
  v312 = 0u;
  v313 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v312, v320, 0, 16);
  if (v14)
  {
    v308 = *v313;
    obj = v12;
    do
    {
      v15 = 0;
      v309 = v14;
      do
      {
        if (*v313 != v308)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v312 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v20, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = MEMORY[0x277CBEA90];
            v26 = objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            v307 = objc_msgSend__IDSDataFromBase64String_(v25, v27, v26, v28, v30, v29);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v307 = objc_msgSend_objectForKey_(a4, v31, @"s", v32, v34, v33);
            }

            else
            {
              v307 = 0;
            }
          }

          v35 = objc_opt_class();
          v311 = objc_msgSend_objectForKey_(a4, v36, @"I", v37, v39, v38);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v311)
            {
              v45 = objc_msgSend_registration(MEMORY[0x277D19298], v40, v41, v42, v44, v43);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v317 = @"I";
                v318 = 2112;
                v319 = v35;
                _os_log_fault_impl(&dword_23BC9F000, v45, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v311 = 0;
          }

          v46 = objc_opt_class();
          v310 = objc_msgSend_objectForKey_(a4, v47, @"J", v48, v50, v49);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v310)
            {
              v56 = objc_msgSend_registration(MEMORY[0x277D19298], v51, v52, v53, v55, v54);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v317 = @"J";
                v318 = 2112;
                v319 = v46;
                _os_log_fault_impl(&dword_23BC9F000, v56, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v310 = 0;
          }

          objc_msgSend_objectForKey_(a4, v51, @"P", v53, v55, v54);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v61 = MEMORY[0x277CBEA90];
            v62 = objc_msgSend_objectForKey_(a4, v57, @"P", v58, v60, v59);
            v306 = objc_msgSend__IDSDataFromBase64String_(v61, v63, v62, v64, v66, v65);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v57, @"P", v58, v60, v59);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v306 = objc_msgSend_objectForKey_(a4, v67, @"P", v68, v70, v69);
            }

            else
            {
              v306 = 0;
            }
          }

          v71 = MEMORY[0x277CCABB0];
          v72 = objc_opt_class();
          v77 = objc_msgSend_objectForKey_(a4, v73, @"N", v74, v76, v75);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v77)
          {
            v83 = objc_msgSend_registration(MEMORY[0x277D19298], v78, v79, v80, v82, v81);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v317 = @"N";
              v318 = 2112;
              v319 = v72;
              _os_log_fault_impl(&dword_23BC9F000, v83, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v77 = 0;
          }

          v84 = objc_msgSend_intValue(v77, v78, v79, v80, v82, v81);
          v305 = objc_msgSend_numberWithInt_(v71, v85, v84, v86, v88, v87);
          objc_msgSend_objectForKey_(a4, v89, @"B", v90, v92, v91);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v97 = MEMORY[0x277CBEA90];
            v98 = objc_msgSend_objectForKey_(a4, v93, @"B", v94, v96, v95);
            v304 = objc_msgSend__IDSDataFromBase64String_(v97, v99, v98, v100, v102, v101);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v93, @"B", v94, v96, v95);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v304 = objc_msgSend_objectForKey_(a4, v103, @"B", v104, v106, v105);
            }

            else
            {
              v304 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v103, @"A", v104, v106, v105);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v111 = MEMORY[0x277CBEA90];
            v112 = objc_msgSend_objectForKey_(a4, v107, @"A", v108, v110, v109);
            v303 = objc_msgSend__IDSDataFromBase64String_(v111, v113, v112, v114, v116, v115);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v107, @"A", v108, v110, v109);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v303 = objc_msgSend_objectForKey_(a4, v117, @"A", v118, v120, v119);
            }

            else
            {
              v303 = 0;
            }
          }

          v121 = objc_opt_class();
          v126 = objc_msgSend_objectForKey_(a4, v122, @"t", v123, v125, v124);
          if (objc_opt_isKindOfClass())
          {
            if (v126)
            {
              v132 = MEMORY[0x277CCABB0];
              v133 = objc_opt_class();
              v138 = objc_msgSend_objectForKey_(a4, v134, @"t", v135, v137, v136);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v138)
              {
                v144 = objc_msgSend_registration(MEMORY[0x277D19298], v139, v140, v141, v143, v142);
                if (os_log_type_enabled(v144, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v317 = @"t";
                  v318 = 2112;
                  v319 = v133;
                  _os_log_fault_impl(&dword_23BC9F000, v144, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v138 = 0;
              }

              v145 = objc_msgSend_intValue(v138, v139, v140, v141, v143, v142);
              v302 = objc_msgSend_numberWithInt_(v132, v146, v145, v147, v149, v148);
LABEL_64:
              objc_msgSend_objectForKey_(a4, v127, @"k", v129, v131, v130);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v155 = MEMORY[0x277CBEA90];
                v156 = objc_msgSend_objectForKey_(a4, v151, @"k", v152, v154, v153);
                v301 = objc_msgSend__IDSDataFromBase64String_(v155, v157, v156, v158, v160, v159);
              }

              else
              {
                objc_msgSend_objectForKey_(a4, v151, @"k", v152, v154, v153);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v301 = objc_msgSend_objectForKey_(a4, v161, @"k", v162, v164, v163);
                }

                else
                {
                  v301 = 0;
                }
              }

              objc_msgSend_objectForKey_(a4, v161, @"q", v162, v164, v163);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v169 = MEMORY[0x277CBEA90];
                v170 = objc_msgSend_objectForKey_(a4, v165, @"q", v166, v168, v167);
                v300 = objc_msgSend__IDSDataFromBase64String_(v169, v171, v170, v172, v174, v173);
              }

              else
              {
                objc_msgSend_objectForKey_(a4, v165, @"q", v166, v168, v167);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v300 = objc_msgSend_objectForKey_(a4, v175, @"q", v176, v178, v177);
                }

                else
                {
                  v300 = 0;
                }
              }

              objc_msgSend_objectForKey_(a4, v175, @"r", v176, v178, v177);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v183 = MEMORY[0x277CBEA90];
                v184 = objc_msgSend_objectForKey_(a4, v179, @"r", v180, v182, v181);
                v189 = objc_msgSend__IDSDataFromBase64String_(v183, v185, v184, v186, v188, v187);
                goto LABEL_78;
              }

              objc_msgSend_objectForKey_(a4, v179, @"r", v180, v182, v181);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v189 = objc_msgSend_objectForKey_(a4, v190, @"r", v191, v193, v192);
LABEL_78:
                v194 = v189;
              }

              else
              {
                v194 = 0;
              }

              objc_msgSend_objectForKey_(a4, v190, @"h", v191, v193, v192);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v199 = MEMORY[0x277CBEA90];
                v200 = objc_msgSend_objectForKey_(a4, v195, @"h", v196, v198, v197);
                v205 = objc_msgSend__IDSDataFromBase64String_(v199, v201, v200, v202, v204, v203);
                goto LABEL_84;
              }

              objc_msgSend_objectForKey_(a4, v195, @"h", v196, v198, v197);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v205 = objc_msgSend_objectForKey_(a4, v206, @"h", v207, v209, v208);
LABEL_84:
                v210 = v205;
              }

              else
              {
                v210 = 0;
              }

              v211 = MEMORY[0x277CCABB0];
              v212 = objc_opt_class();
              v217 = objc_msgSend_objectForKey_(a4, v213, @"o", v214, v216, v215);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v217)
              {
                v223 = objc_msgSend_registration(MEMORY[0x277D19298], v218, v219, v220, v222, v221);
                if (os_log_type_enabled(v223, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v317 = @"o";
                  v318 = 2112;
                  v319 = v212;
                  _os_log_fault_impl(&dword_23BC9F000, v223, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v217 = 0;
              }

              v224 = objc_msgSend_intValue(v217, v218, v219, v220, v222, v221);
              v229 = objc_msgSend_numberWithInt_(v211, v225, v224, v226, v228, v227);
              objc_msgSend_objectForKey_(a4, v230, @"H", v231, v233, v232);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v238 = MEMORY[0x277CBEA90];
                v239 = objc_msgSend_objectForKey_(a4, v234, @"H", v235, v237, v236);
                v244 = objc_msgSend__IDSDataFromBase64String_(v238, v240, v239, v241, v243, v242);
                goto LABEL_95;
              }

              objc_msgSend_objectForKey_(a4, v234, @"H", v235, v237, v236);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v244 = objc_msgSend_objectForKey_(a4, v245, @"H", v246, v248, v247);
LABEL_95:
                v249 = v244;
              }

              else
              {
                v249 = 0;
              }

              v250 = MEMORY[0x277CCABB0];
              v251 = objc_opt_class();
              v256 = objc_msgSend_objectForKey_(a4, v252, @"O", v253, v255, v254);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v256)
              {
                v262 = objc_msgSend_registration(MEMORY[0x277D19298], v257, v258, v259, v261, v260);
                if (os_log_type_enabled(v262, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v317 = @"O";
                  v318 = 2112;
                  v319 = v251;
                  _os_log_fault_impl(&dword_23BC9F000, v262, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v256 = 0;
              }

              v263 = objc_msgSend_intValue(v256, v257, v258, v259, v261, v260);
              v268 = objc_msgSend_numberWithInt_(v250, v264, v263, v265, v267, v266);
              v269 = objc_opt_class();
              v274 = objc_msgSend_objectForKey_(a4, v270, @"x", v271, v273, v272);
              if ((objc_opt_isKindOfClass() & 1) == 0 && v274)
              {
                v280 = objc_msgSend_registration(MEMORY[0x277D19298], v275, v276, v277, v279, v278);
                if (os_log_type_enabled(v280, OS_LOG_TYPE_FAULT))
                {
                  *buf = 138412546;
                  v317 = @"x";
                  v318 = 2112;
                  v319 = v269;
                  _os_log_fault_impl(&dword_23BC9F000, v280, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
                }

                v274 = 0;
              }

              objc_msgSend_objectForKey_(a4, v275, @"d", v277, v279, v278);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v285 = MEMORY[0x277CBEA90];
                v286 = objc_msgSend_objectForKey_(a4, v281, @"d", v282, v284, v283);
                v291 = objc_msgSend__IDSDataFromBase64String_(v285, v287, v286, v288, v290, v289);
              }

              else
              {
                objc_msgSend_objectForKey_(a4, v281, @"d", v282, v284, v283);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v291 = objc_msgSend_objectForKey_(a4, v292, @"d", v294, v293, v295);
                }

                else
                {
                  v291 = 0;
                }
              }

              objc_msgSend_handler_sessionAccepted_topic_peerID_peerCN_peerPushToken_peerNATType_peerBlob_peerNatIP_relayType_relayConnectionID_relayTransactionIDAlloc_relayTokenAllocReq_myRelayIP_myRelayPort_peerRelayIP_peerRelayPort_clientInfo_serviceData_(v16, v292, a2, v307, v293, a3, v311, v310, v306, v305, v304, v303, v302, v301, v300, v194, v210, v229, v249, v268, v274, v291);
              goto LABEL_113;
            }
          }

          else if (v126)
          {
            v150 = objc_msgSend_registration(MEMORY[0x277D19298], v127, v128, v129, v131, v130);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v317 = @"t";
              v318 = 2112;
              v319 = v121;
              _os_log_fault_impl(&dword_23BC9F000, v150, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }
          }

          v302 = 0;
          goto LABEL_64;
        }

LABEL_113:
        ++v15;
      }

      while (v309 != v15);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v312, v320, v20, 16);
    }

    while (v14);
  }
}

void sub_23BCBB018(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v127 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v123 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRejectPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v123 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v112 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v112 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v112);
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v118, v126, 0, 16);
  if (v14)
  {
    v117 = *v119;
    *&v15 = 138412802;
    v113 = v15;
    obj = v12;
    do
    {
      v16 = 0;
      do
      {
        if (*v119 != v117)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v118 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v18, @"s", v19, v21, v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = MEMORY[0x277CBEA90];
            v27 = objc_msgSend_objectForKey_(a4, v22, @"s", v23, v25, v24);
            v32 = objc_msgSend__IDSDataFromBase64String_(v26, v28, v27, v29, v31, v30);
            goto LABEL_21;
          }

          objc_msgSend_objectForKey_(a4, v22, @"s", v23, v25, v24);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = objc_msgSend_objectForKey_(a4, v33, @"s", v34, v36, v35);
LABEL_21:
            v37 = v32;
          }

          else
          {
            v37 = 0;
          }

          v38 = objc_opt_class();
          v43 = objc_msgSend_objectForKey_(a4, v39, @"I", v40, v42, v41);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v43)
          {
            v49 = objc_msgSend_registration(MEMORY[0x277D19298], v44, v45, v46, v48, v47);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v123 = @"I";
              v124 = 2112;
              v125 = v38;
              _os_log_fault_impl(&dword_23BC9F000, v49, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v43 = 0;
          }

          objc_msgSend_objectForKey_(a4, v44, @"P", v46, v48, v47);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v54 = MEMORY[0x277CBEA90];
            v55 = objc_msgSend_objectForKey_(a4, v50, @"P", v51, v53, v52);
            v60 = objc_msgSend__IDSDataFromBase64String_(v54, v56, v55, v57, v59, v58);
            goto LABEL_32;
          }

          objc_msgSend_objectForKey_(a4, v50, @"P", v51, v53, v52);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v60 = objc_msgSend_objectForKey_(a4, v61, @"P", v62, v64, v63);
LABEL_32:
            v65 = v60;
          }

          else
          {
            v65 = 0;
          }

          v66 = MEMORY[0x277CCABB0];
          v67 = objc_opt_class();
          v72 = objc_msgSend_objectForKey_(a4, v68, @"y", v69, v71, v70);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v72)
          {
            v78 = objc_msgSend_registration(MEMORY[0x277D19298], v73, v74, v75, v77, v76);
            if (os_log_type_enabled(v78, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v123 = @"y";
              v124 = 2112;
              v125 = v67;
              _os_log_fault_impl(&dword_23BC9F000, v78, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v72 = 0;
          }

          v79 = objc_msgSend_intValue(v72, v73, v74, v75, v77, v76);
          v84 = objc_msgSend_numberWithInt_(v66, v80, v79, v81, v83, v82);
          v85 = objc_opt_class();
          v90 = objc_msgSend_objectForKey_(a4, v86, @"x", v87, v89, v88);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v90)
          {
            v96 = objc_msgSend_registration(MEMORY[0x277D19298], v91, v92, v93, v95, v94);
            if (os_log_type_enabled(v96, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v123 = @"x";
              v124 = 2112;
              v125 = v85;
              _os_log_fault_impl(&dword_23BC9F000, v96, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v90 = 0;
          }

          objc_msgSend_objectForKey_(a4, v91, @"d", v93, v95, v94);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v101 = MEMORY[0x277CBEA90];
            v102 = objc_msgSend_objectForKey_(a4, v97, @"d", v98, v100, v99);
            v107 = objc_msgSend__IDSDataFromBase64String_(v101, v103, v102, v104, v106, v105);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v97, @"d", v98, v100, v99);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v107 = objc_msgSend_objectForKey_(a4, v108, @"d", v110, v109, v111);
            }

            else
            {
              v107 = 0;
            }
          }

          objc_msgSend_handler_sessionRejected_topic_peerID_peerPushToken_reason_clientInfo_serviceData_(v17, v108, a2, v37, v109, a3, v43, v65, v84, v90, v107, v113);
        }

        ++v16;
      }

      while (v14 != v16);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v118, v126, v21, 16);
    }

    while (v14);
  }
}

void sub_23BCBB848(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v105 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleCancelPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v105 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v95 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v95 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v95);
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v100, v108, 0, 16);
  if (v14)
  {
    v99 = *v101;
    obj = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v101 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v100 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v20, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = MEMORY[0x277CBEA90];
            v26 = objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            v31 = objc_msgSend__IDSDataFromBase64String_(v25, v27, v26, v28, v30, v29);
            goto LABEL_21;
          }

          objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = objc_msgSend_objectForKey_(a4, v32, @"s", v33, v35, v34);
LABEL_21:
            v36 = v31;
          }

          else
          {
            v36 = 0;
          }

          v37 = objc_opt_class();
          v42 = objc_msgSend_objectForKey_(a4, v38, @"I", v39, v41, v40);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v42)
          {
            v48 = objc_msgSend_registration(MEMORY[0x277D19298], v43, v44, v45, v47, v46);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v105 = @"I";
              v106 = 2112;
              v107 = v37;
              _os_log_fault_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v42 = 0;
          }

          v49 = MEMORY[0x277CCABB0];
          v50 = objc_opt_class();
          v55 = objc_msgSend_objectForKey_(a4, v51, @"y", v52, v54, v53);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v55)
          {
            v61 = objc_msgSend_registration(MEMORY[0x277D19298], v56, v57, v58, v60, v59);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v105 = @"y";
              v106 = 2112;
              v107 = v50;
              _os_log_fault_impl(&dword_23BC9F000, v61, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v55 = 0;
          }

          v62 = objc_msgSend_intValue(v55, v56, v57, v58, v60, v59);
          v67 = objc_msgSend_numberWithInt_(v49, v63, v62, v64, v66, v65);
          v68 = objc_opt_class();
          v73 = objc_msgSend_objectForKey_(a4, v69, @"x", v70, v72, v71);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v73)
          {
            v79 = objc_msgSend_registration(MEMORY[0x277D19298], v74, v75, v76, v78, v77);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v105 = @"x";
              v106 = 2112;
              v107 = v68;
              _os_log_fault_impl(&dword_23BC9F000, v79, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v73 = 0;
          }

          objc_msgSend_objectForKey_(a4, v74, @"d", v76, v78, v77);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = MEMORY[0x277CBEA90];
            v85 = objc_msgSend_objectForKey_(a4, v80, @"d", v81, v83, v82);
            v90 = objc_msgSend__IDSDataFromBase64String_(v84, v86, v85, v87, v89, v88);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v80, @"d", v81, v83, v82);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v90 = objc_msgSend_objectForKey_(a4, v91, @"d", v93, v92, v94);
            }

            else
            {
              v90 = 0;
            }
          }

          objc_msgSend_handler_sessionCancelled_topic_peerID_reason_clientInfo_serviceData_(v16, v91, a2, v36, v92, a3, v42, v67, v73, v90);
        }

        ++v15;
      }

      while (v14 != v15);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v100, v108, v20, 16);
    }

    while (v14);
  }
}

void sub_23BCBBFD0(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v264 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v260 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRelayInitatePush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v260 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v241 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v241 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v241);
  v257 = 0u;
  v258 = 0u;
  v255 = 0u;
  v256 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v255, v263, 0, 16);
  if (v14)
  {
    v253 = *v256;
    *&v15 = 138412802;
    v242 = v15;
    obj = v12;
    do
    {
      v16 = 0;
      v254 = v14;
      do
      {
        if (*v256 != v253)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v255 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v18, @"s", v19, v21, v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = MEMORY[0x277CBEA90];
            v27 = objc_msgSend_objectForKey_(a4, v22, @"s", v23, v25, v24);
            v252 = objc_msgSend__IDSDataFromBase64String_(v26, v28, v27, v29, v31, v30);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v22, @"s", v23, v25, v24);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v252 = objc_msgSend_objectForKey_(a4, v32, @"s", v33, v35, v34);
            }

            else
            {
              v252 = 0;
            }
          }

          v36 = objc_opt_class();
          v41 = objc_msgSend_objectForKey_(a4, v37, @"I", v38, v40, v39);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v41)
          {
            v47 = objc_msgSend_registration(MEMORY[0x277D19298], v42, v43, v44, v46, v45);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v260 = @"I";
              v261 = 2112;
              v262 = v36;
              _os_log_fault_impl(&dword_23BC9F000, v47, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v41 = 0;
          }

          objc_msgSend_objectForKey_(a4, v42, @"P", v44, v46, v45);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v52 = MEMORY[0x277CBEA90];
            v53 = objc_msgSend_objectForKey_(a4, v48, @"P", v49, v51, v50);
            v251 = objc_msgSend__IDSDataFromBase64String_(v52, v54, v53, v55, v57, v56);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v48, @"P", v49, v51, v50);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v251 = objc_msgSend_objectForKey_(a4, v58, @"P", v59, v61, v60);
            }

            else
            {
              v251 = 0;
            }
          }

          v62 = MEMORY[0x277CCABB0];
          v63 = objc_opt_class();
          v68 = objc_msgSend_objectForKey_(a4, v64, @"t", v65, v67, v66);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v68)
          {
            v74 = objc_msgSend_registration(MEMORY[0x277D19298], v69, v70, v71, v73, v72);
            if (os_log_type_enabled(v74, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v260 = @"t";
              v261 = 2112;
              v262 = v63;
              _os_log_fault_impl(&dword_23BC9F000, v74, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v68 = 0;
          }

          v75 = objc_msgSend_intValue(v68, v69, v70, v71, v73, v72);
          v250 = objc_msgSend_numberWithInt_(v62, v76, v75, v77, v79, v78);
          objc_msgSend_objectForKey_(a4, v80, @"k", v81, v83, v82);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v88 = MEMORY[0x277CBEA90];
            v89 = objc_msgSend_objectForKey_(a4, v84, @"k", v85, v87, v86);
            v249 = objc_msgSend__IDSDataFromBase64String_(v88, v90, v89, v91, v93, v92);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v84, @"k", v85, v87, v86);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v249 = objc_msgSend_objectForKey_(a4, v94, @"k", v95, v97, v96);
            }

            else
            {
              v249 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v94, @"q", v95, v97, v96);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v102 = MEMORY[0x277CBEA90];
            v103 = objc_msgSend_objectForKey_(a4, v98, @"q", v99, v101, v100);
            v248 = objc_msgSend__IDSDataFromBase64String_(v102, v104, v103, v105, v107, v106);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v98, @"q", v99, v101, v100);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v248 = objc_msgSend_objectForKey_(a4, v108, @"q", v109, v111, v110);
            }

            else
            {
              v248 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v108, @"r", v109, v111, v110);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v116 = MEMORY[0x277CBEA90];
            v117 = objc_msgSend_objectForKey_(a4, v112, @"r", v113, v115, v114);
            v247 = objc_msgSend__IDSDataFromBase64String_(v116, v118, v117, v119, v121, v120);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v112, @"r", v113, v115, v114);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v247 = objc_msgSend_objectForKey_(a4, v122, @"r", v123, v125, v124);
            }

            else
            {
              v247 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v122, @"K", v123, v125, v124);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v130 = MEMORY[0x277CBEA90];
            v131 = objc_msgSend_objectForKey_(a4, v126, @"K", v127, v129, v128);
            v246 = objc_msgSend__IDSDataFromBase64String_(v130, v132, v131, v133, v135, v134);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v126, @"K", v127, v129, v128);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v246 = objc_msgSend_objectForKey_(a4, v136, @"K", v137, v139, v138);
            }

            else
            {
              v246 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v136, @"h", v137, v139, v138);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v144 = MEMORY[0x277CBEA90];
            v145 = objc_msgSend_objectForKey_(a4, v140, @"h", v141, v143, v142);
            v150 = objc_msgSend__IDSDataFromBase64String_(v144, v146, v145, v147, v149, v148);
            goto LABEL_61;
          }

          objc_msgSend_objectForKey_(a4, v140, @"h", v141, v143, v142);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v150 = objc_msgSend_objectForKey_(a4, v151, @"h", v152, v154, v153);
LABEL_61:
            v155 = v150;
          }

          else
          {
            v155 = 0;
          }

          v156 = MEMORY[0x277CCABB0];
          v157 = objc_opt_class();
          v162 = objc_msgSend_objectForKey_(a4, v158, @"o", v159, v161, v160);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v162)
          {
            v168 = objc_msgSend_registration(MEMORY[0x277D19298], v163, v164, v165, v167, v166);
            if (os_log_type_enabled(v168, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v260 = @"o";
              v261 = 2112;
              v262 = v157;
              _os_log_fault_impl(&dword_23BC9F000, v168, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v162 = 0;
          }

          v169 = objc_msgSend_intValue(v162, v163, v164, v165, v167, v166);
          v174 = objc_msgSend_numberWithInt_(v156, v170, v169, v171, v173, v172);
          objc_msgSend_objectForKey_(a4, v175, @"H", v176, v178, v177);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v183 = MEMORY[0x277CBEA90];
            v184 = objc_msgSend_objectForKey_(a4, v179, @"H", v180, v182, v181);
            v189 = objc_msgSend__IDSDataFromBase64String_(v183, v185, v184, v186, v188, v187);
            goto LABEL_72;
          }

          objc_msgSend_objectForKey_(a4, v179, @"H", v180, v182, v181);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v189 = objc_msgSend_objectForKey_(a4, v190, @"H", v191, v193, v192);
LABEL_72:
            v194 = v189;
          }

          else
          {
            v194 = 0;
          }

          v195 = MEMORY[0x277CCABB0];
          v196 = objc_opt_class();
          v201 = objc_msgSend_objectForKey_(a4, v197, @"O", v198, v200, v199);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v201)
          {
            v207 = objc_msgSend_registration(MEMORY[0x277D19298], v202, v203, v204, v206, v205);
            if (os_log_type_enabled(v207, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v260 = @"O";
              v261 = 2112;
              v262 = v196;
              _os_log_fault_impl(&dword_23BC9F000, v207, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v201 = 0;
          }

          v208 = objc_msgSend_intValue(v201, v202, v203, v204, v206, v205);
          v213 = objc_msgSend_numberWithInt_(v195, v209, v208, v210, v212, v211);
          v214 = objc_opt_class();
          v219 = objc_msgSend_objectForKey_(a4, v215, @"x", v216, v218, v217);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v219)
          {
            v225 = objc_msgSend_registration(MEMORY[0x277D19298], v220, v221, v222, v224, v223);
            if (os_log_type_enabled(v225, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v260 = @"x";
              v261 = 2112;
              v262 = v214;
              _os_log_fault_impl(&dword_23BC9F000, v225, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v219 = 0;
          }

          objc_msgSend_objectForKey_(a4, v220, @"d", v222, v224, v223);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v230 = MEMORY[0x277CBEA90];
            v231 = objc_msgSend_objectForKey_(a4, v226, @"d", v227, v229, v228);
            v236 = objc_msgSend__IDSDataFromBase64String_(v230, v232, v231, v233, v235, v234);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v226, @"d", v227, v229, v228);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v236 = objc_msgSend_objectForKey_(a4, v237, @"d", v239, v238, v240);
            }

            else
            {
              v236 = 0;
            }
          }

          objc_msgSend_handler_relayInitiated_topic_peerID_peerPushToken_relayType_relayConnectionID_relayTransactionIDAlloc_relayTokenAllocReq_relayCandidateID_myRelayIP_myRelayPort_peerRelayIP_peerRelayPort_clientInfo_serviceData_(v17, v237, a2, v252, v238, a3, v41, v251, v250, v249, v248, v247, v246, v155, v174, v194, v213, v219, v236, v242);
        }

        ++v16;
      }

      while (v254 != v16);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v255, v263, v21, 16);
    }

    while (v14);
  }
}

void sub_23BCBCD70(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v240 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v236 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRelayUpdatePush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v236 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v219 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v219 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v219);
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v231, v239, 0, 16);
  if (v14)
  {
    v229 = *v232;
    obj = v12;
    do
    {
      v15 = 0;
      v230 = v14;
      do
      {
        if (*v232 != v229)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v231 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v20, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = MEMORY[0x277CBEA90];
            v26 = objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            v228 = objc_msgSend__IDSDataFromBase64String_(v25, v27, v26, v28, v30, v29);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v228 = objc_msgSend_objectForKey_(a4, v31, @"s", v32, v34, v33);
            }

            else
            {
              v228 = 0;
            }
          }

          v35 = objc_opt_class();
          v40 = objc_msgSend_objectForKey_(a4, v36, @"I", v37, v39, v38);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v40)
          {
            v46 = objc_msgSend_registration(MEMORY[0x277D19298], v41, v42, v43, v45, v44);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v236 = @"I";
              v237 = 2112;
              v238 = v35;
              _os_log_fault_impl(&dword_23BC9F000, v46, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v40 = 0;
          }

          objc_msgSend_objectForKey_(a4, v41, @"P", v43, v45, v44);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = MEMORY[0x277CBEA90];
            v52 = objc_msgSend_objectForKey_(a4, v47, @"P", v48, v50, v49);
            v227 = objc_msgSend__IDSDataFromBase64String_(v51, v53, v52, v54, v56, v55);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v47, @"P", v48, v50, v49);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v227 = objc_msgSend_objectForKey_(a4, v57, @"P", v58, v60, v59);
            }

            else
            {
              v227 = 0;
            }
          }

          v61 = MEMORY[0x277CCABB0];
          v62 = objc_opt_class();
          v67 = objc_msgSend_objectForKey_(a4, v63, @"t", v64, v66, v65);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v67)
          {
            v73 = objc_msgSend_registration(MEMORY[0x277D19298], v68, v69, v70, v72, v71);
            if (os_log_type_enabled(v73, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v236 = @"t";
              v237 = 2112;
              v238 = v62;
              _os_log_fault_impl(&dword_23BC9F000, v73, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v67 = 0;
          }

          v74 = objc_msgSend_intValue(v67, v68, v69, v70, v72, v71);
          v226 = objc_msgSend_numberWithInt_(v61, v75, v74, v76, v78, v77);
          objc_msgSend_objectForKey_(a4, v79, @"k", v80, v82, v81);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v87 = MEMORY[0x277CBEA90];
            v88 = objc_msgSend_objectForKey_(a4, v83, @"k", v84, v86, v85);
            v225 = objc_msgSend__IDSDataFromBase64String_(v87, v89, v88, v90, v92, v91);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v83, @"k", v84, v86, v85);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v225 = objc_msgSend_objectForKey_(a4, v93, @"k", v94, v96, v95);
            }

            else
            {
              v225 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v93, @"q", v94, v96, v95);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v101 = MEMORY[0x277CBEA90];
            v102 = objc_msgSend_objectForKey_(a4, v97, @"q", v98, v100, v99);
            v224 = objc_msgSend__IDSDataFromBase64String_(v101, v103, v102, v104, v106, v105);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v97, @"q", v98, v100, v99);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v224 = objc_msgSend_objectForKey_(a4, v107, @"q", v108, v110, v109);
            }

            else
            {
              v224 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v107, @"r", v108, v110, v109);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v115 = MEMORY[0x277CBEA90];
            v116 = objc_msgSend_objectForKey_(a4, v111, @"r", v112, v114, v113);
            v223 = objc_msgSend__IDSDataFromBase64String_(v115, v117, v116, v118, v120, v119);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v111, @"r", v112, v114, v113);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v223 = objc_msgSend_objectForKey_(a4, v121, @"r", v122, v124, v123);
            }

            else
            {
              v223 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v121, @"K", v122, v124, v123);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v129 = MEMORY[0x277CBEA90];
            v130 = objc_msgSend_objectForKey_(a4, v125, @"K", v126, v128, v127);
            v135 = objc_msgSend__IDSDataFromBase64String_(v129, v131, v130, v132, v134, v133);
            goto LABEL_56;
          }

          objc_msgSend_objectForKey_(a4, v125, @"K", v126, v128, v127);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v135 = objc_msgSend_objectForKey_(a4, v136, @"K", v137, v139, v138);
LABEL_56:
            v140 = v135;
          }

          else
          {
            v140 = 0;
          }

          objc_msgSend_objectForKey_(a4, v136, @"L", v137, v139, v138);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v145 = MEMORY[0x277CBEA90];
            v146 = objc_msgSend_objectForKey_(a4, v141, @"L", v142, v144, v143);
            v151 = objc_msgSend__IDSDataFromBase64String_(v145, v147, v146, v148, v150, v149);
            goto LABEL_62;
          }

          objc_msgSend_objectForKey_(a4, v141, @"L", v142, v144, v143);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v151 = objc_msgSend_objectForKey_(a4, v152, @"L", v153, v155, v154);
LABEL_62:
            v156 = v151;
          }

          else
          {
            v156 = 0;
          }

          objc_msgSend_objectForKey_(a4, v152, @"U", v153, v155, v154);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v161 = MEMORY[0x277CBEA90];
            v162 = objc_msgSend_objectForKey_(a4, v157, @"U", v158, v160, v159);
            v167 = objc_msgSend__IDSDataFromBase64String_(v161, v163, v162, v164, v166, v165);
            goto LABEL_68;
          }

          objc_msgSend_objectForKey_(a4, v157, @"U", v158, v160, v159);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v167 = objc_msgSend_objectForKey_(a4, v168, @"U", v169, v171, v170);
LABEL_68:
            v172 = v167;
          }

          else
          {
            v172 = 0;
          }

          v173 = MEMORY[0x277CCABB0];
          v174 = objc_opt_class();
          v179 = objc_msgSend_objectForKey_(a4, v175, @"V", v176, v178, v177);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v179)
          {
            v185 = objc_msgSend_registration(MEMORY[0x277D19298], v180, v181, v182, v184, v183);
            if (os_log_type_enabled(v185, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v236 = @"V";
              v237 = 2112;
              v238 = v174;
              _os_log_fault_impl(&dword_23BC9F000, v185, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v179 = 0;
          }

          v186 = objc_msgSend_intValue(v179, v180, v181, v182, v184, v183);
          v191 = objc_msgSend_numberWithInt_(v173, v187, v186, v188, v190, v189);
          v192 = objc_opt_class();
          v197 = objc_msgSend_objectForKey_(a4, v193, @"x", v194, v196, v195);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v197)
          {
            v203 = objc_msgSend_registration(MEMORY[0x277D19298], v198, v199, v200, v202, v201);
            if (os_log_type_enabled(v203, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v236 = @"x";
              v237 = 2112;
              v238 = v192;
              _os_log_fault_impl(&dword_23BC9F000, v203, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v197 = 0;
          }

          objc_msgSend_objectForKey_(a4, v198, @"d", v200, v202, v201);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v208 = MEMORY[0x277CBEA90];
            v209 = objc_msgSend_objectForKey_(a4, v204, @"d", v205, v207, v206);
            v214 = objc_msgSend__IDSDataFromBase64String_(v208, v210, v209, v211, v213, v212);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v204, @"d", v205, v207, v206);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v214 = objc_msgSend_objectForKey_(a4, v215, @"d", v217, v216, v218);
            }

            else
            {
              v214 = 0;
            }
          }

          objc_msgSend_handler_relayUpdated_topic_peerID_peerPushToken_relayType_relayConnectionID_relayTransactionIDChannelBind_relayTokenChannelBind_relayCandidateID_relayBlob_peerRelayNATIP_peerRelayNATPort_clientInfo_serviceData_(v16, v215, a2, v228, v216, a3, v40, v227, v226, v225, v224, v223, v140, v156, v172, v191, v197, v214);
        }

        ++v15;
      }

      while (v230 != v15);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v231, v239, v20, 16);
    }

    while (v14);
  }
}

void sub_23BCBDA50(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v261 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v257 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleRelayCancelPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v257 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v238 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v238 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v238);
  v254 = 0u;
  v255 = 0u;
  v252 = 0u;
  v253 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v252, v260, 0, 16);
  if (v14)
  {
    v249 = *v253;
    *&v15 = 138412802;
    v239 = v15;
    obj = v12;
    do
    {
      v16 = 0;
      v250 = v14;
      do
      {
        if (*v253 != v249)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v252 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v18, @"s", v19, v21, v20);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = MEMORY[0x277CBEA90];
            v27 = objc_msgSend_objectForKey_(a4, v22, @"s", v23, v25, v24);
            v248 = objc_msgSend__IDSDataFromBase64String_(v26, v28, v27, v29, v31, v30);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v22, @"s", v23, v25, v24);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v248 = objc_msgSend_objectForKey_(a4, v32, @"s", v33, v35, v34);
            }

            else
            {
              v248 = 0;
            }
          }

          v36 = objc_opt_class();
          v251 = objc_msgSend_objectForKey_(a4, v37, @"I", v38, v40, v39);
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v251)
            {
              v46 = objc_msgSend_registration(MEMORY[0x277D19298], v41, v42, v43, v45, v44);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
              {
                *buf = 138412546;
                v257 = @"I";
                v258 = 2112;
                v259 = v36;
                _os_log_fault_impl(&dword_23BC9F000, v46, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
              }
            }

            v251 = 0;
          }

          v47 = MEMORY[0x277CCABB0];
          v48 = objc_opt_class();
          v53 = objc_msgSend_objectForKey_(a4, v49, @"t", v50, v52, v51);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v53)
          {
            v59 = objc_msgSend_registration(MEMORY[0x277D19298], v54, v55, v56, v58, v57);
            if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v257 = @"t";
              v258 = 2112;
              v259 = v48;
              _os_log_fault_impl(&dword_23BC9F000, v59, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v53 = 0;
          }

          v60 = objc_msgSend_intValue(v53, v54, v55, v56, v58, v57);
          v247 = objc_msgSend_numberWithInt_(v47, v61, v60, v62, v64, v63);
          objc_msgSend_objectForKey_(a4, v65, @"r", v66, v68, v67);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v73 = MEMORY[0x277CBEA90];
            v74 = objc_msgSend_objectForKey_(a4, v69, @"r", v70, v72, v71);
            v246 = objc_msgSend__IDSDataFromBase64String_(v73, v75, v74, v76, v78, v77);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v69, @"r", v70, v72, v71);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v246 = objc_msgSend_objectForKey_(a4, v79, @"r", v80, v82, v81);
            }

            else
            {
              v246 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v79, @"k", v80, v82, v81);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v87 = MEMORY[0x277CBEA90];
            v88 = objc_msgSend_objectForKey_(a4, v83, @"k", v84, v86, v85);
            v245 = objc_msgSend__IDSDataFromBase64String_(v87, v89, v88, v90, v92, v91);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v83, @"k", v84, v86, v85);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v245 = objc_msgSend_objectForKey_(a4, v93, @"k", v94, v96, v95);
            }

            else
            {
              v245 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v93, @"q", v94, v96, v95);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v101 = MEMORY[0x277CBEA90];
            v102 = objc_msgSend_objectForKey_(a4, v97, @"q", v98, v100, v99);
            v244 = objc_msgSend__IDSDataFromBase64String_(v101, v103, v102, v104, v106, v105);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v97, @"q", v98, v100, v99);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v244 = objc_msgSend_objectForKey_(a4, v107, @"q", v108, v110, v109);
            }

            else
            {
              v244 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v107, @"K", v108, v110, v109);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v115 = MEMORY[0x277CBEA90];
            v116 = objc_msgSend_objectForKey_(a4, v111, @"K", v112, v114, v113);
            v243 = objc_msgSend__IDSDataFromBase64String_(v115, v117, v116, v118, v120, v119);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v111, @"K", v112, v114, v113);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v243 = objc_msgSend_objectForKey_(a4, v121, @"K", v122, v124, v123);
            }

            else
            {
              v243 = 0;
            }
          }

          objc_msgSend_objectForKey_(a4, v121, @"h", v122, v124, v123);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v129 = MEMORY[0x277CBEA90];
            v130 = objc_msgSend_objectForKey_(a4, v125, @"h", v126, v128, v127);
            v135 = objc_msgSend__IDSDataFromBase64String_(v129, v131, v130, v132, v134, v133);
            goto LABEL_56;
          }

          objc_msgSend_objectForKey_(a4, v125, @"h", v126, v128, v127);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v135 = objc_msgSend_objectForKey_(a4, v136, @"h", v137, v139, v138);
LABEL_56:
            v140 = v135;
          }

          else
          {
            v140 = 0;
          }

          v141 = MEMORY[0x277CCABB0];
          v142 = objc_opt_class();
          v147 = objc_msgSend_objectForKey_(a4, v143, @"o", v144, v146, v145);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v147)
          {
            v153 = objc_msgSend_registration(MEMORY[0x277D19298], v148, v149, v150, v152, v151);
            if (os_log_type_enabled(v153, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v257 = @"o";
              v258 = 2112;
              v259 = v142;
              _os_log_fault_impl(&dword_23BC9F000, v153, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v147 = 0;
          }

          v154 = objc_msgSend_intValue(v147, v148, v149, v150, v152, v151);
          v159 = objc_msgSend_numberWithInt_(v141, v155, v154, v156, v158, v157);
          objc_msgSend_objectForKey_(a4, v160, @"H", v161, v163, v162);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v168 = MEMORY[0x277CBEA90];
            v169 = objc_msgSend_objectForKey_(a4, v164, @"H", v165, v167, v166);
            v174 = objc_msgSend__IDSDataFromBase64String_(v168, v170, v169, v171, v173, v172);
            goto LABEL_67;
          }

          objc_msgSend_objectForKey_(a4, v164, @"H", v165, v167, v166);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v174 = objc_msgSend_objectForKey_(a4, v175, @"H", v176, v178, v177);
LABEL_67:
            v179 = v174;
          }

          else
          {
            v179 = 0;
          }

          v180 = MEMORY[0x277CCABB0];
          v181 = objc_opt_class();
          v186 = objc_msgSend_objectForKey_(a4, v182, @"O", v183, v185, v184);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v186)
          {
            v192 = objc_msgSend_registration(MEMORY[0x277D19298], v187, v188, v189, v191, v190);
            if (os_log_type_enabled(v192, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v257 = @"O";
              v258 = 2112;
              v259 = v181;
              _os_log_fault_impl(&dword_23BC9F000, v192, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v186 = 0;
          }

          v193 = objc_msgSend_intValue(v186, v187, v188, v189, v191, v190);
          v198 = objc_msgSend_numberWithInt_(v180, v194, v193, v195, v197, v196);
          v199 = objc_opt_class();
          v204 = objc_msgSend_objectForKey_(a4, v200, @"y", v201, v203, v202);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v204)
          {
            v210 = objc_msgSend_registration(MEMORY[0x277D19298], v205, v206, v207, v209, v208);
            if (os_log_type_enabled(v210, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v257 = @"y";
              v258 = 2112;
              v259 = v199;
              _os_log_fault_impl(&dword_23BC9F000, v210, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v204 = 0;
          }

          v211 = objc_opt_class();
          v216 = objc_msgSend_objectForKey_(a4, v212, @"x", v213, v215, v214);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v216)
          {
            v222 = objc_msgSend_registration(MEMORY[0x277D19298], v217, v218, v219, v221, v220);
            if (os_log_type_enabled(v222, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v257 = @"x";
              v258 = 2112;
              v259 = v211;
              _os_log_fault_impl(&dword_23BC9F000, v222, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v216 = 0;
          }

          objc_msgSend_objectForKey_(a4, v217, @"d", v219, v221, v220);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v227 = MEMORY[0x277CBEA90];
            v228 = objc_msgSend_objectForKey_(a4, v223, @"d", v224, v226, v225);
            v233 = objc_msgSend__IDSDataFromBase64String_(v227, v229, v228, v230, v232, v231);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v223, @"d", v224, v226, v225);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v233 = objc_msgSend_objectForKey_(a4, v234, @"d", v236, v235, v237);
            }

            else
            {
              v233 = 0;
            }
          }

          objc_msgSend_handler_relayCancelled_topic_peerID_relayType_relayTokenAllocReq_relayConnectionID_relayTransactionIDAlloc_relayCandidateID_myRelayIP_myRelayPort_peerRelayIP_peerRelayPort_reason_clientInfo_serviceData_(v17, v234, a2, v248, v235, a3, v251, v247, v246, v245, v244, v243, v140, v159, v179, v198, v204, v216, v233, v239);
        }

        ++v16;
      }

      while (v250 != v16);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v252, v260, v21, 16);
    }

    while (v14);
  }
}

void sub_23BCBE7E8(uint64_t a1, void *a2, uint64_t a3, __CFString *a4)
{
  v109 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v105 = a4;
      _os_log_impl(&dword_23BC9F000, v5, OS_LOG_TYPE_DEBUG, "_handleSendPush: %@", buf, 0xCu);
    }
  }

  v6 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v105 = a4;
    _os_log_impl(&dword_23BC9F000, v6, OS_LOG_TYPE_DEFAULT, "userInfo: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (MarcoShouldLog())
    {
      v95 = a4;
      MarcoLog();
    }

    if (IMShouldLog())
    {
      v95 = a4;
      IMLogString();
    }
  }

  v12 = objc_msgSend_copyHandlersForEnumerating(a2, v7, v8, v9, v11, v10, v95);
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v100, v108, 0, 16);
  if (v14)
  {
    v99 = *v101;
    obj = v12;
    do
    {
      v15 = 0;
      do
      {
        if (*v101 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v100 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          objc_msgSend_objectForKey_(a4, v17, @"s", v18, v20, v19);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v25 = MEMORY[0x277CBEA90];
            v26 = objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
            v31 = objc_msgSend__IDSDataFromBase64String_(v25, v27, v26, v28, v30, v29);
            goto LABEL_21;
          }

          objc_msgSend_objectForKey_(a4, v21, @"s", v22, v24, v23);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = objc_msgSend_objectForKey_(a4, v32, @"s", v33, v35, v34);
LABEL_21:
            v36 = v31;
          }

          else
          {
            v36 = 0;
          }

          v37 = objc_opt_class();
          v42 = objc_msgSend_objectForKey_(a4, v38, @"I", v39, v41, v40);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v42)
          {
            v48 = objc_msgSend_registration(MEMORY[0x277D19298], v43, v44, v45, v47, v46);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v105 = @"I";
              v106 = 2112;
              v107 = v37;
              _os_log_fault_impl(&dword_23BC9F000, v48, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v42 = 0;
          }

          v49 = MEMORY[0x277CCABB0];
          v50 = objc_opt_class();
          v55 = objc_msgSend_objectForKey_(a4, v51, @"y", v52, v54, v53);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v55)
          {
            v61 = objc_msgSend_registration(MEMORY[0x277D19298], v56, v57, v58, v60, v59);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v105 = @"y";
              v106 = 2112;
              v107 = v50;
              _os_log_fault_impl(&dword_23BC9F000, v61, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v55 = 0;
          }

          v62 = objc_msgSend_intValue(v55, v56, v57, v58, v60, v59);
          v67 = objc_msgSend_numberWithInt_(v49, v63, v62, v64, v66, v65);
          v68 = objc_opt_class();
          v73 = objc_msgSend_objectForKey_(a4, v69, @"x", v70, v72, v71);
          if ((objc_opt_isKindOfClass() & 1) == 0 && v73)
          {
            v79 = objc_msgSend_registration(MEMORY[0x277D19298], v74, v75, v76, v78, v77);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v105 = @"x";
              v106 = 2112;
              v107 = v68;
              _os_log_fault_impl(&dword_23BC9F000, v79, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", buf, 0x16u);
            }

            v73 = 0;
          }

          objc_msgSend_objectForKey_(a4, v74, @"d", v76, v78, v77);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = MEMORY[0x277CBEA90];
            v85 = objc_msgSend_objectForKey_(a4, v80, @"d", v81, v83, v82);
            v90 = objc_msgSend__IDSDataFromBase64String_(v84, v86, v85, v87, v89, v88);
          }

          else
          {
            objc_msgSend_objectForKey_(a4, v80, @"d", v81, v83, v82);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v90 = objc_msgSend_objectForKey_(a4, v91, @"d", v93, v92, v94);
            }

            else
            {
              v90 = 0;
            }
          }

          objc_msgSend_handler_incomingMessage_topic_peerID_reason_clientInfo_serviceData_(v16, v91, a2, v36, v92, a3, v42, v67, v73, v90);
        }

        ++v15;
      }

      while (v14 != v15);
      v12 = obj;
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v100, v108, v20, 16);
    }

    while (v14);
  }
}

void sub_23BCBF7DC(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_23BC9F000, a2, OS_LOG_TYPE_ERROR, "IMAVInterfaceNetworkCheckResult unknown/unhandled result: %ld", &v2, 0xCu);
}

void sub_23BCBF898()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"session-token";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_23BC9F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_23BCBF934()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBF9BC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFA44()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFACC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFB54()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFBDC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFC64()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFCEC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFD74()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFDFC()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"reason";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_23BC9F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_23BCBFE98()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = 138412546;
  v1 = @"peers";
  v2 = 2080;
  v3 = "dictionary";
  _os_log_error_impl(&dword_23BC9F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", &v0, 0x16u);
}

void sub_23BCBFF34()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCBFFBC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC0044()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC00CC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC0154()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC01DC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC0264()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC02EC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC0374()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC03FC()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC0484()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC050C()
{
  v5 = 138412546;
  sub_23BCB6024();
  sub_23BCB6034(&dword_23BC9F000, MEMORY[0x277D86220], v0, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", v1, v2, v3, v4, v5);
}

void sub_23BCC05A8(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = @"W";
  v4 = 2112;
  v5 = a1;
  _os_log_fault_impl(&dword_23BC9F000, a2, OS_LOG_TYPE_FAULT, "_handleInitatePush: %@", &v2, 0x16u);
}