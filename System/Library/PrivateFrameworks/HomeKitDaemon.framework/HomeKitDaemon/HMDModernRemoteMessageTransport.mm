@interface HMDModernRemoteMessageTransport
+ (id)logCategory;
- (BOOL)canSendMessage:(id)message;
- (HMDDeviceResidencyProvider)residencyProvider;
- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d;
- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportTransport:(id)transport idsTransport:(id)idsTransport bleTransport:(id)bleTransport contextManager:(id)manager systemDateProvider:(id)provider idsDateProvider:(id)self0 timerProvider:(id)self1 timerManager:(id)self2 isWatch:(BOOL)self3 featuresDataSource:(id)self4;
- (id)start;
- (uint64_t)_contextUsesAllTransports:(void *)transports;
- (uint64_t)_isResidentToResidentMessage:(void *)message;
- (uint64_t)_sendOverRemainingTransportForContext:(void *)context;
- (void)_deviceReachabilityForContext:(uint64_t)context isReachable:;
- (void)_handleCompletionOnTransport:(void *)transport context:(void *)context error:;
- (void)_notifyDeviceReachabilityForDestination:(uint64_t)destination isReachable:;
- (void)_receivedMessage:(void *)message onTransport:;
- (void)_respondWithError:(void *)error completionHandler:(void *)handler error:;
- (void)_sendMessageOverTransport:(void *)transport forContext:;
- (void)_startFallbackTimerForContext:(void *)context fallbackTransport:(void *)transport withTimeout:(void *)timeout;
- (void)configureWithHomeMembershipVerifier:(id)verifier;
- (void)configureWithRemoteMessageListener:(id)listener;
- (void)messageTransport:(id)transport didReceiveMessage:(id)message;
- (void)sendMessage:(id)message completionHandler:(id)handler;
- (void)timerManager:(id)manager didFireForTimerContext:(id)context;
- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable;
- (void)updateMessagePayloadWithSystemTimeExpiry:(id)expiry idsTimeNow:(double)now systemTimeNow:(double)timeNow;
@end

@implementation HMDModernRemoteMessageTransport

+ (id)logCategory
{
  if (logCategory__hmf_once_t64 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t64, &__block_literal_global_189341);
  }

  v3 = logCategory__hmf_once_v65;

  return v3;
}

- (HMDDeviceResidencyProvider)residencyProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_residencyProvider);

  return WeakRetained;
}

- (void)configureWithRemoteMessageListener:(id)listener
{
  listenerCopy = listener;
  v4 = self->_rapportTransport;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [(HMDRemoteMessageTransport *)v6 setRemoteMessageListener:listenerCopy];
  }
}

- (void)configureWithHomeMembershipVerifier:(id)verifier
{
  v5.receiver = self;
  v5.super_class = HMDModernRemoteMessageTransport;
  verifierCopy = verifier;
  [(HMDRemoteMessageTransport *)&v5 configureWithHomeMembershipVerifier:verifierCopy];
  [(HMDRemoteMessageTransport *)self->_rapportTransport configureWithHomeMembershipVerifier:verifierCopy, v5.receiver, v5.super_class];
  [(HMDRemoteMessageTransport *)self->_idsTransport configureWithHomeMembershipVerifier:verifierCopy];
}

- (void)transport:(id)transport idsIdentifier:(id)identifier didAppearReachable:(BOOL)reachable
{
  if (reachable)
  {
    identifierCopy = identifier;
    reachabilityDelegate = [(HMDRemoteMessageTransport *)self reachabilityDelegate];
    [reachabilityDelegate transport:self idsIdentifier:identifierCopy didAppearReachable:1];
  }
}

