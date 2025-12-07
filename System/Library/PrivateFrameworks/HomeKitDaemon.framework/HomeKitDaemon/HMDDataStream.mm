@interface HMDDataStream
- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier;
- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier connectionTimer:(id)timer helloMessageResponseTimer:(id)responseTimer;
- (HMDDataStreamDelegate)delegate;
- (id)protocolWithName:(id)name;
- (void)_evaluateActiveStatusChange;
- (void)_failPendingMessagesWithError:(void *)error;
- (void)_sendMessageWithHeader:(void *)header payload:(void *)payload completion:;
- (void)addProtocol:(id)protocol name:(id)name;
- (void)close;
- (void)connect;
- (void)fulfillPendingRequestWithResponseHeader:(void *)header payload:;
- (void)sendEventForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion;
- (void)sendRequestForProtocol:(id)protocol topic:(id)topic identifier:(unint64_t)identifier payload:(id)payload completion:(id)completion;
- (void)sendRequestForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion;
- (void)sendResponseForRequestHeader:(id)header payload:(id)payload status:(unsigned __int16)status completion:(id)completion;
- (void)setActive:(BOOL)active;
- (void)setTrafficClass:(unint64_t)class;
- (void)timerDidFire:(id)fire;
- (void)transport:(id)transport didFailWithError:(id)error;
- (void)transport:(id)transport didReceiveRawFrame:(id)frame;
- (void)transportDidClose:(id)close;
- (void)transportDidOpen:(id)open;
@end

@implementation HMDDataStream

