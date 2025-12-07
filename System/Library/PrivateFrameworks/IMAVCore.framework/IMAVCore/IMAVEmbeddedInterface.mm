@interface IMAVEmbeddedInterface
+ (void)updateCriticalState;
- (int64_t)_checkNetworkForChat:(id)chat requiresWifi:(BOOL)wifi;
- (int64_t)_runPingTestForChat:(id)chat;
- (void)_conferenceEnded:(id)ended;
- (void)_conferenceWillStart:(id)start;
- (void)chatStateUpdated;
@end

@implementation IMAVEmbeddedInterface

- (void)_conferenceWillStart:(id)start
{
  startCopy = start;
  v25.receiver = self;
  v25.super_class = IMAVEmbeddedInterface;
  [(IMAVInterface *)&v25 _conferenceWillStart:startCopy];
  if (!qword_27F610658)
  {
    qword_27F610658 = MEMORY[0x259C18990](@"AVSystemController", @"Celestial");
  }

  if (qword_27F610660 != -1)
  {
    sub_25477F8A0();
  }

  v9 = objc_msgSend_sharedAVSystemController(qword_27F610658, v5, v6, v7, v8);
  v13 = objc_msgSend_attributeForKey_(v9, v10, qword_27F610668, v11, v12);

  if (objc_msgSend_BOOLValue(v13, v14, v15, v16, v17))
  {
    v21 = objc_msgSend__existingConferenceForAVChat_(self, v18, startCopy, v19, v20);
    objc_msgSend_setMicrophoneMuted_(v21, v22, 1, v23, v24);
  }
}

- (void)_conferenceEnded:(id)ended
{
  v9 = *MEMORY[0x277D85DE8];
  endedCopy = ended;
  v5 = sub_254761764(endedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = endedCopy;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "_conferenceEnded: %@", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = IMAVEmbeddedInterface;
  [(IMAVConferenceInterface *)&v6 _conferenceEnded:endedCopy];
}

- (void)chatStateUpdated
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend__nonFinalChat(IMAVChat, a2, v2, v3, v4);
  v7 = sub_254761764(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v6;
    _os_log_impl(&dword_254743000, v7, OS_LOG_TYPE_DEFAULT, "Found non final chat: %@", buf, 0xCu);
  }

  if (!qword_27F610670)
  {
    v8 = MEMORY[0x259C18990](@"UIApplication", @"UIKit");
    qword_27F610670 = v8;
  }

  v9 = sub_254761764(v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      *buf = 0;
      v11 = "Disabling system idle timer";
LABEL_10:
      _os_log_impl(&dword_254743000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    }
  }

  else if (v10)
  {
    *buf = 0;
    v11 = "Enabling system idle timer";
    goto LABEL_10;
  }

  v16 = objc_msgSend_sharedApplication(qword_27F610670, v12, v13, v14, v15);
  objc_msgSend_setIdleTimerDisabled_(v16, v17, v6 != 0, v18, v19);

  sub_254759A18(v6 != 0);
  v25.receiver = self;
  v25.super_class = IMAVEmbeddedInterface;
  [(IMAVConferenceInterface *)&v25 chatStateUpdated];
  v20 = objc_opt_class();
  objc_msgSend_updateCriticalState(v20, v21, v22, v23, v24);
}

+ (void)updateCriticalState
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_sharedInstance(IMAVController, a2, v2, v3, v4);
  if (objc_msgSend__shouldRunConferences(v5, v6, v7, v8, v9))
  {
  }

  else
  {
    v18 = objc_msgSend_sharedInstance(IMAVController, v10, v11, v12, v13);
    shouldRunACConferences = objc_msgSend__shouldRunACConferences(v18, v19, v20, v21, v22);

    if (!shouldRunACConferences)
    {
      return;
    }
  }

  v24 = objc_msgSend__connectingChats(IMAVChat, v14, v15, v16, v17);
  if (objc_msgSend_count(v24, v25, v26, v27, v28))
  {
    v33 = 1;
  }

  else
  {
    v34 = objc_msgSend__connectedChats(IMAVChat, v29, v30, v31, v32);
    if (objc_msgSend_count(v34, v35, v36, v37, v38))
    {
      v33 = 1;
    }

    else
    {
      v43 = objc_msgSend__incomingInvitations(IMAVChat, v39, v40, v41, v42);
      if (objc_msgSend_count(v43, v44, v45, v46, v47))
      {
        v33 = 1;
      }

      else
      {
        v52 = objc_msgSend__outgoingInvitations(IMAVChat, v48, v49, v50, v51);
        v33 = objc_msgSend_count(v52, v53, v54, v55, v56) != 0;
      }
    }
  }

  v58 = sub_254761764(v57);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    v59 = @"NO";
    if (v33)
    {
      v59 = @"YES";
    }

    v68 = 138412290;
    v69 = v59;
    _os_log_impl(&dword_254743000, v58, OS_LOG_TYPE_DEFAULT, "Any chats need critical state: %@", &v68, 0xCu);
  }

  v64 = objc_msgSend_sharedInstance(MEMORY[0x277D07DD8], v60, v61, v62, v63);
  objc_msgSend_setEnableCriticalReliability_(v64, v65, v33, v66, v67);
}