- (void)messageTransport:(id)transport didReceiveMessage:(id)message
{
  transportCopy = transport;
  messageCopy = message;
  workQueue = [(HMDModernRemoteMessageTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDModernRemoteMessageTransport_messageTransport_didReceiveMessage___block_invoke;
  block[3] = &unk_27868A010;
  block[4] = self;
  v12 = messageCopy;
  v13 = transportCopy;
  v9 = transportCopy;
  v10 = messageCopy;
  dispatch_async(workQueue, block);
}

- (void)_receivedMessage:(void *)message onTransport:
{
  v201 = *MEMORY[0x277D85DE8];
  v5 = a2;
  messageCopy = message;
  if (self)
  {
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    v8 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    v193 = v10;
    if (v10)
    {
      v11 = v8;
      v12 = messageCopy;
      headers = [(HMDAssertionLogEvent *)v11 headers];
      timeToLiveHeaderKey = [objc_opt_class() timeToLiveHeaderKey];
      v15 = [headers hmf_numberForKey:timeToLiveHeaderKey];
      [v15 doubleValue];
      v17 = v16;

      if (*&v17 < 2.22044605e-16 || ([objc_opt_class() requestStartTimeHeaderKey], v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(headers, "hmf_numberForKey:", v18), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "doubleValue"), v21 = v20, v19, v18, objc_msgSend(self, "idsDateProvider"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "timeIntervalSince1970"), v24 = v23, v22, v25 = vabdd_f64(v24, v21), v25 < *&v17) || (objc_msgSend(self, "systemDateProvider"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "timeIntervalSince1970"), v28 = v27, v26, vabdd_f64(v28, v21) < *&v17))
      {

        v29 = v12;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        v31 = v30;

        identifier = [(HMDAssertionLogEvent *)v11 identifier];
        v192 = identifier;
        if (identifier)
        {
          v33 = identifier;
          destination = [(HMDAssertionLogEvent *)v11 destination];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v35 = destination;
          }

          else
          {
            v35 = 0;
          }

          v36 = v35;

          device = [(HMDAssertionLogEvent *)v36 device];
          isCurrentDevice = [device isCurrentDevice];

          if (isCurrentDevice)
          {
            v39 = objc_autoreleasePoolPush();
            selfCopy = self;
            v41 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
            {
              HMFGetLogIdentifier();
              v43 = v42 = messageCopy;
              name = [(HMDAssertionLogEvent *)v31 name];
              *buf = 138543874;
              *&buf[4] = v43;
              *&buf[12] = 2114;
              *&buf[14] = name;
              *&buf[22] = 2112;
              v196 = v11;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_FAULT, "%{public}@Received invalid %{public}@ message %@, message is from ourselves", buf, 0x20u);

              messageCopy = v42;
            }

            objc_autoreleasePoolPop(v39);
          }

          else
          {
            v189 = messageCopy;
            v190 = v5;
            v54 = v33;
            messageIDDedupeBuffer = [self messageIDDedupeBuffer];
            v56 = [messageIDDedupeBuffer containsObject:v54];

            if ((v56 & 1) == 0)
            {
              messageIDDedupeBuffer2 = [self messageIDDedupeBuffer];
              v58 = [messageIDDedupeBuffer2 count];

              if (v58 >= 0x64)
              {
                messageIDDedupeBuffer3 = [self messageIDDedupeBuffer];
                [messageIDDedupeBuffer3 removeObjectAtIndex:0];
              }

              messageIDDedupeBuffer4 = [self messageIDDedupeBuffer];
              [messageIDDedupeBuffer4 addObject:v54];
            }

            v61 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v63 = HMFGetOSLogHandle();
            v64 = v63;
            if (!v56)
            {
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v69 = HMFGetLogIdentifier();
                name2 = [(HMDAssertionLogEvent *)v31 name];
                *buf = 138543874;
                *&buf[4] = v69;
                *&buf[12] = 2114;
                *&buf[14] = name2;
                *&buf[22] = 2112;
                v196 = v11;
                _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_DEFAULT, "%{public}@Received message over %{public}@: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v61);
              v71 = objc_autoreleasePoolPush();
              v72 = selfCopy2;
              v73 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
              {
                v74 = HMFGetLogIdentifier();
                shortDescription = [(HMDAssertionLogEvent *)v11 shortDescription];
                messagePayload = [(HMDAssertionLogEvent *)v11 messagePayload];
                *buf = 138543875;
                *&buf[4] = v74;
                *&buf[12] = 2114;
                *&buf[14] = shortDescription;
                *&buf[22] = 2113;
                v196 = messagePayload;
                _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_DEBUG, "%{public}@Received message %{public}@ with payload: %{private}@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v71);
              v68 = v193;
              destination2 = [v193 destination];
              [(HMDModernRemoteMessageTransport *)v72 _notifyDeviceReachabilityForDestination:destination2 isReachable:1];

              if ([v193 type])
              {
                if ([v193 type] == 1)
                {
                  v185 = v72;
                  v78 = v193;
                  v79 = v29;
                  transactionIdentifier = [v78 transactionIdentifier];
                  messageCopy = v189;
                  v5 = v190;
                  v183 = transactionIdentifier;
                  if (transactionIdentifier)
                  {
                    v81 = transactionIdentifier;
                    v181 = v79;
                    contextManager = [v185 contextManager];
                    v83 = [contextManager contextForIdentifier:v81];

                    v182 = v83;
                    if (v83)
                    {
                      v84 = v78;
                      userInfo = [v84 userInfo];
                      v86 = [userInfo objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

                      if (v86)
                      {
                        v87 = MEMORY[0x277CCAAC8];
                        v88 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
                        location = 0;
                        v89 = [v87 _strictlyUnarchivedObjectOfClasses:v88 fromData:v86 error:&location];
                        v90 = location;

                        if (!v89)
                        {
                          v91 = objc_autoreleasePoolPush();
                          v92 = v185;
                          v93 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                          {
                            HMFGetLogIdentifier();
                            v94 = v178 = v91;
                            [v84 identifier];
                            v96 = v95 = v78;
                            *buf = 138543874;
                            *&buf[4] = v94;
                            *&buf[12] = 2114;
                            *&buf[14] = v96;
                            *&buf[22] = 2112;
                            v196 = v90;
                            _os_log_impl(&dword_229538000, v93, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize response error for message %{public}@ with error: %@", buf, 0x20u);

                            v78 = v95;
                            v91 = v178;
                          }

                          objc_autoreleasePoolPop(v91);
                          v89 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v90];
                        }

                        messageCopy = v189;
                      }

                      else
                      {
                        v89 = 0;
                      }

                      v180 = v78;

                      v139 = v84;
                      v140 = v89;
                      v141 = v182;
                      if (-[HMDAssertionLogEvent isHMFError](v140, "isHMFError") && -[HMDAssertionLogEvent code](v140, "code") == 14 && ([v141 destination], v142 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v142, (isKindOfClass & 1) != 0) && v142)
                      {
                        v144 = objc_autoreleasePoolPush();
                        v145 = v185;
                        v146 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v146, OS_LOG_TYPE_INFO))
                        {
                          v147 = HMFGetLogIdentifier();
                          identifier2 = [v139 identifier];
                          [v141 messageID];
                          v149 = v187 = v144;
                          *buf = 138544130;
                          *&buf[4] = v147;
                          *&buf[12] = 2114;
                          *&buf[14] = identifier2;
                          *&buf[22] = 2112;
                          v196 = v140;
                          *v197 = 2114;
                          *&v197[2] = v149;
                          _os_log_impl(&dword_229538000, v146, OS_LOG_TYPE_INFO, "%{public}@Ignoring response message %{public}@ with error: %@, for request %{public}@", buf, 0x2Au);

                          v144 = v187;
                          messageCopy = v189;
                        }

                        objc_autoreleasePoolPop(v144);
                        v150 = v140;
                      }

                      else
                      {

                        v151 = v181;
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v152 = v151;
                        }

                        else
                        {
                          v152 = 0;
                        }

                        v153 = v152;

                        v179 = v153;
                        [v141 receivedResponseOverTransport:v153 withError:v140];
                        v154 = objc_autoreleasePoolPush();
                        v155 = v185;
                        v156 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                        {
                          v157 = HMFGetLogIdentifier();
                          messageID = [v141 messageID];
                          *buf = 138543618;
                          *&buf[4] = v157;
                          *&buf[12] = 2114;
                          *&buf[14] = messageID;
                          _os_log_impl(&dword_229538000, v156, OS_LOG_TYPE_DEFAULT, "%{public}@Received response for message %{public}@", buf, 0x16u);
                        }

                        objc_autoreleasePoolPop(v154);
                        featuresDataSource = [v155 featuresDataSource];
                        isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

                        if (isTransportRetryEnabled)
                        {
                          v161 = objc_autoreleasePoolPush();
                          v162 = v155;
                          v163 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
                          {
                            v164 = HMFGetLogIdentifier();
                            [v141 messageID];
                            v165 = v188 = v161;
                            *buf = 138543618;
                            *&buf[4] = v164;
                            *&buf[12] = 2112;
                            *&buf[14] = v165;
                            _os_log_impl(&dword_229538000, v163, OS_LOG_TYPE_DEFAULT, "%{public}@Stop retrying for message %@", buf, 0x16u);

                            v161 = v188;
                          }

                          objc_autoreleasePoolPop(v161);
                          [v141 setKeepRetrying:0];
                        }

                        v166 = MEMORY[0x277CBEB38];
                        messagePayload2 = [v139 messagePayload];
                        v150 = [v166 dictionaryWithDictionary:messagePayload2];

                        userInfo2 = [v139 userInfo];
                        v169 = [userInfo2 objectForKeyedSubscript:@"kIDSMessageSourceIDKey"];
                        [v150 setObject:v169 forKeyedSubscript:@"kIDSMessageSourceIDKey"];

                        [v150 setObject:v140 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
                        v139 = v179;
                        v170 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v179, "transportType")}];
                        [v150 setObject:v170 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

                        [v150 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kRemoteMessageIsModernTransportUsedKey"];
                        v171 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v155, "isRapportLinkSlow")}];
                        [v150 setObject:v171 forKeyedSubscript:@"kRemoteMessageIsRapportLinkSlowKey"];

                        contextManager2 = [v155 contextManager];
                        options = [v141 options];
                        [contextManager2 completeContext:v141 withPayload:v150 error:v140 isFinal:{objc_msgSend(options, "expectsMultipleResponses") ^ 1}];

                        v141 = contextManager2;
                        messageCopy = v189;
                      }

                      v5 = v190;
                      v68 = v193;
                      v78 = v180;
                      v79 = v181;
                      v132 = v183;
                    }

                    else
                    {
                      v133 = objc_autoreleasePoolPush();
                      v134 = v185;
                      v135 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v135, OS_LOG_TYPE_INFO))
                      {
                        v136 = HMFGetLogIdentifier();
                        [v78 identifier];
                        v138 = v137 = v78;
                        *buf = 138543618;
                        *&buf[4] = v136;
                        *&buf[12] = 2114;
                        *&buf[14] = v138;
                        _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_INFO, "%{public}@Could not find the context and dropping message %{public}@", buf, 0x16u);

                        v78 = v137;
                        v68 = v193;

                        messageCopy = v189;
                      }

                      objc_autoreleasePoolPop(v133);
                      v132 = v183;
                    }
                  }

                  else
                  {
                    v126 = objc_autoreleasePoolPush();
                    v127 = v185;
                    v128 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                    {
                      v129 = HMFGetLogIdentifier();
                      [v78 identifier];
                      v131 = v130 = v78;
                      *buf = 138543618;
                      *&buf[4] = v129;
                      *&buf[12] = 2114;
                      *&buf[14] = v131;
                      _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_ERROR, "%{public}@Received a response message %{public}@ without a transaction identifier", buf, 0x16u);

                      v78 = v130;
                      v68 = v193;

                      messageCopy = v189;
                    }

                    objc_autoreleasePoolPop(v126);
                    v132 = 0;
                  }

                  goto LABEL_32;
                }

                delegate = [v72 delegate];
                [delegate messageTransport:v72 didReceiveMessage:v193];
              }

              else
              {
                idsDateProvider = [v72 idsDateProvider];
                [idsDateProvider timeIntervalSince1970];
                v109 = v108;
                HMFUptime();
                [v72 updateMessagePayloadWithSystemTimeExpiry:v193 idsTimeNow:v109 systemTimeNow:v110];

                v111 = v193;
                name3 = [v111 name];
                identifier3 = [v111 identifier];
                destination3 = [v111 destination];
                transactionIdentifier2 = [v111 transactionIdentifier];
                toID = [v111 toID];
                qualityOfService = [v111 qualityOfService];
                v117 = v72;
                v186 = v72;
                responseRestriction = [v111 responseRestriction];

                objc_initWeak(&location, v117);
                *buf = MEMORY[0x277D85DD0];
                *&buf[8] = 3221225472;
                *&buf[16] = __69__HMDModernRemoteMessageTransport__responseHandlerForRequestMessage___block_invoke;
                v196 = &unk_27867E028;
                objc_copyWeak(&v199, &location);
                *v197 = name3;
                *&v197[8] = destination3;
                *&v200[6] = qualityOfService;
                *&v200[14] = responseRestriction;
                *&v197[16] = transactionIdentifier2;
                *&v197[24] = toID;
                v198 = identifier3;
                v119 = identifier3;
                v120 = toID;
                v121 = transactionIdentifier2;
                v122 = destination3;
                v123 = name3;
                v124 = _Block_copy(buf);

                v68 = v193;
                objc_destroyWeak(&v199);
                objc_destroyWeak(&location);
                [v111 setInternalResponseHandler:v124];

                delegate = [v186 delegate];
                [delegate messageTransport:v186 didReceiveMessage:v111];
              }

              messageCopy = v189;
              v5 = v190;