- (HMDDataStreamDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v16 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  connectionTimer = [(HMDDataStream *)self connectionTimer];

  if (connectionTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      v12 = "%{public}@Data stream failed to connect in time; closing!";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v8);
    [(HMDDataStream *)self close];
    goto LABEL_9;
  }

  helloMessageResponseTimer = [(HMDDataStream *)self helloMessageResponseTimer];

  if (helloMessageResponseTimer == fireCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      v12 = "%{public}@Data stream failed to receive first message in time; closing!";
LABEL_7:
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, v12, &v14, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)transport:(id)transport didReceiveRawFrame:(id)frame
{
  v153 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  frameCopy = frame;
  delegate = [(HMDDataStream *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (delegate)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v144 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Data stream received frame", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    [delegate dataStreamDidReceiveRawFrame:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v144 = v14;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Data stream received frame; but no delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  if ([frameCopy length])
  {
    v15 = 0;
    v16 = *[frameCopy bytes];
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        v20 = 0;
        v21 = 0;
        if (v16 != 3)
        {
          goto LABEL_29;
        }

        sessionEncryption = [(HMDDataStream *)selfCopy sessionEncryption];

        if (!sessionEncryption)
        {
          v134 = 0;
          v135 = 0;
          v133 = 0;
          v19 = [HMDDataStreamMessageCoder unpackUnencryptedOPACKFrame:frameCopy receivedHeader:&v135 receivedPayload:&v134 error:&v133];
          v15 = v135;
          v20 = v134;
          v21 = v133;
          if (v21)
          {
            goto LABEL_29;
          }

          goto LABEL_35;
        }

        v27 = objc_autoreleasePoolPush();
        v28 = selfCopy;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier();
          *buf = 138543362;
          v144 = v30;
          v31 = "%{public}@Data stream failed due to receiving encrypted frame";
LABEL_26:
          v33 = v29;
          v34 = 12;
          goto LABEL_27;
        }

LABEL_28:

        objc_autoreleasePoolPop(v27);
        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v15 = 0;
        v20 = 0;
        goto LABEL_29;
      }
    }

    else if (v16)
    {
      sessionEncryption2 = [(HMDDataStream *)selfCopy sessionEncryption];

      if (sessionEncryption2)
      {
        sessionEncryption3 = [(HMDDataStream *)selfCopy sessionEncryption];
        v137 = 0;
        v138 = 0;
        v136 = 0;
        v19 = [HMDDataStreamMessageCoder decryptEncryptedOPACKFrame:frameCopy sessionEncryption:sessionEncryption3 receivedHeader:&v138 receivedPayload:&v137 error:&v136];
        v15 = v138;
        v20 = v137;
        v21 = v136;

        if (v21)
        {
          goto LABEL_29;
        }

LABEL_35:
        if (v19)
        {
          if ([(HMDDataStream *)selfCopy firstMessageReceived])
          {
            v41 = [v15 objectForKeyedSubscript:@"response"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v42 = v41;
            }

            else
            {
              v42 = 0;
            }

            v43 = v42;

            if (v43)
            {
              [(HMDDataStream *)selfCopy fulfillPendingRequestWithResponseHeader:v15 payload:v20];
LABEL_123:

LABEL_32:
              goto LABEL_33;
            }

            v57 = [v15 objectForKeyedSubscript:@"protocol"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v58 = v57;
            }

            else
            {
              v58 = 0;
            }

            v59 = v58;

            v129 = v59;
            if (!v59)
            {
              v105 = objc_autoreleasePoolPush();
              v106 = selfCopy;
              v107 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
              {
                v108 = HMFGetLogIdentifier();
                *buf = 138543362;
                v144 = v108;
                _os_log_impl(&dword_229538000, v107, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (header missing protocol)", buf, 0xCu);
              }

              goto LABEL_121;
            }

            if ([(__CFString *)v59 isEqual:@"control"])
            {
              v41 = [v15 objectForKeyedSubscript:@"event"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v60 = v41;
              }

              else
              {
                v60 = 0;
              }

              v61 = v60;

              if (v61)
              {
                controlProtocol = [(HMDDataStream *)selfCopy controlProtocol];
                [controlProtocol dataStream:selfCopy didReceiveEvent:v61 header:v15 payload:v20];
LABEL_108:

LABEL_122:
                goto LABEL_123;
              }

              v41 = [v15 objectForKeyedSubscript:@"request"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v113 = v41;
              }

              else
              {
                v113 = 0;
              }

              v114 = v113;

              if (v114)
              {
                controlProtocol = [(HMDDataStream *)selfCopy controlProtocol];
                [controlProtocol dataStream:selfCopy didReceiveRequest:v114 header:v15 payload:v20];
                goto LABEL_108;
              }

              goto LABEL_119;
            }

            v132 = delegate;
            protocols = [(HMDDataStream *)selfCopy protocols];
            v110 = [protocols objectForKey:v59];

            if (v110)
            {
              v41 = [v15 objectForKeyedSubscript:@"event"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v111 = v41;
              }

              else
              {
                v111 = 0;
              }

              v112 = v111;

              if (v112)
              {
                [v110 dataStream:selfCopy didReceiveEvent:v112 header:v15 payload:v20];
              }

              else
              {
                v41 = [v15 objectForKeyedSubscript:@"request"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v119 = v41;
                }

                else
                {
                  v119 = 0;
                }

                v120 = v119;

                if (!v120)
                {

                  delegate = v132;
LABEL_119:
                  v105 = objc_autoreleasePoolPush();
                  v106 = selfCopy;
                  v107 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                  {
                    v121 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v144 = v121;
                    _os_log_impl(&dword_229538000, v107, OS_LOG_TYPE_INFO, "%{public}@Message received but no protocol accepted it; dropped!", buf, 0xCu);
                  }

LABEL_121:

                  objc_autoreleasePoolPop(v105);
                  v41 = 0;
                  goto LABEL_122;
                }

                [v110 dataStream:selfCopy didReceiveRequest:v120 header:v15 payload:v20];
              }
            }

            else
            {
              v115 = objc_autoreleasePoolPush();
              v116 = selfCopy;
              v117 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
              {
                v118 = HMFGetLogIdentifier();
                *buf = 138543618;
                v144 = v118;
                v145 = 2112;
                v146 = v129;
                _os_log_impl(&dword_229538000, v117, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (no protocol named %@)", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v115);
              v41 = 0;
            }

            delegate = v132;
            goto LABEL_122;
          }

          v15 = v15;
          v20 = v20;
          v131 = delegate;
          if (selfCopy)
          {
            v44 = [v15 objectForKeyedSubscript:@"protocol"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v44;
            }

            else
            {
              v45 = 0;
            }

            v46 = v45;

            v128 = v46;
            if ([v46 isEqualToString:@"control"])
            {
              v47 = [v15 objectForKeyedSubscript:@"response"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v48 = v47;
              }

              else
              {
                v48 = 0;
              }

              v49 = v48;

              if (v49)
              {
                controlProtocol2 = [(HMDDataStream *)selfCopy controlProtocol];
                [controlProtocol2 dataStream:selfCopy didReceiveResponse:v47 header:v15 payload:v20];

                controlProtocol3 = [(HMDDataStream *)selfCopy controlProtocol];
                helloMessageResponseReceived = [controlProtocol3 helloMessageResponseReceived];

                if (helloMessageResponseReceived)
                {
LABEL_74:
                  [(HMDDataStream *)selfCopy setFirstMessageReceived:1];
                  helloMessageResponseTimer = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
                  [helloMessageResponseTimer cancel];

                  [(HMDDataStream *)selfCopy setHelloMessageResponseTimer:0];
                  if (selfCopy)
                  {
                    pendingRequests = [(HMDDataStream *)selfCopy pendingRequests];
                    v70 = objc_msgSend_copy(pendingRequests);

                    v71 = objc_autoreleasePoolPush();
                    v72 = selfCopy;
                    v73 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                    {
                      v74 = HMFGetLogIdentifier();
                      v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v70, "count")}];
                      *v149 = 138543618;
                      v150 = v74;
                      v151 = 2112;
                      v152 = v75;
                      _os_log_impl(&dword_229538000, v73, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending requests [%@]", v149, 0x16u);
                    }

                    contextb = v15;
                    v130 = transportCopy;

                    objc_autoreleasePoolPop(v71);
                    pendingRequests2 = [(HMDDataStream *)v72 pendingRequests];
                    [pendingRequests2 removeAllObjects];

                    v141 = 0u;
                    v142 = 0u;
                    v139 = 0u;
                    v140 = 0u;
                    v77 = v70;
                    v78 = [v77 countByEnumeratingWithState:&v139 objects:buf count:16];
                    v124 = v20;
                    if (v78)
                    {
                      v79 = v78;
                      v80 = *v140;
                      do
                      {
                        for (i = 0; i != v79; ++i)
                        {
                          if (*v140 != v80)
                          {
                            objc_enumerationMutation(v77);
                          }

                          v82 = *(*(&v139 + 1) + 8 * i);
                          protocol = [v82 protocol];
                          topic = [v82 topic];
                          payload = [v82 payload];
                          callback = [v82 callback];
                          [(HMDDataStream *)v72 sendRequestForProtocol:protocol topic:topic payload:payload completion:callback];
                        }

                        v79 = [v77 countByEnumeratingWithState:&v139 objects:buf count:16];
                      }

                      while (v79);
                    }

                    pendingEvents = [(HMDDataStream *)v72 pendingEvents];
                    v88 = objc_msgSend_copy(pendingEvents);

                    v89 = objc_autoreleasePoolPush();
                    v90 = v72;
                    v91 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                    {
                      v92 = HMFGetLogIdentifier();
                      v93 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v88, "count")}];
                      *v149 = 138543618;
                      v150 = v92;
                      v151 = 2112;
                      v152 = v93;
                      _os_log_impl(&dword_229538000, v91, OS_LOG_TYPE_INFO, "%{public}@Sending out all pending events [%@]", v149, 0x16u);
                    }

                    objc_autoreleasePoolPop(v89);
                    pendingEvents2 = [(HMDDataStream *)v90 pendingEvents];
                    [pendingEvents2 removeAllObjects];

                    v141 = 0u;
                    v142 = 0u;
                    v139 = 0u;
                    v140 = 0u;
                    v95 = v88;
                    v96 = [v95 countByEnumeratingWithState:&v139 objects:buf count:16];
                    if (v96)
                    {
                      v97 = v96;
                      v98 = *v140;
                      do
                      {
                        for (j = 0; j != v97; ++j)
                        {
                          if (*v140 != v98)
                          {
                            objc_enumerationMutation(v95);
                          }

                          v100 = *(*(&v139 + 1) + 8 * j);
                          protocol2 = [v100 protocol];
                          topic2 = [v100 topic];
                          payload2 = [v100 payload];
                          completion = [v100 completion];
                          [(HMDDataStream *)v90 sendEventForProtocol:protocol2 topic:topic2 payload:payload2 completion:completion];
                        }

                        v97 = [v95 countByEnumeratingWithState:&v139 objects:buf count:16];
                      }

                      while (v97);
                    }

                    transportCopy = v130;
                    delegate = v131;
                    v20 = v124;
                    v15 = contextb;
                  }

                  else
                  {
                    delegate = v131;
                  }

                  goto LABEL_32;
                }

LABEL_71:
                v64 = objc_autoreleasePoolPush();
                v65 = selfCopy;
                v66 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                {
                  v67 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v144 = v67;
                  _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected first message on the data stream", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v64);
                [(HMDDataStream *)v65 close];
                goto LABEL_74;
              }

              v123 = objc_autoreleasePoolPush();
              contexta = selfCopy;
              v63 = HMFGetOSLogHandle();
              v56 = v128;
              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                v122 = HMFGetLogIdentifier();
                *buf = 138543874;
                v144 = v122;
                v145 = 2112;
                v146 = @"response";
                v147 = 2112;
                v148 = v47;
                _os_log_impl(&dword_229538000, v63, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected %@ key value: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v123);
            }

            else
            {
              context = objc_autoreleasePoolPush();
              v53 = selfCopy;
              v54 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                v55 = HMFGetLogIdentifier();
                *buf = 138543874;
                v144 = v55;
                v145 = 2112;
                v146 = @"control";
                v147 = 2112;
                v148 = v44;
                _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Expected protocol name: %@ received: %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(context);
              v56 = v128;
            }
          }

          goto LABEL_71;
        }

LABEL_29:
        v36 = objc_autoreleasePoolPush();
        v37 = selfCopy;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v40 = v39 = delegate;
          *buf = 138543618;
          v144 = v40;
          v145 = 2112;
          v146 = v21;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@DataStream dropping incoming message (%@)", buf, 0x16u);

          delegate = v39;
        }

        objc_autoreleasePoolPop(v36);
        goto LABEL_32;
      }

      v27 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543362;
        v144 = v30;
        v31 = "%{public}@Data stream failed due to receiving unencrypted frame";
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    v27 = objc_autoreleasePoolPush();
    v32 = selfCopy;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v144 = v30;
      v145 = 1024;
      LODWORD(v146) = v16;
      v31 = "%{public}@Data stream failed due to unrecognized frame type 0x%02x";
      v33 = v29;
      v34 = 18;