- (int64_t)_checkNetworkForChat:(id)chat requiresWifi:(BOOL)wifi
{
  wifiCopy = wifi;
  v17 = *MEMORY[0x277D85DE8];
  v5 = sub_254761764(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (wifiCopy)
    {
      v6 = @"YES";
    }

    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_254743000, v5, OS_LOG_TYPE_DEFAULT, "Running network check on AVConference, requiresWifi: %@", &v15, 0xCu);
  }

  if (!qword_27F610678)
  {
    qword_27F610678 = MEMORY[0x259C18990](@"AVConference", @"AVConference");
  }

  v7 = objc_opt_respondsToSelector();
  if (v7)
  {
    v11 = objc_msgSend_doBlockingConnectionCheck_(qword_27F610678, v8, wifiCopy, v9, v10);
    if (v11 >= 4)
    {
      v12 = -1;
    }

    else
    {
      v12 = v11;
    }

    v13 = sub_254761764(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = v12;
      _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, " => returning result: %d", &v15, 8u);
    }
  }

  else
  {
    v13 = sub_254761764(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_254743000, v13, OS_LOG_TYPE_DEFAULT, " => Network check not implemented", &v15, 2u);
    }

    v12 = -1;
  }

  return v12;
}

- (int64_t)_runPingTestForChat:(id)chat
{
  *&v109[5] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  if (objc_msgSend__localNetworkConnectionType(chatCopy, v4, v5, v6, v7) == 2)
  {
    v12 = objc_msgSend_sharedInstance(MEMORY[0x277D192E8], v8, v9, v10, v11);
    v17 = objc_msgSend_myGatewayAddress(v12, v13, v14, v15, v16);

    v22 = objc_msgSend_length(v17, v18, v19, v20, v21);
    if (v22)
    {
      v23 = sub_254761764(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109378;
        v109[0] = 2;
        LOWORD(v109[1]) = 2112;
        *(&v109[1] + 2) = v17;
        _os_log_impl(&dword_254743000, v23, OS_LOG_TYPE_DEFAULT, "Running ping test: connection type %d - gateway IP %@", buf, 0x12u);
      }

      v24 = objc_autoreleasePoolPush();
      IMPerformPingTest();
      v25 = 0;
      v30 = objc_msgSend_packetsSuccessfullySent(v25, v26, v27, v28, v29);
      v31 = 4 * (v30 < 1);
      objc_autoreleasePoolPop(v24);
      v35 = objc_msgSend__setPingTestResult_(chatCopy, v32, v31, v33, v34);
      v36 = sub_254761764(v35);
      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
      if (v30 < 1)
      {
        if (v37)
        {
          *buf = 138412290;
          *v109 = @"Failed to run";
          _os_log_impl(&dword_254743000, v36, OS_LOG_TYPE_DEFAULT, "Ping test ended with error: %@", buf, 0xCu);
        }
      }

      else
      {
        if (v37)
        {
          *buf = 138412290;
          *v109 = v25;
          _os_log_impl(&dword_254743000, v36, OS_LOG_TYPE_DEFAULT, "Ping results: %@", buf, 0xCu);
        }

        v38 = MEMORY[0x277CCABB0];
        objc_msgSend_minRoundtripTime(v25, v39, v40, v41, v42);
        v47 = 0.0;
        v49 = v48 <= 0.0;
        v50 = 0.0;
        if (!v49)
        {
          objc_msgSend_minRoundtripTime(v25, v43, v44, v45, v46, 0.0);
          *&v50 = v50;
        }

        v36 = objc_msgSend_numberWithFloat_(v38, v43, v44, v45, v46, v50);
        v51 = MEMORY[0x277CCABB0];
        objc_msgSend_maxRoundtripTime(v25, v52, v53, v54, v55);
        if (v60 > 0.0)
        {
          objc_msgSend_maxRoundtripTime(v25, v56, v57, v58, v59);
          v47 = v60;
        }

        *&v60 = v47;
        v61 = objc_msgSend_numberWithFloat_(v51, v56, v57, v58, v59, v60);
        v62 = MEMORY[0x277CCABB0];
        objc_msgSend_averageRoundtripTime(v25, v63, v64, v65, v66);
        v71 = 0.0;
        v49 = v72 <= 0.0;
        v73 = 0.0;
        if (!v49)
        {
          objc_msgSend_averageRoundtripTime(v25, v67, v68, v69, v70, 0.0);
          *&v73 = v73;
        }

        v74 = objc_msgSend_numberWithFloat_(v62, v67, v68, v69, v70, v73);
        v75 = MEMORY[0x277CCABB0];
        objc_msgSend_standardDeviationRoundtripTime(v25, v76, v77, v78, v79);
        if (v84 > 0.0)
        {
          objc_msgSend_standardDeviationRoundtripTime(v25, v80, v81, v82, v83);
          v71 = v84;
        }

        *&v84 = v71;
        v85 = objc_msgSend_numberWithFloat_(v75, v80, v81, v82, v83, v84);
        v86 = MEMORY[0x277CCABB0];
        objc_msgSend_packetLossRate(v25, v87, v88, v89, v90);
        v96 = v95;
        v97 = 0.0;
        if (v96 > 0.0)
        {
          objc_msgSend_packetLossRate(v25, v91, v92, v93, v94, 0.0);
          *&v97 = v97;
        }

        v98 = objc_msgSend_numberWithFloat_(v86, v91, v92, v93, v94, v97);
        v99 = objc_alloc(MEMORY[0x277CBEAC0]);
        v103 = objc_msgSend_initWithObjectsAndKeys_(v99, v100, v36, v101, v102, @"AVPingTestMin", v61, @"AVPingTestMax", v74, @"AVPingTestAvg", v85, @"AVPingTestStdDeviation", v98, @"AVPingTestPacketLoss", 0);
        objc_msgSend__setPingTestResults_(chatCopy, v104, v103, v105, v106);
      }
    }

    else
    {
      v31 = 4;
    }
  }

  else
  {
    v31 = -1;
  }

  return v31;
}

@end