LABEL_32:

LABEL_33:
              goto LABEL_34;
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
            {
              v65 = HMFGetLogIdentifier();
              identifier4 = [(HMDAssertionLogEvent *)v11 identifier];
              name4 = [(HMDAssertionLogEvent *)v31 name];
              *buf = 138543874;
              *&buf[4] = v65;
              *&buf[12] = 2114;
              *&buf[14] = identifier4;
              *&buf[22] = 2114;
              v196 = name4;
              _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Dropping duplicate message %{public}@ received on %{public}@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v61);
            messageCopy = v189;
            v5 = v190;
          }
        }

        else
        {
          v45 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v47 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            HMFGetLogIdentifier();
            v49 = v48 = messageCopy;
            name5 = [(HMDAssertionLogEvent *)v31 name];
            *buf = 138543874;
            *&buf[4] = v49;
            *&buf[12] = 2112;
            *&buf[14] = name5;
            *&buf[22] = 2112;
            v196 = v11;
            _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received invalid %@ message %@, No Identifier", buf, 0x20u);

            messageCopy = v48;
          }

          objc_autoreleasePoolPop(v45);
          v51 = [HMDAssertionLogEvent alloc];
          name6 = [(HMDAssertionLogEvent *)v31 name];
          v36 = [(HMDAssertionLogEvent *)v51 initWithReason:@"Received invalid %@ message %@, No Identifier", name6, v11];

          v53 = +[HMDMetricsManager sharedLogEventSubmitter];
          [v53 submitLogEvent:v36];
        }

        v68 = v193;
        goto LABEL_32;
      }

      v97 = v12;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v98 = v97;
      }

      else
      {
        v98 = 0;
      }

      v99 = v98;
      v192 = v97;

      v100 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v102 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        v103 = HMFGetLogIdentifier();
        [(HMDAssertionLogEvent *)v11 identifier];
        v104 = v191 = v5;
        [v99 name];
        v106 = v105 = messageCopy;
        *buf = 138545410;
        *&buf[4] = v103;
        *&buf[12] = 2114;
        *&buf[14] = v104;
        *&buf[22] = 2114;
        v196 = v106;
        *v197 = 2050;
        *&v197[2] = v24;
        *&v197[10] = 2050;
        *&v197[12] = v28;
        *&v197[20] = 2050;
        *&v197[22] = v21;
        *&v197[30] = 2050;
        v198 = v17;
        v199 = 2050;
        *v200 = v25;
        *&v200[8] = 2050;
        *&v200[10] = v24 - v28;
        _os_log_impl(&dword_229538000, v102, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message %{public}@ received on %{public}@ outside its TTL: IDS time now = %{public}f, system time now = %{public}f, sent = %{public}f, ttl = %{public}f, IDS time delta = %{public}f, drift = %{public}f", buf, 0x5Cu);

        messageCopy = v105;
        v5 = v191;
      }

      objc_autoreleasePoolPop(v100);
      v31 = v11;
    }

    else
    {
      v174 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v176 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v176, OS_LOG_TYPE_FAULT))
      {
        v177 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v177;
        _os_log_impl(&dword_229538000, v176, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received message that is not HMDRemoteMessage.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v174);
      v31 = [[HMDAssertionLogEvent alloc] initWithReason:@"Received message that is not HMDRemoteMessage."];
      v192 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v192 submitLogEvent:v31];
    }

    v68 = v193;
    goto LABEL_33;
  }

LABEL_34:
}

- (void)_notifyDeviceReachabilityForDestination:(uint64_t)destination isReachable:
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      v12 = HMFBooleanToString();
      device = [v7 device];
      v17 = 138543874;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = device;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Reachability update - isReachable: %@, device: %@", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    reachabilityDelegate = [selfCopy reachabilityDelegate];
    device2 = [v7 device];
    idsIdentifier = [device2 idsIdentifier];
    [reachabilityDelegate transport:selfCopy idsIdentifier:idsIdentifier didAppearReachable:destination];
  }
}

void __69__HMDModernRemoteMessageTransport__responseHandlerForRequestMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = [[HMDRemoteMessage alloc] initWithName:*(a1 + 32) qualityOfService:*(a1 + 80) destination:*(a1 + 40) payload:v6 type:1 timeout:1 secure:0.0 restriction:*(a1 + 88)];
  [(HMDRemoteMessage *)v8 setTransactionIdentifier:*(a1 + 48)];
  [(HMDRemoteMessage *)v8 setToID:*(a1 + 56)];
  v9 = [(HMDRemoteMessage *)v8 userInfo];
  v10 = [v9 mutableCopy];

  if (v5)
  {
    v11 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:0];
    [v10 setObject:v11 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
  }

  v12 = [(HMDRemoteMessage *)v8 internal];
  [v12 setUserInfo:v10];

  v13 = objc_autoreleasePoolPush();
  v14 = WeakRetained;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = HMFGetLogIdentifier();
    v17 = *(a1 + 64);
    v18 = [(HMFObject *)v8 shortDescription];
    *buf = 138543874;
    v20 = v16;
    v21 = 2114;
    v22 = v17;
    v23 = 2114;
    v24 = v18;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Sending response for message %{public}@ using message: %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  [v14 sendMessage:v8 completionHandler:0];
}