LABEL_27:
      _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_ERROR, v31, buf, v34);

      goto LABEL_28;
    }

    goto LABEL_28;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543362;
    v144 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@DataStream dropping truncated frame of zero-length", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
LABEL_33:
}

- (void)fulfillPendingRequestWithResponseHeader:(void *)header payload:
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  headerCopy = header;
  v7 = headerCopy;
  if (!self)
  {
    goto LABEL_19;
  }

  selfCopy = self;
  v31 = headerCopy;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  pendingRequests = [self pendingRequests];
  v9 = [pendingRequests countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v37;
  v32 = *v37;
  v33 = pendingRequests;
  do
  {
    v12 = 0;
    v35 = v10;
    do
    {
      if (*v37 != v11)
      {
        objc_enumerationMutation(pendingRequests);
      }

      v13 = *(*(&v36 + 1) + 8 * v12);
      v14 = v5;
      if (v13)
      {
        topic = [v13 topic];
        v16 = [v14 objectForKeyedSubscript:@"response"];
        if (![topic isEqual:v16])
        {
          goto LABEL_13;
        }

        identifier = [v13 identifier];
        v18 = [v14 objectForKeyedSubscript:@"id"];
        if (![identifier isEqual:v18])
        {

          v10 = v35;
LABEL_13:

          goto LABEL_14;
        }

        protocol = [v13 protocol];
        [v14 objectForKeyedSubscript:@"protocol"];
        v21 = v20 = v5;
        v34 = [protocol isEqual:v21];

        v5 = v20;
        v11 = v32;

        pendingRequests = v33;
        v10 = v35;
        if (v34)
        {

          v27 = v13;
          callback = [v27 callback];
          v7 = v31;
          (callback)[2](callback, 0, v14, v31);

          pendingRequests2 = [selfCopy pendingRequests];
          [pendingRequests2 removeObject:v27];

          goto LABEL_19;
        }
      }

LABEL_14:

      ++v12;
    }

    while (v10 != v12);
    v10 = [pendingRequests countByEnumeratingWithState:&v36 objects:v46 count:16];
  }

  while (v10);
LABEL_16:

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    pendingRequests3 = [v23 pendingRequests];
    *buf = 138543874;
    v41 = v25;
    v42 = 2112;
    v43 = v5;
    v44 = 2112;
    v45 = pendingRequests3;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@No pending request found for response with header: %@. Pending %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v7 = v31;
LABEL_19:
}