- (void)updateMessagePayloadWithSystemTimeExpiry:(id)expiry idsTimeNow:(double)now systemTimeNow:(double)timeNow
{
  v57 = *MEMORY[0x277D85DE8];
  expiryCopy = expiry;
  name = [expiryCopy name];
  if (([name isEqualToString:@"kCharacteristicReadRequestKey"] & 1) == 0)
  {
    name2 = [expiryCopy name];
    if (([name2 isEqualToString:@"kMultipleCharacteristicReadRequestKey"] & 1) == 0)
    {
      name3 = [expiryCopy name];
      if (![name3 isEqualToString:@"kCharacteristicWriteRequestKey"])
      {
        name4 = [expiryCopy name];
        v42 = [name4 isEqualToString:@"kMultipleCharacteristicWriteRequestKey"];

        if ((v42 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_7:
  headers = [expiryCopy headers];
  timeToLiveHeaderKey = [objc_opt_class() timeToLiveHeaderKey];
  v14 = [headers hmf_numberForKey:timeToLiveHeaderKey];
  [v14 doubleValue];
  v16 = v15;

  if (v16 >= 2.22044605e-16)
  {
    requestStartTimeHeaderKey = [objc_opt_class() requestStartTimeHeaderKey];
    v22 = [headers hmf_numberForKey:requestStartTimeHeaderKey];
    [v22 doubleValue];
    v24 = v23;

    v25 = vabdd_f64(now, v24);
    v26 = vabdd_f64(timeNow, v25);
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      v43 = 138544898;
      v44 = v30;
      v45 = 2048;
      nowCopy = now;
      v47 = 2048;
      v48 = v25;
      v49 = 2048;
      timeNowCopy = timeNow;
      v51 = 2048;
      v52 = v26;
      v53 = 2048;
      v54 = v16;
      v55 = 2048;
      v56 = v16 + v26;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_INFO, "%{public}@IDSTimeNow: %0.4f, IDSCommunicationDelta: %0.4f, systemTimeNow: %0.4f, requestStartTime: %0.4f, requestTTL: %0.4f, requestExpiry: %0.4f", &v43, 0x48u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = MEMORY[0x277CBEB38];
    messagePayload = [expiryCopy messagePayload];
    v33 = [v31 dictionaryWithDictionary:messagePayload];

    v34 = [MEMORY[0x277CCABB0] numberWithDouble:v16 + v26];
    [v33 setObject:v34 forKeyedSubscript:@"kRemoteMessageRequestExpiryKey"];

    [expiryCopy setMessagePayload:v33];
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      [expiryCopy name];
      v39 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      messagePayload2 = [expiryCopy messagePayload];
      v43 = 138543874;
      v44 = v38;
      v45 = 2112;
      nowCopy = v39;
      v47 = 2112;
      v48 = *&messagePayload2;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@Message name: %@, updated messagePayload: %@", &v43, 0x20u);
    }

    objc_autoreleasePoolPop(v35);
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v43 = 138543362;
      v44 = v20;
      _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_ERROR, "%{public}@Invalid TTL value", &v43, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
  }

LABEL_17:
}

- (void)timerManager:(id)manager didFireForTimerContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  object = [context object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  v28 = v6;

  if (v28)
  {
    v7 = [v28 objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    contextManager = [(HMDModernRemoteMessageTransport *)self contextManager];
    v11 = [contextManager contextForIdentifier:v9];

    v12 = [v28 objectAtIndexedSubscript:1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    if (v11)
    {
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (!v15)
    {
      v16 = v14;
      v17 = v11;
      if (self)
      {
        v18 = objc_autoreleasePoolPush();
        selfCopy = self;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          messageID = [v17 messageID];
          *buf = 138543618;
          v30 = v21;
          v31 = 2112;
          v32 = messageID;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Retry timer fired for message %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        if ([v17 keepRetrying] && objc_msgSend(v17, "retriesRemainingForTransport:", v16))
        {
          [v17 decrementRetriesForTransport:v16];
          v23 = objc_autoreleasePoolPush();
          v24 = selfCopy;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = HMFGetLogIdentifier();
            messageID2 = [v17 messageID];
            *buf = 138543618;
            v30 = v26;
            v31 = 2112;
            v32 = messageID2;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Retrying for message: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          [(HMDModernRemoteMessageTransport *)v24 _sendMessageOverTransport:v16 forContext:v17];
        }
      }
    }
  }
}

- (void)_sendMessageOverTransport:(void *)transport forContext:
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  transportCopy = transport;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    messageID = [transportCopy messageID];
    name = [v5 name];
    *buf = 138543874;
    v57 = v10;
    v58 = 2114;
    v59 = messageID;
    v60 = 2114;
    v61 = name;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending message %{public}@ over %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  [v5 defaultTimeout];
  v14 = v13;
  [transportCopy timeoutRemaining];
  v16 = v15;
  remainingTransports = [transportCopy remainingTransports];
  if ([remainingTransports count] == 1)
  {
    remainingTransports2 = [transportCopy remainingTransports];
    v19 = [remainingTransports2 containsObject:v5];
  }

  else
  {
    v19 = 0;
  }

  if ((v19 & (v16 > 0.0)) != 0)
  {
    v14 = v16;
  }

  [transportCopy startSendingOverTransport:v5];
  if (v16 >= 0.0)
  {
    systemDateProvider = [selfCopy systemDateProvider];
    [systemDateProvider timeIntervalSince1970];
    v28 = v27;

    objc_initWeak(&location, selfCopy);
    objc_initWeak(&from, transportCopy);
    v46 = MEMORY[0x277D85DD0];
    v47 = 3221225472;
    v48 = __72__HMDModernRemoteMessageTransport__sendMessageOverTransport_forContext___block_invoke;
    v49 = &unk_27867DFD8;
    objc_copyWeak(&v51, &location);
    objc_copyWeak(v52, &from);
    v29 = v5;
    v50 = v29;
    v52[1] = v28;
    v30 = _Block_copy(&v46);
    featuresDataSource = [selfCopy featuresDataSource];
    if ([featuresDataSource isTransportRetryEnabled])
    {
      v32 = [transportCopy retriesRemainingForTransport:v29] == 0;

      if (v32)
      {
LABEL_18:
        v45 = [transportCopy preparedMessageWithTimeout:v14];
        [v29 sendMessage:v45 completionHandler:v30];

        objc_destroyWeak(v52);
        objc_destroyWeak(&v51);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);
        goto LABEL_19;
      }

      v33 = objc_autoreleasePoolPush();
      v34 = selfCopy;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = HMFGetLogIdentifier();
        [v29 retryInterval];
        v38 = v37;
        messageID2 = [transportCopy messageID];
        *buf = 138543874;
        v57 = v36;
        v58 = 2048;
        v59 = v38;
        v60 = 2112;
        v61 = messageID2;
        _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@Starting a %.2g-second retry timer for message: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v33);
      featuresDataSource = [v34 timerManager];
      [v29 retryInterval];
      v41 = v40;
      identifier = [transportCopy identifier];
      v55[0] = identifier;
      v55[1] = v29;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
      v44 = [featuresDataSource startTimerWithTimeInterval:v43 object:v41];
    }

    goto LABEL_18;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = selfCopy;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    messageID3 = [transportCopy messageID];
    *buf = 138543618;
    v57 = v23;
    v58 = 2114;
    v59 = messageID3;
    _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Cannot send message %{public}@ because we exceeded the message timeout", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
  v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:@"Message timed out" reason:@"Message already expired before being able to send" suggestion:0];
  [(HMDModernRemoteMessageTransport *)v21 _handleCompletionOnTransport:v5 context:transportCopy error:v25];

LABEL_19:
}

- (void)_handleCompletionOnTransport:(void *)transport context:(void *)context error:
{
  v50 = *MEMORY[0x277D85DE8];
  v7 = a2;
  transportCopy = transport;
  contextCopy = context;
  if (!self)
  {
    goto LABEL_23;
  }

  workQueue = [self workQueue];
  dispatch_assert_queue_V2(workQueue);

  contextManager = [self contextManager];
  identifier = [transportCopy identifier];
  v13 = [contextManager contextForIdentifier:identifier];

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      messageID = [transportCopy messageID];
      name = [v7 name];
      v42 = 138544130;
      v43 = v18;
      v44 = 2114;
      v45 = messageID;
      v46 = 2114;
      v47 = name;
      v48 = 2112;
      v49 = contextCopy;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ over %{public}@ completed with error: %@", &v42, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    if (!contextCopy)
    {
      [transportCopy completeSendingOverTransport:v7 withError:0];
      if ([transportCopy expectsResponse])
      {
        goto LABEL_23;
      }

      v31 = objc_autoreleasePoolPush();
      v32 = selfCopy;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = HMFGetLogIdentifier();
        messageID2 = [transportCopy messageID];
        v42 = 138543618;
        v43 = v34;
        v44 = 2114;
        v45 = messageID2;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Successfully sent message %{public}@ that does not expect a response", &v42, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
      goto LABEL_22;
    }

    if ([contextCopy code] != 3204)
    {
      [transportCopy completeSendingOverTransport:v7 withError:contextCopy];
    }

    if (([transportCopy didSucceedSending] & 1) == 0)
    {
      inProgressTransports = [transportCopy inProgressTransports];
      v22 = [inProgressTransports count];

      if (!v22 && ([(HMDModernRemoteMessageTransport *)selfCopy _sendOverRemainingTransportForContext:transportCopy]& 1) == 0)
      {
        if ([contextCopy code] == 3204)
        {
          localizedFailureReason = [contextCopy localizedFailureReason];
          v24 = objc_autoreleasePoolPush();
          v25 = selfCopy;
          v26 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = HMFGetLogIdentifier();
            messageID3 = [transportCopy messageID];
            v42 = 138543874;
            v43 = v27;
            v44 = 2114;
            v45 = messageID3;
            v46 = 2114;
            v47 = localizedFailureReason;
            _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send multicast message %{public}@ to destination %{public}@", &v42, 0x20u);
          }

          objc_autoreleasePoolPop(v24);
          goto LABEL_23;
        }

        v37 = objc_autoreleasePoolPush();
        v38 = selfCopy;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = HMFGetLogIdentifier();
          messageID4 = [transportCopy messageID];
          v42 = 138543874;
          v43 = v40;
          v44 = 2114;
          v45 = messageID4;
          v46 = 2112;
          v47 = contextCopy;
          _os_log_impl(&dword_229538000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message %{public}@ with error: %@", &v42, 0x20u);
        }

        objc_autoreleasePoolPop(v37);
        if ([(HMDModernRemoteMessageTransport *)v38 _contextUsesAllTransports:transportCopy])
        {
          [(HMDModernRemoteMessageTransport *)v38 _deviceReachabilityForContext:transportCopy isReachable:0];
        }

LABEL_22:
        contextManager2 = [selfCopy contextManager];
        [contextManager2 completeContext:transportCopy withPayload:0 error:contextCopy isFinal:1];
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v29 = HMFGetLogIdentifier();
      identifier2 = [transportCopy identifier];
      v42 = 138543618;
      v43 = v29;
      v44 = 2114;
      v45 = identifier2;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Context not found for identifier %{public}@", &v42, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
  }

LABEL_23:
}

void __72__HMDModernRemoteMessageTransport__sendMessageOverTransport_forContext___block_invoke(uint64_t a1, void *a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 48));
    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 56);
      v9 = v5;
      v10 = v7;
      v11 = v3;
      v12 = [WeakRetained featuresDataSource];
      v13 = [v12 isTransportRetryEnabled];
      if (v11 || !v13)
      {
      }

      else
      {
        v14 = [v9 expectsResponse];

        if ((v14 & 1) == 0)
        {
          context = objc_autoreleasePoolPush();
          v15 = WeakRetained;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = HMFGetLogIdentifier();
            v18 = [v9 messageID];
            *buf = 138543618;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Completed sending without error, no response coming: stop retrying for message %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(context);
          [v9 setKeepRetrying:0];
        }
      }

      objc_initWeak(&location, v9);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __97__HMDModernRemoteMessageTransport__completeMessageForContext_onTransport_whichStarted_withError___block_invoke;
      v31 = &unk_27867E000;
      objc_copyWeak(v35, &location);
      v32 = WeakRetained;
      v24 = v10;
      v33 = v24;
      v35[1] = v8;
      v25 = v11;
      v34 = v25;
      v26 = _Block_copy(buf);
      v27 = [WeakRetained workQueue];
      dispatch_async(v27, v26);

      objc_destroyWeak(v35);
      objc_destroyWeak(&location);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = WeakRetained;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [0 identifier];
        *buf = 138543618;
        *&buf[4] = v22;
        *&buf[12] = 2114;
        *&buf[14] = v23;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Context was already released for identifier %{public}@ completed on transport", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
    }
  }
}