- (void)transportDidOpen:(id)open
{
  v31 = *MEMORY[0x277D85DE8];
  openCopy = open;
  [(HMDDataStream *)self setConnectionTimer:0];
  delegate = [(HMDDataStream *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (delegate)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN!", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [delegate dataStreamDidOpen:selfCopy];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream OPEN (but no delegate!)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  controlProtocol = [(HMDDataStream *)selfCopy controlProtocol];
  [controlProtocol dataStreamDidOpen:selfCopy];

  if (selfCopy)
  {
    helloMessageResponseTimer = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
    [helloMessageResponseTimer setDelegate:selfCopy];

    workQueue = [(HMDDataStream *)selfCopy workQueue];
    helloMessageResponseTimer2 = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
    [helloMessageResponseTimer2 setDelegateQueue:workQueue];

    helloMessageResponseTimer3 = [(HMDDataStream *)selfCopy helloMessageResponseTimer];
    [helloMessageResponseTimer3 resume];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v19 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      v22 = 0;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v23 = *(*(&v24 + 1) + 8 * v22);
        if (v23)
        {
          [v23 dataStreamDidOpen:selfCopy];
        }

        ++v22;
      }

      while (v20 != v22);
      v20 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v20);
  }
}

- (void)transportDidClose:(id)close
{
  v26 = *MEMORY[0x277D85DE8];
  closeCopy = close;
  delegate = [(HMDDataStream *)self delegate];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (delegate)
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream closed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [delegate dataStreamDidClose:selfCopy];
  }

  else
  {
    if (v9)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v11;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@Data stream closed (but no delegate!)", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v14 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v19 + 1) + 8 * v17++) dataStreamDidClose:selfCopy];
      }

      while (v15 != v17);
      v15 = [objectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  v18 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1061];
  [(HMDDataStream *)selfCopy _failPendingMessagesWithError:v18];
}