void __97__HMDModernRemoteMessageTransport__completeMessageForContext_onTransport_whichStarted_withError___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) rapportTransport];

    if (v3 == v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 64);
      v7 = *(a1 + 48);
      v8 = WeakRetained;
      v9 = v7;
      v10 = v9;
      if (v5)
      {
        if (v9)
        {
          [v5 setRapportLinkSlow:1];
        }

        else
        {
          v16 = [v5 systemDateProvider];
          [v16 timeIntervalSince1970];
          v18 = v17 - v6;

          v19 = objc_autoreleasePoolPush();
          v20 = v5;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
          {
            v22 = HMFGetLogIdentifier();
            v23 = [v8 messageID];
            v24 = 138543874;
            v25 = v22;
            v26 = 2114;
            v27 = v23;
            v28 = 2048;
            v29 = (v18 * 1000.0);
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Rapport response for message %{public}@ received in %lu ms", &v24, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          [v20 setRapportLinkSlow:v18 > 0.2];
          [(HMDModernRemoteMessageTransport *)v20 _deviceReachabilityForContext:v8 isReachable:1];
        }
      }
    }

    [(HMDModernRemoteMessageTransport *)*(a1 + 32) _handleCompletionOnTransport:WeakRetained context:*(a1 + 48) error:?];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [0 identifier];
      v24 = 138543618;
      v25 = v14;
      v26 = 2114;
      v27 = v15;
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Context was already released for identifier %{public}@ completed", &v24, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)_deviceReachabilityForContext:(uint64_t)context isReachable:
{
  v7 = a2;
  options = [v7 options];
  if ([options isTrackingDeviceReachability])
  {
    didNotifyDeviceReachability = [v7 didNotifyDeviceReachability];

    if (didNotifyDeviceReachability)
    {
      goto LABEL_5;
    }

    [v7 setDidNotifyDeviceReachability:1];
    options = [v7 destination];
    [(HMDModernRemoteMessageTransport *)self _notifyDeviceReachabilityForDestination:options isReachable:context];
  }

LABEL_5:
}

- (uint64_t)_sendOverRemainingTransportForContext:(void *)context
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  remainingTransports = [v3 remainingTransports];
  idsTransport = [context idsTransport];
  v6 = [remainingTransports containsObject:idsTransport];

  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    contextCopy = context;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      messageID = [v3 messageID];
      v25 = 138543618;
      v26 = v10;
      v27 = 2114;
      v28 = messageID;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to ids transport for message %{public}@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    idsTransport2 = [contextCopy idsTransport];
    [(HMDModernRemoteMessageTransport *)contextCopy _sendMessageOverTransport:idsTransport2 forContext:v3];

    bleTransport = [contextCopy bleTransport];
    if (bleTransport)
    {
      v14 = bleTransport;
      remainingTransports2 = [v3 remainingTransports];
      bleTransport2 = [contextCopy bleTransport];
      v17 = [remainingTransports2 containsObject:bleTransport2];

      if (v17)
      {
        v18 = objc_autoreleasePoolPush();
        v19 = contextCopy;
        v20 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = HMFGetLogIdentifier();
          messageID2 = [v3 messageID];
          v25 = 138543618;
          v26 = v21;
          v27 = 2114;
          v28 = messageID2;
          _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to BLE transport for message %{public}@", &v25, 0x16u);
        }

        objc_autoreleasePoolPop(v18);
        bleTransport3 = [v19 bleTransport];
        [(HMDModernRemoteMessageTransport *)v19 _sendMessageOverTransport:bleTransport3 forContext:v3];
      }
    }
  }

  return v6;
}