- (void)_failPendingMessagesWithError:(void *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    pendingRequests = [error pendingRequests];
    v5 = [pendingRequests countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v23;
      do
      {
        v8 = 0;
        do
        {
          if (*v23 != v7)
          {
            objc_enumerationMutation(pendingRequests);
          }

          callback = [*(*(&v22 + 1) + 8 * v8) callback];
          (callback)[2](callback, v3, 0, 0);

          ++v8;
        }

        while (v6 != v8);
        v6 = [pendingRequests countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v6);
    }

    pendingRequests2 = [error pendingRequests];
    [pendingRequests2 removeAllObjects];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    pendingEvents = [error pendingEvents];
    v12 = [pendingEvents countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(pendingEvents);
          }

          completion = [*(*(&v18 + 1) + 8 * v15) completion];
          (completion)[2](completion, v3);

          ++v15;
        }

        while (v13 != v15);
        v13 = [pendingEvents countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v13);
    }

    pendingEvents2 = [error pendingEvents];
    [pendingEvents2 removeAllObjects];
  }
}

- (void)transport:(id)transport didFailWithError:(id)error
{
  v31 = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  errorCopy = error;
  delegate = [(HMDDataStream *)self delegate];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (delegate)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v13;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, "%{public}@Data stream failure (%@)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [delegate dataStream:selfCopy didFailWithError:errorCopy];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v14;
      v29 = 2112;
      v30 = errorCopy;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Data stream failure (%@); but no delegate", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v17 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v23;
    do
    {
      v20 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v21 = *(*(&v22 + 1) + 8 * v20);
        if (v21)
        {
          [v21 dataStream:selfCopy didFailWithError:errorCopy];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v18);
  }

  [(HMDDataStream *)selfCopy _failPendingMessagesWithError:errorCopy];
}