- (uint64_t)_contextUsesAllTransports:(void *)transports
{
  v3 = a2;
  if (([transports isWatch] & 1) != 0 || (objc_msgSend(v3, "options"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "transports"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(transports, "rapportTransport"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "containsObject:", v6), v6, v5, v4, v7))
  {
    options = [v3 options];
    transports = [options transports];
    idsTransport = [transports idsTransport];
    v11 = [transports containsObject:idsTransport];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)sendMessage:(id)message completionHandler:(id)handler
{
  v25 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v8 = messageCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    if (![(HMDModernRemoteMessageTransport *)self isStarted])
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        identifier = [v10 identifier];
        *buf = 138543618;
        v22 = v14;
        v23 = 2114;
        v24 = identifier;
        _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_ERROR, "%{public}@Received request to send message %{public}@ before transport was started; message may fail", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
    }

    workQueue = [(HMDModernRemoteMessageTransport *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDModernRemoteMessageTransport_sendMessage_completionHandler___block_invoke;
    block[3] = &unk_278689F98;
    block[4] = self;
    v19 = v10;
    v20 = handlerCopy;
    dispatch_async(workQueue, block);
  }

  else
  {
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter" reason:@"Not a remote message" suggestion:0];
    [(HMDModernRemoteMessageTransport *)self _respondWithError:v8 completionHandler:handlerCopy error:v17];
  }
}

- (void)_respondWithError:(void *)error completionHandler:(void *)handler error:
{
  v9 = a2;
  errorCopy = error;
  handlerCopy = handler;
  if (self)
  {
    if (errorCopy)
    {
      errorCopy[2](errorCopy, handlerCopy);
    }

    [v9 respondWithError:handlerCopy];
  }
}

void __65__HMDModernRemoteMessageTransport_sendMessage_completionHandler___block_invoke(uint64_t a1)
{
  v141 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v130 = *(a1 + 40);
  v129 = v2;
  if (v1)
  {
    v3 = [v1 workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = v130;
    v5 = [v1 requestID];

    if (v5 == @"com.apple.home.hh2.messaging.rid" && ([v4 qualityOfService], v6 = HMFQualityOfServiceCompare(), objc_msgSend(v4, "restriction") == -1))
    {
      v7 = @"NO";
      if ([(HMDModernRemoteMessageTransport *)v1 _isResidentToResidentMessage:v4]&& v6 == -1)
      {
        [v4 setRestriction:8];
        v81 = objc_autoreleasePoolPush();
        v82 = v1;
        v83 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          v84 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v84;
          *&buf[12] = 2112;
          *&buf[14] = v4;
          _os_log_impl(&dword_229538000, v83, OS_LOG_TYPE_DEBUG, "%{public}@Restricting resident to resident message %@ to Rapport only", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v81);
        v7 = @"YES";
      }
    }

    else
    {
      v7 = @"NO";
    }

    v123 = v7;
    v8 = v4;
    v9 = [MEMORY[0x277CBEB58] set];
    if (([v1 isWatch] & 1) == 0)
    {
      v10 = [v1 rapportTransport];
      v11 = [v10 canSendMessage:v8];

      if (v11)
      {
        v12 = [v1 rapportTransport];
        [v9 addObject:v12];
      }
    }

    v13 = [v1 idsTransport];
    v14 = [v13 canSendMessage:v8];

    if (v14)
    {
      v15 = [v1 idsTransport];
      [v9 addObject:v15];
    }

    v16 = [v1 featuresDataSource];
    if ([v16 isRapportOverBLEEnabled])
    {
      v17 = [v1 bleTransport];
      v18 = [v17 canSendMessage:v8];

      if (!v18)
      {
        goto LABEL_14;
      }

      v16 = [v1 bleTransport];
      [v9 addObject:v16];
    }

LABEL_14:
    v19 = objc_msgSend_copy(v9);

    v124 = v19;
    if (![v19 count])
    {
      v66 = objc_autoreleasePoolPush();
      v67 = v1;
      v68 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v69 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v69;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_229538000, v68, OS_LOG_TYPE_ERROR, "%{public}@Message %@ cannot be sent over modern transport", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v66);
      v70 = MEMORY[0x277CCA9B8];
      v46 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2031];
      v71 = [v70 hmErrorWithCode:2 description:@"Cannot be sent over Modern Transport" reason:@"Not supported by Modern Transport or there is no available transport" suggestion:0 underlyingError:v46];
      [(HMDModernRemoteMessageTransport *)v67 _respondWithError:v8 completionHandler:v129 error:v71];

      goto LABEL_57;
    }

    v20 = v8;
    v21 = [v20 responseHandler];

    if (v21 && [v20 type])
    {
      v115 = objc_autoreleasePoolPush();
      v116 = v1;
      v117 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v117, OS_LOG_TYPE_FAULT))
      {
        v118 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v118;
        _os_log_impl(&dword_229538000, v117, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Message expects a response but is not a request type. Remove the response handler or change the message type.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v115);
      v119 = [[HMDAssertionLogEvent alloc] initWithReason:@"Message expects a response but is not a request type. Remove the response handler or change the message type."];
      v120 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v120 submitLogEvent:v119];
    }

    v22 = v20;
    v23 = v124;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __96__HMDModernRemoteMessageTransport__createContextWithRemoteMessage_transports_completionHandler___block_invoke;
    v133 = &unk_27867DFB0;
    context = v22;
    *v134 = context;
    *&v134[8] = v1;
    v125 = v23;
    *&v134[16] = v125;
    v24 = v129;
    v25 = [HMDModernTransportMessageContextOptions newWithBuilder:buf];
    v26 = [v1 contextManager];
    v27 = [v1 idsDateProvider];
    v28 = [v1 timerProvider];
    v29 = [v26 createContextWithMessage:context options:v25 completionHandler:v24 dateProvider:v27 timerProvider:v28];

    v30 = objc_autoreleasePoolPush();
    v31 = v1;
    v32 = HMFGetOSLogHandle();
    v33 = v32;
    if (!v29)
    {
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v72 = HMFGetLogIdentifier();
        v73 = [context identifier];
        *buf = 138543618;
        *&buf[4] = v72;
        *&buf[12] = 2114;
        *&buf[14] = v73;
        _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, "%{public}@Failed to create context for message %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v74 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [(HMDModernRemoteMessageTransport *)v31 _respondWithError:v24 completionHandler:v74 error:?];

      v46 = 0;
      goto LABEL_57;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v31 rapportTransport];
      [v125 containsObject:v35];
      v36 = HMFBooleanToString();
      [v31 isRapportLinkSlow];
      v37 = HMFBooleanToString();
      v38 = [v31 idsTransport];
      [v125 containsObject:v38];
      v39 = HMFBooleanToString();
      *buf = 138544642;
      *&buf[4] = v34;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      *&buf[22] = 2114;
      v133 = v37;
      *v134 = 2114;
      *&v134[2] = v39;
      *&v134[10] = 2114;
      *&v134[12] = v123;
      *&v134[20] = 2112;
      *&v134[22] = context;
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Sending message over Rapport = %{public}@ (isSlow = %{public}@), IDS = %{public}@, Resident to Resident = %{public}@: %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v30);
    v40 = objc_autoreleasePoolPush();
    v41 = v31;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = HMFGetLogIdentifier();
      v44 = [context shortDescription];
      v45 = [context messagePayload];
      *buf = 138543875;
      *&buf[4] = v43;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      *&buf[22] = 2113;
      v133 = v45;
      _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Sending message %{public}@ with payload: %{private}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v40);
    v46 = v29;
    if ([v46 expectsResponse])
    {
      v47 = objc_autoreleasePoolPush();
      v48 = v41;
      v49 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        v50 = HMFGetLogIdentifier();
        v51 = [v46 messageID];
        [v46 timeout];
        *buf = 138543874;
        *&buf[4] = v50;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        *&buf[22] = 2048;
        v133 = v52;
        _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_INFO, "%{public}@Starting response timer for message %{public}@. Timeout is %.0f seconds", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v47);
      objc_initWeak(&location, v48);
      [v46 timeout];
      v54 = v53;
      v55 = [v48 workQueue];
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __65__HMDModernRemoteMessageTransport__startResponseTimerForContext___block_invoke;
      v133 = &unk_278686B48;
      objc_copyWeak(&v134[8], &location);
      *v134 = v46;
      [*v134 startResponseTimerWithTimeInterval:v55 queue:buf completionHandler:v54];

      objc_destroyWeak(&v134[8]);
      objc_destroyWeak(&location);
    }

    v56 = [v41 rapportTransport];
    v57 = [v125 containsObject:v56];

    if (!v57)
    {
      v75 = [v41 idsTransport];
      v76 = [v125 containsObject:v75];

      if (v76)
      {
        v77 = [v41 idsTransport];
        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v77 forContext:v46];
      }

      v78 = [v41 bleTransport];
      v79 = [v125 containsObject:v78];

      if (v79)
      {
        v80 = [v41 bleTransport];
        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v80 forContext:v46];
      }

      goto LABEL_57;
    }

    v58 = [v41 rapportTransport];
    [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v58 forContext:v46];

    v59 = [v41 rapportTransport];
    if ([v125 containsObject:v59])
    {
      v60 = [v41 idsTransport];
      if ([v125 containsObject:v60])
      {
        v61 = [context remoteDisallowsIDSRacing];

        if (v61)
        {
          goto LABEL_50;
        }

        v62 = [v41 isRapportLinkSlow];
        v63 = [v41 idsTransport];
        if (!v62)
        {
          [HMDModernRemoteMessageTransport _startFallbackTimerForContext:v41 fallbackTransport:v46 withTimeout:v63];

          v110 = objc_autoreleasePoolPush();
          v111 = v41;
          v112 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
          {
            v113 = HMFGetLogIdentifier();
            v114 = [context identifier];
            *buf = 138543618;
            *&buf[4] = v113;
            *&buf[12] = 2114;
            *&buf[14] = v114;
            _os_log_impl(&dword_229538000, v112, OS_LOG_TYPE_INFO, "%{public}@Starting Rapport to IDS fallback timer for message %{public}@ ", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v110);
          goto LABEL_57;
        }

        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v63 forContext:v46];

        v64 = [v41 bleTransport];
        v65 = [v125 containsObject:v64];

        if (!v65)
        {
LABEL_50:
          v85 = [v41 bleTransport];
          v86 = [v125 containsObject:v85];

          if (v86)
          {
            v87 = [v41 bleTransport];
            [HMDModernRemoteMessageTransport _startFallbackTimerForContext:v41 fallbackTransport:v46 withTimeout:v87];

            v88 = objc_autoreleasePoolPush();
            v89 = v41;
            v90 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
            {
              v91 = HMFGetLogIdentifier();
              v92 = [context identifier];
              *buf = 138543618;
              *&buf[4] = v91;
              *&buf[12] = 2114;
              *&buf[14] = v92;
              _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_INFO, "%{public}@Starting Rapport/IDS to BLE fallback timer for message %{public}@ ", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v88);
          }

          v93 = [v41 systemDateProvider];
          [v93 timeIntervalSince1970];
          v95 = v94;

          v96 = [v41 idsDateProvider];
          [v96 timeIntervalSince1970];
          v98 = v97;

          contexta = objc_autoreleasePoolPush();
          v99 = v41;
          v100 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
          {
            v122 = HMFGetLogIdentifier();
            v126 = [v46 messageID];
            v121 = [objc_opt_class() requestStartTimeHeaderKey];
            v101 = MEMORY[0x277CCABB0];
            [v46 requestStartTime];
            v102 = [v101 numberWithDouble:?];
            v103 = [objc_opt_class() timeToLiveHeaderKey];
            v104 = MEMORY[0x277CCABB0];
            v105 = [v46 options];
            [v105 timeToLive];
            v106 = [v104 numberWithDouble:?];
            v107 = [MEMORY[0x277CCABB0] numberWithDouble:v95];
            v108 = [MEMORY[0x277CCABB0] numberWithDouble:v98];
            v109 = [MEMORY[0x277CCABB0] numberWithDouble:v95 - v98];
            *buf = 138545410;
            *&buf[4] = v122;
            *&buf[12] = 2114;
            *&buf[14] = v126;
            *&buf[22] = 2114;
            v133 = v121;
            *v134 = 2114;
            *&v134[2] = v102;
            *&v134[10] = 2114;
            *&v134[12] = v103;
            *&v134[20] = 2114;
            *&v134[22] = v106;
            v135 = 2114;
            v136 = v107;
            v137 = 2114;
            v138 = v108;
            v139 = 2114;
            v140 = v109;
            _os_log_impl(&dword_229538000, v100, OS_LOG_TYPE_DEFAULT, "%{public}@Message %{public}@ sent with %{public}@ = %{public}@, %{public}@ = %{public}@. System Time: %{public}@, IDS Time: %{public}@, (System Time - IDS Time): %{public}@", buf, 0x5Cu);
          }

          objc_autoreleasePoolPop(contexta);
LABEL_57:

          goto LABEL_58;
        }

        v59 = [v41 bleTransport];
        [(HMDModernRemoteMessageTransport *)v41 _sendMessageOverTransport:v59 forContext:v46];
      }

      else
      {
      }
    }

    goto LABEL_50;
  }

LABEL_58:
}

- (void)_startFallbackTimerForContext:(void *)context fallbackTransport:(void *)transport withTimeout:(void *)timeout
{
  transportCopy = transport;
  timeoutCopy = timeout;
  remainingTransports = [transportCopy remainingTransports];
  v8 = [remainingTransports containsObject:timeoutCopy];

  if (v8)
  {
    idsTransport = [context idsTransport];
    v10 = idsTransport;
    if (idsTransport != timeoutCopy)
    {

LABEL_5:
      objc_initWeak(&location, context);
      workQueue = [context workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __95__HMDModernRemoteMessageTransport__startFallbackTimerForContext_fallbackTransport_withTimeout___block_invoke;
      v15[3] = &unk_278686B48;
      objc_copyWeak(&v17, &location);
      v16 = transportCopy;
      [v16 startTransportFallbackTimerWithTimeInterval:workQueue queue:v15 completionHandler:0.2];

      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
      goto LABEL_6;
    }

    inProgressTransports = [transportCopy inProgressTransports];
    rapportTransport = [context rapportTransport];
    v13 = [inProgressTransports containsObject:rapportTransport];

    if (v13)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
}

void __95__HMDModernRemoteMessageTransport__startFallbackTimerForContext_fallbackTransport_withTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v3);

    v4 = [*(a1 + 32) remainingTransports];
    v5 = [v4 count];

    WeakRetained = v13;
    if (v5)
    {
      v6 = [*(a1 + 32) inProgressTransports];
      v7 = [v6 count];

      if (v7)
      {
        [(HMDModernRemoteMessageTransport *)v13 _sendOverRemainingTransportForContext:?];
      }

      v8 = [*(a1 + 32) remainingTransports];
      v9 = [v13 bleTransport];
      v10 = [v8 containsObject:v9];

      WeakRetained = v13;
      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = [v13 bleTransport];
        [HMDModernRemoteMessageTransport _startFallbackTimerForContext:v13 fallbackTransport:v11 withTimeout:v12];

        WeakRetained = v13;
      }
    }
  }
}

void __65__HMDModernRemoteMessageTransport__startResponseTimerForContext___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v4);

    v5 = objc_autoreleasePoolPush();
    v6 = v3;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [*(a1 + 32) messageID];
      v16 = 138543618;
      v17 = v8;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Message %{public}@ timed out", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v6 contextManager];
    v11 = *(a1 + 32);
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:8 description:@"Operation timed out." reason:@"Message timed out waiting for a response." suggestion:0];
    [v10 completeContext:v11 withPayload:0 error:v12 isFinal:1];

    v13 = [*(a1 + 32) options];
    LOBYTE(v11) = [v13 expectsMultipleResponses];

    if ((v11 & 1) == 0)
    {
      [(HMDModernRemoteMessageTransport *)v6 _deviceReachabilityForContext:0 isReachable:?];
    }

    v14 = [v6 featuresDataSource];
    v15 = [v14 isTransportRetryEnabled];

    if (v15)
    {
      [*(a1 + 32) setKeepRetrying:0];
    }
  }
}

void __96__HMDModernRemoteMessageTransport__createContextWithRemoteMessage_transports_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) responseHandler];
  if (v4)
  {
    v5 = v4;
    [*(a1 + 32) timeout];
    v7 = v6;

    if (v7 < 2.22044605e-16)
    {
      [v3 setTimeoutOverride:60.0];
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 40);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [*(a1 + 32) identifier];
        [v3 timeoutOverride];
        v40 = 138543874;
        v41 = v11;
        v42 = 2114;
        v43 = v12;
        v44 = 2048;
        v45 = v13;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ expects a response but timeout is not set. Setting timeout to %.0f seconds", &v40, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  [v3 setTransports:*(a1 + 48)];
  if (*(a1 + 40))
  {
    v14 = ([*(a1 + 32) sendOptions] >> 1) & 1;
  }

  else
  {
    v14 = 0;
  }

  [v3 setExpectsMultipleResponses:v14];
  v15 = *(a1 + 40);
  v16 = *(a1 + 32);
  if (v15)
  {
    v17 = [v15 requestID];

    if (v17 == @"com.apple.home.hh2.messaging.rid")
    {
      v18 = [v16 destination];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v20 = [v15 rapportTransport];
        if ([v20 isValidMessage:v16])
        {
          v21 = [v15 idsTransport];
          v22 = [v21 isValidMessage:v16];

          if (v22)
          {
            v15 = 1;
            goto LABEL_19;
          }
        }

        else
        {
        }

        v23 = objc_autoreleasePoolPush();
        v24 = v15;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          v26 = HMFGetLogIdentifier();
          v40 = 138543618;
          v41 = v26;
          v42 = 2112;
          v43 = v16;
          _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Not tracking reachability for restricted message: %@", &v40, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
      }
    }

    v15 = 0;
  }

LABEL_19:

  [v3 setTrackingDeviceReachability:v15];
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  [v3 timeoutOverride];
  v30 = v29;
  v31 = v27;
  v32 = v31;
  v33 = 0.0;
  if (v28 && [v31 type] != 1 && (objc_msgSend(v32, "sendOptions") & 1) == 0)
  {
    if (v30 < 2.22044605e-16)
    {
      [v32 timeout];
      v30 = v34;
    }

    v35 = 15.0;
    if (v30 >= 15.0)
    {
      v35 = v30;
    }

    if (v30 >= 2.22044605e-16)
    {
      v33 = v35;
    }

    else
    {
      v33 = 60.0;
    }
  }

  [v3 setTimeToLive:v33];
  v36 = [objc_opt_class() requestStartTimeHeaderKey];
  [v3 setRequestStartTimeHeaderKey:v36];

  v37 = [objc_opt_class() timeToLiveHeaderKey];
  [v3 setTimeToLiveHeaderKey:v37];

  if (([(HMDModernRemoteMessageTransport *)*(a1 + 40) _isResidentToResidentMessage:?]& 1) != 0)
  {
    v38 = *(a1 + 48);
    v39 = [*(a1 + 40) rapportTransport];
    [v3 setExpectRapportSuccess:{objc_msgSend(v38, "containsObject:", v39)}];
  }

  else
  {
    [v3 setExpectRapportSuccess:0];
  }
}