- (void)setTrafficClass:(unint64_t)class
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2048;
    classCopy = class;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting traffic class %lu on transport", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  transport = [(HMDDataStream *)selfCopy transport];
  [transport setTrafficClass:class];
}

- (void)_evaluateActiveStatusChange
{
  v16 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    workQueue = [result workQueue];
    dispatch_assert_queue_V2(workQueue);

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    protocols = [v1 protocols];
    v4 = [protocols countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = *v12;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(protocols);
          }

          v7 = *(*(&v11 + 1) + 8 * i);
          protocols2 = [v1 protocols];
          v9 = [protocols2 objectForKey:v7];
          isActive = [v9 isActive];

          if (isActive)
          {
            v4 = 1;
            goto LABEL_12;
          }
        }

        v4 = [protocols countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    return [v1 setActive:v4];
  }

  return result;
}

- (void)sendRequestForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion
{
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  completionCopy = completion;
  if (self)
  {
    nextRequestIdentifier = [(HMDDataStream *)self nextRequestIdentifier];
    [(HMDDataStream *)self setNextRequestIdentifier:[(HMDDataStream *)self nextRequestIdentifier]+ 1];
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:nextRequestIdentifier];
  }

  else
  {
    v15 = 0;
  }

  if ([(HMDDataStream *)self firstMessageReceived])
  {
    controlProtocol = [(HMDDataStream *)self controlProtocol];
    helloMessageResponseReceived = [controlProtocol helloMessageResponseReceived];

    if ((helloMessageResponseReceived & 1) == 0)
    {
      v20 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1062];
      (*(completionCopy + 2))(completionCopy, v20, 0, 0);

      goto LABEL_9;
    }

    v18 = [HMDDataStreamMessageCoder requestHeaderForProtocol:protocolCopy topic:topicCopy identifier:v15];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__HMDDataStream_sendRequestForProtocol_topic_payload_completion___block_invoke;
    v21[3] = &unk_278689B08;
    v27 = completionCopy;
    v22 = v15;
    v23 = protocolCopy;
    v24 = topicCopy;
    v25 = payloadCopy;
    selfCopy = self;
    [(HMDDataStream *)self _sendMessageWithHeader:v18 payload:v25 completion:v21];
  }

  else
  {
    v18 = [[HMDDataStreamPendingRequest alloc] initWithIdentifier:v15 protocol:protocolCopy topic:topicCopy payload:payloadCopy callback:completionCopy];
    pendingRequests = [(HMDDataStream *)self pendingRequests];
    [pendingRequests addObject:v18];
  }

LABEL_9:
}

void __65__HMDDataStream_sendRequestForProtocol_topic_payload_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v4 = [[HMDDataStreamPendingRequest alloc] initWithIdentifier:*(a1 + 32) protocol:*(a1 + 40) topic:*(a1 + 48) payload:*(a1 + 56) callback:*(a1 + 72)];
    v5 = [*(a1 + 64) pendingRequests];
    [v5 addObject:v4];

    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 64);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@DataStream pending the request: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)_sendMessageWithHeader:(void *)header payload:(void *)payload completion:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  headerCopy = header;
  payloadCopy = payload;
  if (self)
  {
    sessionEncryption = [self sessionEncryption];

    if (sessionEncryption)
    {
      sessionEncryption2 = [self sessionEncryption];
      v23 = 0;
      v12 = [HMDDataStreamMessageCoder encryptEncryptedOPACKHeader:v7 payload:headerCopy sessionEncryption:sessionEncryption2 error:&v23];
      v13 = v23;
    }

    else
    {
      v22 = 0;
      v12 = [HMDDataStreamMessageCoder buildUnencryptedOPACKHeader:v7 payload:headerCopy error:&v22];
      v13 = v22;
    }

    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    v17 = v16;
    if (v13)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543618;
        v25 = v18;
        v26 = 2112;
        v27 = v13;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@DataStream encoding message failed (%@)", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      payloadCopy[2](payloadCopy, v13);
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v19 = HMFGetLogIdentifier();
        pendingRequests = [selfCopy pendingRequests];
        *buf = 138543874;
        v25 = v19;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = pendingRequests;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_DEBUG, "%{public}@DataStream Sending Message: %@ --> %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
      transport = [selfCopy transport];
      [transport sendRawFrame:v12 completion:payloadCopy];
    }
  }
}

- (void)sendRequestForProtocol:(id)protocol topic:(id)topic identifier:(unint64_t)identifier payload:(id)payload completion:(id)completion
{
  v12 = MEMORY[0x277CCABB0];
  completionCopy = completion;
  payloadCopy = payload;
  topicCopy = topic;
  protocolCopy = protocol;
  v17 = [v12 numberWithUnsignedInteger:identifier];
  v18 = [HMDDataStreamMessageCoder requestHeaderForProtocol:protocolCopy topic:topicCopy identifier:v17];

  [(HMDDataStream *)self _sendMessageWithHeader:v18 payload:payloadCopy completion:completionCopy];
}

- (void)sendResponseForRequestHeader:(id)header payload:(id)payload status:(unsigned __int16)status completion:(id)completion
{
  statusCopy = status;
  completionCopy = completion;
  payloadCopy = payload;
  v12 = [HMDDataStreamMessageCoder responseHeaderForRequestHeader:header status:statusCopy];
  [(HMDDataStream *)self _sendMessageWithHeader:v12 payload:payloadCopy completion:completionCopy];
}

- (void)sendEventForProtocol:(id)protocol topic:(id)topic payload:(id)payload completion:(id)completion
{
  protocolCopy = protocol;
  topicCopy = topic;
  payloadCopy = payload;
  completionCopy = completion;
  if ([(HMDDataStream *)self firstMessageReceived])
  {
    controlProtocol = [(HMDDataStream *)self controlProtocol];
    helloMessageResponseReceived = [controlProtocol helloMessageResponseReceived];

    if (helloMessageResponseReceived)
    {
      v15 = [HMDDataStreamMessageCoder eventHeaderForProtocol:protocolCopy topic:topicCopy];
      [(HMDDataStream *)self _sendMessageWithHeader:v15 payload:payloadCopy completion:completionCopy];
    }

    else
    {
      v15 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:1062];
      (*(completionCopy + 2))(completionCopy, v15);
    }
  }

  else
  {
    v15 = [[HMDDataStreamPendingEvent alloc] initWithProtocol:protocolCopy topic:topicCopy payload:payloadCopy completion:completionCopy];
    pendingEvents = [(HMDDataStream *)self pendingEvents];
    [pendingEvents addObject:v15];
  }
}