- (uint64_t)_isResidentToResidentMessage:(void *)message
{
  v3 = a2;
  if (message && ([message residencyProvider], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isCurrentDeviceResident"), v4, v5))
  {
    destination = [v3 destination];
    residencyProvider = [message residencyProvider];
    v8 = destination;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;

    if (v10)
    {
      device = [v10 device];
      deviceAddress = [device deviceAddress];
      v13 = [residencyProvider deviceAddressBelongsToResidentOfCurrentHome:deviceAddress];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)canSendMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy restriction] != -1 && (objc_msgSend(messageCopy, "restriction") & 0x10) != 0)
  {
    v6 = 0;
  }

  else
  {
    rapportTransport = [(HMDModernRemoteMessageTransport *)self rapportTransport];
    if ([rapportTransport isValidMessage:messageCopy])
    {
      v6 = 1;
    }

    else
    {
      idsTransport = [(HMDModernRemoteMessageTransport *)self idsTransport];
      if ([idsTransport isValidMessage:messageCopy])
      {
        v6 = 1;
      }

      else
      {
        bleTransport = [(HMDModernRemoteMessageTransport *)self bleTransport];
        v6 = [bleTransport isValidMessage:messageCopy];
      }
    }
  }

  return v6;
}

- (id)start
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Starting", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  rapportTransport = [(HMDModernRemoteMessageTransport *)selfCopy rapportTransport];
  start = [rapportTransport start];

  idsTransport = [(HMDModernRemoteMessageTransport *)selfCopy idsTransport];
  start2 = [idsTransport start];

  [(HMDModernRemoteMessageTransport *)selfCopy setStarted:1];
  v11 = objc_alloc(MEMORY[0x277CBEB18]);
  v22[0] = start;
  v22[1] = start2;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v13 = [v11 initWithArray:v12];

  bleTransport = [(HMDModernRemoteMessageTransport *)selfCopy bleTransport];

  if (bleTransport)
  {
    bleTransport2 = [(HMDModernRemoteMessageTransport *)selfCopy bleTransport];
    start3 = [bleTransport2 start];
    [v13 addObject:start3];
  }

  v17 = [MEMORY[0x277D0F7C0] all:v13];
  startPromise = [(HMDRemoteMessageTransport *)selfCopy startPromise];
  ignoreOutcome = [v17 ignoreOutcome];
  [startPromise resolveWithFuture:ignoreOutcome];

  startFuture = [(HMDRemoteMessageTransport *)selfCopy startFuture];

  return startFuture;
}

- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d rapportTransport:(id)transport idsTransport:(id)idsTransport bleTransport:(id)bleTransport contextManager:(id)manager systemDateProvider:(id)provider idsDateProvider:(id)self0 timerProvider:(id)self1 timerManager:(id)self2 isWatch:(BOOL)self3 featuresDataSource:(id)self4
{
  dCopy = d;
  transportCopy = transport;
  transportCopy2 = transport;
  idsTransportCopy = idsTransport;
  idsTransportCopy2 = idsTransport;
  bleTransportCopy = bleTransport;
  bleTransportCopy2 = bleTransport;
  v20 = dCopy;
  v48 = bleTransportCopy2;
  managerCopy = manager;
  managerCopy2 = manager;
  providerCopy = provider;
  dateProviderCopy = dateProvider;
  timerProviderCopy = timerProvider;
  timerManagerCopy = timerManager;
  sourceCopy = source;
  v49.receiver = self;
  v49.super_class = HMDModernRemoteMessageTransport;
  v23 = [(HMDRemoteMessageTransport *)&v49 initWithAccountRegistry:registry];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_requestID, d);
    objc_storeStrong(&v24->_featuresDataSource, source);
    v25 = HMDispatchQueueNameString();
    uTF8String = [v25 UTF8String];
    v27 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v28 = dispatch_queue_create(uTF8String, v27);
    workQueue = v24->_workQueue;
    v24->_workQueue = v28;

    objc_storeStrong(&v24->_rapportTransport, transportCopy);
    [(HMFMessageTransport *)v24->_rapportTransport setDelegate:v24];
    [(HMDRemoteMessageTransport *)v24->_rapportTransport setReachabilityDelegate:v24];
    objc_storeStrong(&v24->_idsTransport, idsTransportCopy);
    [(HMFMessageTransport *)v24->_idsTransport setDelegate:v24];
    v24->_useRapportOverBLE = v20 == @"com.apple.home.hh2.messaging.rid";
    featuresDataSource = [(HMDModernRemoteMessageTransport *)v24 featuresDataSource];
    if ([featuresDataSource isRapportOverBLEEnabled] && -[HMDModernRemoteMessageTransport useRapportOverBLE](v24, "useRapportOverBLE"))
    {

      if (v48)
      {
        objc_storeStrong(&v24->_bleTransport, bleTransportCopy);
        [(HMFMessageTransport *)v24->_bleTransport setDelegate:v24];
LABEL_8:
        objc_storeStrong(&v24->_contextManager, managerCopy);
        objc_storeStrong(&v24->_systemDateProvider, provider);
        objc_storeStrong(&v24->_idsDateProvider, dateProvider);
        objc_storeStrong(&v24->_timerProvider, timerProvider);
        v32 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:100];
        messageIDDedupeBuffer = v24->_messageIDDedupeBuffer;
        v24->_messageIDDedupeBuffer = v32;

        v24->_rapportLinkSlow = 0;
        v24->_isWatch = watch;
        objc_storeStrong(&v24->_timerManager, timerManager);
        [(HMFTimerManager *)v24->_timerManager setDelegate:v24];
        goto LABEL_9;
      }
    }

    else
    {
    }

    bleTransport = v24->_bleTransport;
    v24->_bleTransport = 0;

    goto LABEL_8;
  }

LABEL_9:

  return v24;
}

- (HMDModernRemoteMessageTransport)initWithAccountRegistry:(id)registry requestID:(id)d
{
  registryCopy = registry;
  dCopy = d;
  v28 = objc_alloc_init(MEMORY[0x277D0F7F0]);
  v27 = objc_alloc_init(MEMORY[0x277D0F798]);
  v26 = [[HMDRapportMessageTransport alloc] initWithAccountRegistry:registryCopy requestID:dCopy];
  v8 = [HMDIDSMessageTransport alloc];
  v9 = dCopy;
  v10 = v9;
  if (self)
  {
    if (v9 == @"hmmm.client.rid.prefix_com.apple.private.alloy.energykit")
    {
      v11 = @"com.apple.private.alloy.energykit";
    }

    else
    {
      v11 = @"com.apple.private.alloy.home";
    }

    if (v9 == @"com.apple.home.hh2.hmmm.rid")
    {
      v12 = @"com.apple.private.alloy.alarms-timers";
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v25 = [(HMDIDSMessageTransport *)v8 initWithAccountRegistry:registryCopy forServiceName:v13];
  v14 = +[HMDFeaturesDataSource defaultDataSource];
  isRapportOverBLEEnabled = [v14 isRapportOverBLEEnabled];
  v24 = v13;
  if (isRapportOverBLEEnabled)
  {
    v16 = [[HMDRapportOverBLEMessageTransport alloc] initWithAccountRegistry:registryCopy];
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_alloc_init(HMDModernTransportMessageContextManager);
  v18 = objc_opt_new();
  v19 = [objc_alloc(MEMORY[0x277D0F930]) initWithOptions:1];
  v20 = +[HMDFeaturesDataSource defaultDataSource];
  LOBYTE(v23) = 0;
  v21 = [(HMDModernRemoteMessageTransport *)self initWithAccountRegistry:registryCopy requestID:v10 rapportTransport:v26 idsTransport:v25 bleTransport:v16 contextManager:v17 systemDateProvider:v27 idsDateProvider:v28 timerProvider:v18 timerManager:v19 isWatch:v23 featuresDataSource:v20];

  if (isRapportOverBLEEnabled)
  {
  }

  return v21;
}

void __46__HMDModernRemoteMessageTransport_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v65;
  logCategory__hmf_once_v65 = v0;
}

@end