- (id)protocolWithName:(id)name
{
  nameCopy = name;
  workQueue = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  protocols = [(HMDDataStream *)self protocols];
  v7 = [protocols objectForKey:nameCopy];

  return v7;
}

- (void)addProtocol:(id)protocol name:(id)name
{
  nameCopy = name;
  protocolCopy = protocol;
  protocols = [(HMDDataStream *)self protocols];
  [protocols setObject:protocolCopy forKey:nameCopy];

  [(HMDDataStream *)self _evaluateActiveStatusChange];
}

- (void)close
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream closing", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  transport = [(HMDDataStream *)selfCopy transport];
  [transport close];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  protocols = [(HMDDataStream *)selfCopy protocols];
  objectEnumerator = [protocols objectEnumerator];

  v10 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v14 + 1) + 8 * v13++) dataStreamInitiatedClose:selfCopy];
      }

      while (v11 != v13);
      v11 = [objectEnumerator countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)connect
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@DataStream connecting", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  if (selfCopy)
  {
    connectionTimer = [(HMDDataStream *)selfCopy connectionTimer];
    [connectionTimer setDelegate:selfCopy];

    workQueue = [(HMDDataStream *)selfCopy workQueue];
    connectionTimer2 = [(HMDDataStream *)selfCopy connectionTimer];
    [connectionTimer2 setDelegateQueue:workQueue];

    connectionTimer3 = [(HMDDataStream *)selfCopy connectionTimer];
    [connectionTimer3 resume];
  }

  transport = [(HMDDataStream *)selfCopy transport];
  [transport connect];
}

- (void)setActive:(BOOL)active
{
  activeCopy = active;
  v16 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDDataStream *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_active != activeCopy)
  {
    self->_active = activeCopy;
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = HMFBooleanToString();
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_INFO, "%{public}@DataStream changes active to %@", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    delegate = [(HMDDataStream *)selfCopy delegate];
    [delegate dataStreamDidUpdateActiveStatus:selfCopy];
  }
}

- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier connectionTimer:(id)timer helloMessageResponseTimer:(id)responseTimer
{
  transportCopy = transport;
  encryptionCopy = encryption;
  queueCopy = queue;
  identifierCopy = identifier;
  timerCopy = timer;
  responseTimerCopy = responseTimer;
  v34.receiver = self;
  v34.super_class = HMDDataStream;
  v19 = [(HMDDataStream *)&v34 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_transport, transport);
    objc_storeStrong(&v20->_sessionEncryption, encryption);
    objc_storeStrong(&v20->_workQueue, queue);
    v21 = objc_msgSend_copy(identifierCopy, encryptionCopy, transportCopy);
    logIdentifier = v20->_logIdentifier;
    v20->_logIdentifier = v21;

    objc_storeStrong(&v20->_connectionTimer, timer);
    objc_storeStrong(&v20->_helloMessageResponseTimer, responseTimer);
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    protocols = v20->_protocols;
    v20->_protocols = strongToStrongObjectsMapTable;

    v25 = [[HMDDataStreamControlProtocol alloc] initWithLogIdentifier:identifierCopy];
    controlProtocol = v20->_controlProtocol;
    v20->_controlProtocol = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    pendingRequests = v20->_pendingRequests;
    v20->_pendingRequests = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pendingEvents = v20->_pendingEvents;
    v20->_pendingEvents = v29;
  }

  return v20;
}

- (HMDDataStream)initWithTransport:(id)transport sessionEncryption:(id)encryption workQueue:(id)queue logIdentifier:(id)identifier
{
  v10 = MEMORY[0x277D0F920];
  identifierCopy = identifier;
  queueCopy = queue;
  encryptionCopy = encryption;
  transportCopy = transport;
  v15 = [[v10 alloc] initWithTimeInterval:0 options:10.0];
  v16 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:10.0];
  v17 = [(HMDDataStream *)self initWithTransport:transportCopy sessionEncryption:encryptionCopy workQueue:queueCopy logIdentifier:identifierCopy connectionTimer:v15 helloMessageResponseTimer:v16];

  return v17;
}

@end