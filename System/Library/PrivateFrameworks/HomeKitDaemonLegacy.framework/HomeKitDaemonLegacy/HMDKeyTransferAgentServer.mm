@interface HMDKeyTransferAgentServer
+ (BOOL)isPeerAvailable;
+ (id)logCategory;
- (BOOL)_endAdvertiseUUIDWithError:(id *)error;
- (BOOL)_startAdvertiseUUIDWithError:(id *)error;
- (HMDKeyTransferAgentServer)initWithHomeManager:(id)manager;
- (id)_httpMessageTransport;
- (void)__deviceAddedToAccount:(id)account;
- (void)__deviceRemovedFromAccount:(id)account;
- (void)__deviceUpdated:(id)updated;
- (void)__resetTimer:(id)timer;
- (void)_device:(id)_device addedToAccount:(id)account;
- (void)_device:(id)_device removedFromAccount:(id)account;
- (void)_endPairingWithError:(id)error;
- (void)_handleKeyTransferAgentMessage:(id)message;
- (void)beginPairingWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)resetConfig;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDKeyTransferAgentServer

- (void)_handleKeyTransferAgentMessage:(id)message
{
  v221 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [messageCopy stringForKey:@"phase"];
    *buf = 138543874;
    v216 = v6;
    v217 = 2112;
    v218 = messageCopy;
    v219 = 2112;
    v220 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Got Message: %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
  v9 = [messageCopy stringForKey:@"phase"];
  [mEMORY[0x277D0F8C0] reportIncomingLoxyMessage:v9];

  v10 = [messageCopy stringForKey:@"phase"];
  v11 = [v10 isEqualToString:@"request_uuid"];

  progressState = [(HMDKeyTransferAgent *)selfCopy progressState];
  v13 = progressState;
  if (v11)
  {

    if (v13)
    {
      v213 = @"uuid";
      currentKeyUUID = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
      uUIDString = [currentKeyUUID UUIDString];
      v214 = uUIDString;
      responseHandler20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
    }

    else
    {
      responseHandler20 = MEMORY[0x277CBEC10];
    }

    responseHandler = [messageCopy responseHandler];

    if (responseHandler)
    {
      responseHandler2 = [messageCopy responseHandler];
      (responseHandler2)[2](responseHandler2, 0, responseHandler20);
    }

    goto LABEL_99;
  }

  v17 = progressState == 0;

  if (!v17)
  {
    homeManager = [(HMDKeyTransferAgent *)selfCopy homeManager];
    v18 = [messageCopy stringForKey:@"phase"];
    v19 = [v18 isEqualToString:@"ping"];

    if (v19)
    {
      progressState2 = [(HMDKeyTransferAgent *)selfCopy progressState];
      v21 = [messageCopy stringForKey:@"phase"];
      v22 = [progressState2 isEqual:v21];

      if ((v22 & 1) == 0)
      {
        v52 = objc_autoreleasePoolPush();
        v53 = selfCopy;
        v54 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = HMFGetLogIdentifier();
          *buf = 138543362;
          v216 = v55;
          _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (A0)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v52);
        responseHandler3 = [messageCopy responseHandler];

        if (responseHandler3)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (([messageCopy remoteRestriction] & 2) == 0)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = selfCopy;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v216 = v26;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (A1)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v23);
        responseHandler4 = [messageCopy responseHandler];

        if (responseHandler4)
        {
LABEL_96:
          responseHandler5 = [messageCopy responseHandler];
          (*(responseHandler5 + 2))(responseHandler5, 0, MEMORY[0x277CBEC10]);
LABEL_80:
          responseHandler20 = 0;
          goto LABEL_81;
        }

LABEL_97:
        responseHandler20 = 0;
        goto LABEL_98;
      }

      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      obj = [homeManager homes];
      v57 = [obj countByEnumeratingWithState:&v201 objects:v212 count:16];
      if (v57)
      {
        responseHandler5 = 0;
        v58 = *v202;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v202 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v60 = *(*(&v201 + 1) + 8 * i);
            primaryResident = [v60 primaryResident];
            device = [primaryResident device];
            v63 = +[HMDAppleAccountManager sharedManager];
            device2 = [v63 device];
            v65 = [device isEqual:device2];

            if (v65)
            {
              primaryResident2 = [v60 primaryResident];
              device3 = [primaryResident2 device];

              responseHandler5 = device3;
            }
          }

          v57 = [obj countByEnumeratingWithState:&v201 objects:v212 count:16];
        }

        while (v57);

        v68 = MEMORY[0x277CCABB0];
        if (responseHandler5)
        {
          v69 = [MEMORY[0x277CCABB0] numberWithBool:1];
LABEL_77:
          responseHandler6 = [messageCopy responseHandler];

          if (responseHandler6)
          {
            responseHandler7 = [messageCopy responseHandler];
            v210[0] = @"phase";
            v210[1] = @"data";
            v211[0] = @"ping";
            v211[1] = v69;
            v109 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v211 forKeys:v210 count:2];
            (responseHandler7)[2](responseHandler7, 0, v109);
          }

          [(HMDKeyTransferAgent *)selfCopy setProgressState:@"send_public"];

          goto LABEL_80;
        }
      }

      else
      {

        v68 = MEMORY[0x277CCABB0];
      }

      homes = [homeManager homes];
      v69 = [v68 numberWithBool:{objc_msgSend(homes, "count") == 0}];

      responseHandler5 = 0;
      goto LABEL_77;
    }

    v35 = [messageCopy stringForKey:@"phase"];
    v36 = [v35 isEqualToString:@"send_public"];

    if (v36)
    {
      progressState3 = [(HMDKeyTransferAgent *)selfCopy progressState];
      v38 = [messageCopy stringForKey:@"phase"];
      v39 = [progressState3 isEqual:v38];

      if ((v39 & 1) == 0)
      {
        v78 = objc_autoreleasePoolPush();
        v79 = selfCopy;
        v80 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
        {
          v81 = HMFGetLogIdentifier();
          *buf = 138543362;
          v216 = v81;
          _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (B0)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v78);
        responseHandler8 = [messageCopy responseHandler];

        if (responseHandler8)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      if (([messageCopy remoteRestriction] & 1) == 0)
      {
        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v216 = v43;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (B1)", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        responseHandler9 = [messageCopy responseHandler];

        if (responseHandler9)
        {
          goto LABEL_96;
        }

        goto LABEL_97;
      }

      messagePayload = [messageCopy messagePayload];
      obja = [messagePayload hmf_stringForKey:@"kControllerPairingNameKey"];

      messagePayload2 = [messageCopy messagePayload];
      v180 = [messagePayload2 hmf_dataForKey:@"kControllerKeyPairKey"];

      v178 = [objc_alloc(MEMORY[0x277D0F8B0]) initWithPairingKeyData:v180];
      v90 = [objc_alloc(MEMORY[0x277CFEC20]) initWithIdentifier:obja publicKey:v178 privateKey:0 permissions:0];
      destination = [messageCopy destination];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v92 = destination;
      }

      else
      {
        v92 = 0;
      }

      v93 = v92;

      if (v90 && v93)
      {
        v94 = +[HMDIdentityRegistry sharedRegistry];
        device4 = [v93 device];
        account = [device4 account];
        [v94 registerIdentity:v90 account:account object:selfCopy];

        systemStore = [MEMORY[0x277CFEC78] systemStore];
        v199 = 0;
        v200 = 0;
        v198 = 0;
        v98 = [systemStore getControllerPublicKey:&v200 secretKey:0 username:&v199 allowCreation:1 error:&v198];
        v99 = v200;
        responseHandler5 = v199;
        responseHandler20 = v198;

        if (v98)
        {
          [(HMDKeyTransferAgent *)selfCopy setProgressState:@"send_private"];
          responseHandler10 = [messageCopy responseHandler];

          if (!responseHandler10)
          {
LABEL_105:

            goto LABEL_81;
          }

          responseHandler11 = [messageCopy responseHandler];
          v208[0] = @"phase";
          v208[1] = @"kControllerKeyPairKey";
          v209[0] = @"reply_public";
          v209[1] = v99;
          v208[2] = @"kControllerPairingNameKey";
          v209[2] = responseHandler5;
          v102 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v209 forKeys:v208 count:3];
          (responseHandler11)[2](responseHandler11, 0, v102);
        }

        else
        {
          v128 = objc_autoreleasePoolPush();
          v129 = selfCopy;
          v130 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
          {
            v131 = HMFGetLogIdentifier();
            *buf = 138543618;
            v216 = v131;
            v217 = 2112;
            v218 = responseHandler20;
            _os_log_impl(&dword_2531F8000, v130, OS_LOG_TYPE_ERROR, "%{public}@Unable to generate ATV public / private key pair: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v128);
          [(HMDKeyTransferAgentServer *)v129 _endPairingWithError:responseHandler20];
          responseHandler11 = [messageCopy responseHandler];
          (responseHandler11)[2](responseHandler11, responseHandler20, 0);
        }
      }

      else
      {
        v119 = objc_autoreleasePoolPush();
        v120 = selfCopy;
        v121 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          v122 = HMFGetLogIdentifier();
          *buf = 138543362;
          v216 = v122;
          _os_log_impl(&dword_2531F8000, v121, OS_LOG_TYPE_ERROR, "%{public}@Did not get valid username / public key from IOs device.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v119);
        responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        [(HMDKeyTransferAgentServer *)v120 _endPairingWithError:responseHandler20];
        responseHandler11 = [messageCopy responseHandler];
        (responseHandler11)[2](responseHandler11, responseHandler20, 0);
        v99 = 0;
        responseHandler5 = 0;
      }

      goto LABEL_105;
    }

    v45 = [messageCopy stringForKey:@"phase"];
    v46 = [v45 isEqualToString:@"send_private"];

    if (v46)
    {
      if ([messageCopy isSecureRemote])
      {
        if (([messageCopy remoteRestriction] & 2) != 0)
        {
          progressState4 = [(HMDKeyTransferAgent *)selfCopy progressState];
          v111 = [messageCopy stringForKey:@"phase"];
          v112 = [progressState4 isEqual:v111];

          if (v112)
          {
            responseHandler5 = [messageCopy dataForKey:@"kControllerKeyPairKey"];
            v176 = [messageCopy stringForKey:@"kControllerPairingNameKey"];
            if (responseHandler5 && v176)
            {
              [messageCopy respondWithPayload:0];
              systemStore2 = [MEMORY[0x277CFEC78] systemStore];
              v196 = 0;
              v197 = 0;
              v114 = [systemStore2 getControllerPublicKey:0 secretKey:0 keyPair:0 username:&v197 allowCreation:0 error:&v196];
              v173 = v197;
              responseHandler20 = v196;

              if (v114 && [v173 isEqualToString:v176])
              {
                v115 = objc_autoreleasePoolPush();
                v116 = selfCopy;
                v117 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                {
                  v118 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v216 = v118;
                  _os_log_impl(&dword_2531F8000, v117, OS_LOG_TYPE_DEFAULT, "%{public}@Already have key, rejecting message and not processing further.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(v115);
              }

              else
              {
                v137 = [homeManager _removeAndAddKeyPair:responseHandler5 userName:v176 eraseReason:{1, v173}];

                v138 = objc_autoreleasePoolPush();
                v139 = selfCopy;
                v140 = HMFGetOSLogHandle();
                v141 = os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT);
                if (v137)
                {
                  if (v141)
                  {
                    v142 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v216 = v142;
                    _os_log_impl(&dword_2531F8000, v140, OS_LOG_TYPE_DEFAULT, "%{public}@Received new key and successfully added it.", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v138);
                  systemStore3 = [MEMORY[0x277CFEC78] systemStore];
                  [systemStore3 updateActiveControllerPairingIdentifier:v176];

                  v144 = +[HMDAppleAccountManager sharedManager];
                  device5 = [v144 device];
                  identifier = [device5 identifier];
                  uUIDString2 = [identifier UUIDString];

                  if (uUIDString2)
                  {
                    v194 = 0u;
                    v195 = 0u;
                    v192 = 0u;
                    v193 = 0u;
                    v147 = +[HMDAppleAccountManager sharedManager];
                    account2 = [v147 account];
                    devices = [account2 devices];
                    v179 = objc_msgSend_copy(devices);

                    objb = [v179 countByEnumeratingWithState:&v192 objects:v207 count:16];
                    if (objb)
                    {
                      v181 = *v193;
                      do
                      {
                        for (j = 0; j != objb; j = j + 1)
                        {
                          if (*v193 != v181)
                          {
                            objc_enumerationMutation(v179);
                          }

                          v151 = *(*(&v192 + 1) + 8 * j);
                          if (([v151 isCurrentDevice] & 1) == 0)
                          {
                            capabilities = [v151 capabilities];
                            supportsKeyTransferClient = [capabilities supportsKeyTransferClient];

                            if (supportsKeyTransferClient)
                            {
                              v154 = objc_autoreleasePoolPush();
                              v155 = v139;
                              v156 = HMFGetOSLogHandle();
                              if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
                              {
                                v157 = HMFGetLogIdentifier();
                                identifier2 = [v151 identifier];
                                uUIDString3 = [identifier2 UUIDString];
                                *buf = 138543618;
                                v216 = v157;
                                v217 = 2112;
                                v218 = uUIDString3;
                                _os_log_impl(&dword_2531F8000, v156, OS_LOG_TYPE_DEFAULT, "%{public}@Broadcasting Completion to %@", buf, 0x16u);
                              }

                              objc_autoreleasePoolPop(v154);
                              v160 = [HMDRemoteDeviceMessageDestination alloc];
                              uuid = [(HMDKeyTransferAgent *)v155 uuid];
                              v162 = [(HMDRemoteDeviceMessageDestination *)v160 initWithTarget:uuid device:v151];

                              v163 = [HMDRemoteMessage alloc];
                              v205 = @"data";
                              v206 = uUIDString2;
                              v164 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v206 forKeys:&v205 count:1];
                              v165 = [(HMDRemoteMessage *)v163 initWithName:@"kResidentProvisioningStatusChangedNotificationKey" destination:v162 payload:v164 type:0 timeout:0 secure:1 restriction:0.0];

                              objc_initWeak(buf, v155);
                              v189[0] = MEMORY[0x277D85DD0];
                              v189[1] = 3221225472;
                              v189[2] = __60__HMDKeyTransferAgentServer__handleKeyTransferAgentMessage___block_invoke;
                              v189[3] = &unk_279733AE8;
                              objc_copyWeak(&v191, buf);
                              v166 = v162;
                              v190 = v166;
                              [(HMDRemoteMessage *)v165 setResponseHandler:v189];
                              messageDispatcher = [homeManager messageDispatcher];
                              [messageDispatcher sendMessage:v165 completionHandler:0];

                              objc_destroyWeak(&v191);
                              objc_destroyWeak(buf);
                            }
                          }
                        }

                        objb = [v179 countByEnumeratingWithState:&v192 objects:v207 count:16];
                      }

                      while (objb);
                    }
                  }

                  else
                  {
                    v169 = objc_autoreleasePoolPush();
                    v170 = v139;
                    v171 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
                    {
                      v172 = HMFGetLogIdentifier();
                      *buf = 138543362;
                      v216 = v172;
                      _os_log_impl(&dword_2531F8000, v171, OS_LOG_TYPE_DEFAULT, "%{public}@We lost our currentDevice (probably just got logged out unexpectedly).", buf, 0xCu);
                    }

                    objc_autoreleasePoolPop(v169);
                  }

                  [(HMDKeyTransferAgent *)v139 setProgressState:0];
                  [homeManager _updateCloudDataSyncWithAccountState:1];

                  responseHandler20 = 0;
                }

                else
                {
                  if (v141)
                  {
                    v168 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v216 = v168;
                    _os_log_impl(&dword_2531F8000, v140, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to save the key pair to keychain", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v138);
                  responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
                }
              }

              [(HMDKeyTransferAgentServer *)selfCopy _endPairingWithError:responseHandler20, v173];
            }

            else
            {
              v132 = objc_autoreleasePoolPush();
              v133 = selfCopy;
              v134 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
              {
                v135 = HMFGetLogIdentifier();
                *buf = 138543362;
                v216 = v135;
                _os_log_impl(&dword_2531F8000, v134, OS_LOG_TYPE_ERROR, "%{public}@Key pair (or username) is missing the resident key sync message", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v132);
              responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
              [(HMDKeyTransferAgentServer *)v133 _endPairingWithError:responseHandler20];
              responseHandler12 = [messageCopy responseHandler];

              if (responseHandler12)
              {
                responseHandler13 = [messageCopy responseHandler];
                (responseHandler13)[2](responseHandler13, responseHandler20, 0);
              }
            }

            goto LABEL_81;
          }

          v123 = objc_autoreleasePoolPush();
          v124 = selfCopy;
          v125 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
          {
            v126 = HMFGetLogIdentifier();
            *buf = 138543362;
            v216 = v126;
            _os_log_impl(&dword_2531F8000, v125, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (C0)", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v123);
          responseHandler14 = [messageCopy responseHandler];

          if (responseHandler14)
          {
            goto LABEL_96;
          }
        }

        else
        {
          v47 = objc_autoreleasePoolPush();
          v48 = selfCopy;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            v50 = HMFGetLogIdentifier();
            *buf = 138543362;
            v216 = v50;
            _os_log_impl(&dword_2531F8000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Out of order (C1)", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v47);
          responseHandler15 = [messageCopy responseHandler];

          if (responseHandler15)
          {
            goto LABEL_96;
          }
        }

        goto LABEL_97;
      }

      v83 = objc_autoreleasePoolPush();
      v84 = selfCopy;
      v85 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        v86 = HMFGetLogIdentifier();
        *buf = 138543362;
        v216 = v86;
        _os_log_impl(&dword_2531F8000, v85, OS_LOG_TYPE_ERROR, "%{public}@Private key not receieved via secure remote message. Failing.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v83);
      responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
      [(HMDKeyTransferAgentServer *)v84 _endPairingWithError:responseHandler20];
      responseHandler16 = [messageCopy responseHandler];

      if (!responseHandler16)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v70 = [messageCopy stringForKey:@"phase"];
      v71 = [v70 isEqualToString:@"broadcast"];

      v72 = objc_autoreleasePoolPush();
      v73 = selfCopy;
      v74 = HMFGetOSLogHandle();
      v75 = v74;
      if (!v71)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v103 = HMFGetLogIdentifier();
          v104 = [messageCopy stringForKey:@"phase"];
          *buf = 138543618;
          v216 = v103;
          v217 = 2112;
          v218 = v104;
          _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_ERROR, "%{public}@Unknown message key %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v72);
        responseHandler17 = [messageCopy responseHandler];

        if (!responseHandler17)
        {
          goto LABEL_97;
        }

        responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
        responseHandler5 = [messageCopy responseHandler];
        (*(responseHandler5 + 2))(responseHandler5, responseHandler20, 0);
LABEL_81:

LABEL_98:
        goto LABEL_99;
      }

      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
      {
        v76 = HMFGetLogIdentifier();
        *buf = 138543362;
        v216 = v76;
        _os_log_impl(&dword_2531F8000, v75, OS_LOG_TYPE_DEFAULT, "%{public}@Ignoring broadcast key on server.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v72);
      responseHandler20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
      responseHandler18 = [messageCopy responseHandler];

      if (!responseHandler18)
      {
        goto LABEL_98;
      }
    }

    responseHandler5 = [messageCopy responseHandler];
    (*(responseHandler5 + 2))(responseHandler5, responseHandler20, 0);
    goto LABEL_81;
  }

  v30 = objc_autoreleasePoolPush();
  v31 = selfCopy;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = HMFGetLogIdentifier();
    *buf = 138543362;
    v216 = v33;
    _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@Dropping message. Key transfer not in progress.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v30);
  responseHandler19 = [messageCopy responseHandler];

  if (responseHandler19)
  {
    responseHandler20 = [messageCopy responseHandler];
    (*(responseHandler20 + 2))(responseHandler20, 0, MEMORY[0x277CBEC10]);
LABEL_99:
  }
}

void __60__HMDKeyTransferAgentServer__handleKeyTransferAgentMessage___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v16 = 138543618;
      v17 = v12;
      v18 = 2112;
      v19 = v13;
      v14 = "%{public}@Unable to notify iOS device %@ that we have completed.";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, v14, &v16, 0x16u);
    }
  }

  else if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v15 = *(a1 + 32);
    v16 = 138543618;
    v17 = v12;
    v18 = 2112;
    v19 = v15;
    v14 = "%{public}@Notified iOS device %@ that we have completed.";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
}

- (void)_endPairingWithError:(id)error
{
  errorCopy = error;
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HMDKeyTransferAgentServer__endPairingWithError___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = errorCopy;
  selfCopy = self;
  v6 = errorCopy;
  dispatch_async(workQueue, v7);
}

void __50__HMDKeyTransferAgentServer__endPairingWithError___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v18 = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    v9 = "%{public}@Key transfer ended with error: %@";
    v10 = v5;
    v11 = 22;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v7;
    v9 = "%{public}@Key transfer ended with no issues.";
    v10 = v5;
    v11 = 12;
  }

  _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEFAULT, v9, &v18, v11);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  [*(a1 + 40) _endAdvertiseUUIDWithError:0];
  v12 = [*(a1 + 40) finalCompletionHandler];

  if (v12)
  {
    v13 = [*(a1 + 40) finalCompletionHandler];
    v13[2](v13, *(a1 + 32));
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Hit nil completion handler (this should not happen).", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)beginPairingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(workQueue, v7);
}

void __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) progressState];

  if (!v2)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke_32;
    aBlock[3] = &unk_279733F30;
    v9 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v17 = v9;
    v10 = _Block_copy(aBlock);
    [*(a1 + 32) setProgressState:@"ping"];
    v11 = *(a1 + 32);
    v15 = 0;
    v12 = [v11 _startAdvertiseUUIDWithError:&v15];
    v13 = v15;
    if (v12)
    {
      v14 = objc_msgSend_copy(v10);
      [*(a1 + 32) setFinalCompletionHandler:v14];
    }

    else
    {
      (*(v10 + 2))(v10, v13);
    }

    v8 = v17;
    goto LABEL_10;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_ERROR, "%{public}@Unable to submit pairing requests. One is already in progress", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:1 userInfo:0];
    (*(v7 + 16))(v7, v8);
LABEL_10:
  }
}

uint64_t __63__HMDKeyTransferAgentServer_beginPairingWithCompletionHandler___block_invoke_32(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 setProgressState:0];
}

- (id)_httpMessageTransport
{
  v16 = *MEMORY[0x277D85DE8];
  homeManager = [(HMDKeyTransferAgent *)self homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  secureRemoteTransport = [messageDispatcher secureRemoteTransport];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  transports = [secureRemoteTransport transports];
  v6 = [transports countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(transports);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [transports countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)__resetTimer:(id)timer
{
  v13 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v12 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting Key Transfer Agent.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  workQueue = [(HMDKeyTransferAgent *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDKeyTransferAgentServer___resetTimer___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

uint64_t __42__HMDKeyTransferAgentServer___resetTimer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) broadcastNotifiedDevices];
  [v2 removeAllObjects];

  [*(a1 + 32) setProgressState:0];
  v3 = *(a1 + 32);

  return [v3 _endAdvertiseUUIDWithError:0];
}

- (void)__deviceRemovedFromAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HMDKeyTransferAgentServer___deviceRemovedFromAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = accountCopy;
  v6 = accountCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __56__HMDKeyTransferAgentServer___deviceRemovedFromAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _device:v5 removedFromAccount:v8];
}

- (void)_device:(id)_device removedFromAccount:(id)account
{
  v29 = *MEMORY[0x277D85DE8];
  _deviceCopy = _device;
  accountCopy = account;
  identifier = [_deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (_deviceCopy && accountCopy && (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(accountCopy, "isEqual:", v11), v11, v10, (v12 & 1) != 0))
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      v23 = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = uUIDString;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was removed from the current account", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    broadcastNotifiedDevices = [(HMDKeyTransferAgentServer *)selfCopy broadcastNotifiedDevices];
    [broadcastNotifiedDevices addObject:_deviceCopy];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      shortDescription = [accountCopy shortDescription];
      v23 = 138543874;
      v24 = v21;
      v25 = 2112;
      v26 = uUIDString;
      v27 = 2112;
      v28 = shortDescription;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not removed from current account %@.", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
  }
}

- (void)__deviceUpdated:(id)updated
{
  updatedCopy = updated;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDKeyTransferAgentServer___deviceUpdated___block_invoke;
  block[3] = &unk_279732E78;
  v8 = updatedCopy;
  v6 = updatedCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__HMDKeyTransferAgentServer___deviceUpdated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v4 account];
  [WeakRetained _device:v4 addedToAccount:v5];
}

- (void)__deviceAddedToAccount:(id)account
{
  accountCopy = account;
  objc_initWeak(&location, self);
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HMDKeyTransferAgentServer___deviceAddedToAccount___block_invoke;
  block[3] = &unk_279732E78;
  v8 = accountCopy;
  v6 = accountCopy;
  objc_copyWeak(&v9, &location);
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __52__HMDKeyTransferAgentServer___deviceAddedToAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 valueForKey:@"HMDDeviceNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [*(a1 + 32) object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _device:v5 addedToAccount:v8];
}

- (void)_device:(id)_device addedToAccount:(id)account
{
  v30 = *MEMORY[0x277D85DE8];
  _deviceCopy = _device;
  accountCopy = account;
  identifier = [_deviceCopy identifier];
  uUIDString = [identifier UUIDString];

  if (!_deviceCopy || !accountCopy || (+[HMDAppleAccountManager sharedManager](HMDAppleAccountManager, "sharedManager"), v10 = objc_claimAutoreleasedReturnValue(), [v10 account], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(accountCopy, "isEqual:", v11), v11, v10, (v12 & 1) == 0))
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      objc_autoreleasePoolPop(v14);
      goto LABEL_12;
    }

    v22 = HMFGetLogIdentifier();
    shortDescription = [accountCopy shortDescription];
    v24 = 138543874;
    v25 = v22;
    v26 = 2112;
    v27 = uUIDString;
    v28 = 2112;
    v29 = shortDescription;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Device %@ not added / updated from current account %@.", &v24, 0x20u);

LABEL_10:
    goto LABEL_11;
  }

  progressState = [(HMDKeyTransferAgent *)self progressState];

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (!progressState)
  {
    if (!v17)
    {
      goto LABEL_11;
    }

    v22 = HMFGetLogIdentifier();
    v24 = 138543362;
    v25 = v22;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Not actively transferring keys. Ignoring device change message.", &v24, 0xCu);
    goto LABEL_10;
  }

  if (v17)
  {
    v18 = HMFGetLogIdentifier();
    v24 = 138543618;
    v25 = v18;
    v26 = 2112;
    v27 = uUIDString;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@Got notification that %@ was added to the current account (restarting broadcast timer)", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  broadcastNotifiedDevices = [(HMDKeyTransferAgentServer *)selfCopy2 broadcastNotifiedDevices];
  [broadcastNotifiedDevices removeObject:_deviceCopy];

  broadcastUUIDTimer = [(HMDKeyTransferAgentServer *)selfCopy2 broadcastUUIDTimer];
  [broadcastUUIDTimer reset];

  broadcastUUIDTimer2 = [(HMDKeyTransferAgentServer *)selfCopy2 broadcastUUIDTimer];
  [broadcastUUIDTimer2 resume];

LABEL_12:
}

- (void)timerDidFire:(id)fire
{
  workQueue = [(HMDKeyTransferAgent *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setBroadcastFailure:0];
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 account];
  v4 = [v3 devices];
  v5 = objc_msgSend_copy(v4);

  obj = v5;
  v47 = [v5 countByEnumeratingWithState:&v51 objects:v61 count:16];
  if (v47)
  {
    v46 = *v52;
    *&v6 = 138543618;
    v44 = v6;
    do
    {
      v7 = 0;
      do
      {
        if (*v52 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v51 + 1) + 8 * v7);
        v9 = [*(a1 + 32) broadcastNotifiedDevices];
        v10 = [v9 containsObject:v8];

        if ((v10 & 1) == 0)
        {
          if ([v8 isCurrentDevice])
          {
            v11 = objc_autoreleasePoolPush();
            v12 = *(a1 + 32);
            v13 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = HMFGetLogIdentifier();
              v15 = [v8 identifier];
              v16 = [v15 UUIDString];
              *buf = v44;
              v58 = v14;
              v59 = 2112;
              v60 = v16;
              _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@NOT Broadcasting UUID to %@ (don't broadcast to self (won't retry)).", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v11);
            v17 = [*(a1 + 32) broadcastNotifiedDevices];
            [(HMDRemoteDeviceMessageDestination *)v17 addObject:v8];
          }

          else
          {
            v18 = [v8 capabilities];
            v19 = [v18 supportsKeyTransferClient];

            v20 = objc_autoreleasePoolPush();
            v21 = *(a1 + 32);
            v22 = HMFGetOSLogHandle();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              if (v23)
              {
                v24 = HMFGetLogIdentifier();
                v25 = [v8 identifier];
                v26 = [v25 UUIDString];
                *buf = v44;
                v58 = v24;
                v59 = 2112;
                v60 = v26;
                _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Broadcasting UUID to %@", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v20);
              v27 = [HMDRemoteDeviceMessageDestination alloc];
              v28 = [*(a1 + 32) uuid];
              v17 = [(HMDRemoteDeviceMessageDestination *)v27 initWithTarget:v28 device:v8];

              v29 = [HMDRemoteMessage alloc];
              v55[0] = @"phase";
              v55[1] = @"data";
              v56[0] = @"broadcast";
              v30 = [*(a1 + 32) currentKeyUUID];
              v31 = [v30 UUIDString];
              v56[1] = v31;
              v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
              v33 = [(HMDRemoteMessage *)v29 initWithName:@"kKeyTransferAgentKey" destination:v17 payload:v32 type:0 timeout:0 secure:1 restriction:0.0];

              objc_initWeak(buf, *(a1 + 32));
              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_24;
              v49[3] = &unk_279735248;
              v49[4] = *(a1 + 32);
              objc_copyWeak(&v50, buf);
              v49[5] = v8;
              [(HMDRemoteMessage *)v33 setResponseHandler:v49];
              v34 = [*(a1 + 32) broadcastGroup];
              dispatch_group_enter(v34);

              v35 = [*(a1 + 32) homeManager];
              v36 = [v35 messageDispatcher];
              [v36 sendMessage:v33 completionHandler:0];

              objc_destroyWeak(&v50);
              objc_destroyWeak(buf);
            }

            else
            {
              if (v23)
              {
                v37 = HMFGetLogIdentifier();
                v38 = [v8 identifier];
                v39 = [v38 UUIDString];
                *buf = v44;
                v58 = v37;
                v59 = 2112;
                v60 = v39;
                _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@NOT Broadcasting UUID to %@ (doesn't support key transfer)", buf, 0x16u);
              }

              objc_autoreleasePoolPop(v20);
              v17 = [*(a1 + 32) broadcastNotifiedDevices];
              [(HMDRemoteDeviceMessageDestination *)v17 addObject:v8];
            }
          }
        }

        ++v7;
      }

      while (v47 != v7);
      v47 = [obj countByEnumeratingWithState:&v51 objects:v61 count:16];
    }

    while (v47);
  }

  v41 = *(a1 + 32);
  v40 = (a1 + 32);
  v42 = [v41 broadcastGroup];
  v43 = [*v40 workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2_27;
  block[3] = &unk_279735D00;
  block[4] = *v40;
  dispatch_group_notify(v42, v43, block);
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2;
  v6[3] = &unk_279733910;
  objc_copyWeak(&v9, (a1 + 48));
  v7 = v3;
  v8 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, v6);

  objc_destroyWeak(&v9);
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2_27(uint64_t a1)
{
  if (([*(a1 + 32) broadcastFailure] & 1) == 0)
  {
    v2 = [*(a1 + 32) broadcastUUIDTimer];
    [v2 reset];
  }
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_2(id *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained)
  {
    v3 = a1[4];
    if (!v3)
    {
      v6 = [a1[5] workQueue];
      v18 = MEMORY[0x277D85DD0];
      v19 = 3221225472;
      v20 = __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_25;
      v21 = &unk_2797359B0;
      v7 = WeakRetained;
      v8 = a1[6];
      v22 = v7;
      v23 = v8;
      dispatch_async(v6, &v18);

LABEL_12:
      v17 = [WeakRetained broadcastGroup];
      dispatch_group_leave(v17);

      goto LABEL_13;
    }

    v4 = [v3 domain];
    v5 = v4;
    if (v4 == *MEMORY[0x277CCFD28])
    {
      v9 = [a1[4] code];

      if (v9 == 3)
      {
        v10 = 0;
LABEL_9:
        [WeakRetained setBroadcastFailure:v10];
        v11 = objc_autoreleasePoolPush();
        v12 = a1[5];
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = HMFGetLogIdentifier();
          v15 = [a1[6] remoteDestinationString];
          v16 = a1[4];
          *buf = 138543874;
          v25 = v14;
          v26 = 2112;
          v27 = v15;
          v28 = 2112;
          v29 = v16;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Broadcast failed to %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v11);
        goto LABEL_12;
      }
    }

    else
    {
    }

    v10 = 1;
    goto LABEL_9;
  }

LABEL_13:
}

void __42__HMDKeyTransferAgentServer_timerDidFire___block_invoke_25(uint64_t a1)
{
  v2 = [*(a1 + 32) broadcastNotifiedDevices];
  [v2 addObject:*(a1 + 40)];
}

- (BOOL)_endAdvertiseUUIDWithError:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  _httpMessageTransport = [(HMDKeyTransferAgentServer *)self _httpMessageTransport];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    currentKeyUUID = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
    uUIDString = [currentKeyUUID UUIDString];
    v15 = 138543618;
    v16 = v9;
    v17 = 2112;
    v18 = uUIDString;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Ending UUID Advertisement (%@)", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  [_httpMessageTransport removeTXTRecordValueForKey:@"uuid"];
  broadcastUUIDTimer = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer suspend];

  broadcastUUIDTimer2 = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer2 reset];

  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)_startAdvertiseUUIDWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  _httpMessageTransport = [(HMDKeyTransferAgentServer *)self _httpMessageTransport];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = HMFGetLogIdentifier();
    currentKeyUUID = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
    uUIDString = [currentKeyUUID UUIDString];
    v21 = 138543618;
    v22 = v9;
    v23 = 2112;
    v24 = uUIDString;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Beginning UUID Advertisement (%@)", &v21, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  currentKeyUUID2 = [(HMDKeyTransferAgentServer *)selfCopy currentKeyUUID];
  uUIDString2 = [currentKeyUUID2 UUIDString];
  v14 = [uUIDString2 dataUsingEncoding:4];
  [_httpMessageTransport setTXTRecordValue:v14 forKey:@"uuid"];

  homeManager = [(HMDKeyTransferAgent *)selfCopy homeManager];
  [homeManager startLocalTransport];

  _httpMessageTransport2 = [(HMDKeyTransferAgentServer *)selfCopy _httpMessageTransport];
  [_httpMessageTransport2 setServerEnabled:1];

  broadcastNotifiedDevices = [(HMDKeyTransferAgentServer *)selfCopy broadcastNotifiedDevices];
  [broadcastNotifiedDevices removeAllObjects];

  broadcastUUIDTimer = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer reset];

  broadcastUUIDTimer2 = [(HMDKeyTransferAgentServer *)selfCopy broadcastUUIDTimer];
  [broadcastUUIDTimer2 resume];

  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)resetConfig
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Resetting Configuration (resetting any hosts we've broadcast keys to).", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  workQueue = [(HMDKeyTransferAgent *)selfCopy workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMDKeyTransferAgentServer_resetConfig__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(workQueue, block);
}

uint64_t __40__HMDKeyTransferAgentServer_resetConfig__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) broadcastNotifiedDevices];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);

  return [v3 setProgressState:0];
}

- (void)dealloc
{
  homeManager = [(HMDKeyTransferAgent *)self homeManager];
  messageDispatcher = [homeManager messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = HMDKeyTransferAgentServer;
  [(HMDKeyTransferAgentServer *)&v6 dealloc];
}

- (HMDKeyTransferAgentServer)initWithHomeManager:(id)manager
{
  v36 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  v32.receiver = self;
  v32.super_class = HMDKeyTransferAgentServer;
  v5 = [(HMDKeyTransferAgent *)&v32 initWithHomeManager:managerCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Creating KeyTransferAgent", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    uUID = [MEMORY[0x277CCAD78] UUID];
    currentKeyUUID = v7->_currentKeyUUID;
    v7->_currentKeyUUID = uUID;

    v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    broadcastNotifiedDevices = v7->_broadcastNotifiedDevices;
    v7->_broadcastNotifiedDevices = v12;

    v14 = dispatch_group_create();
    broadcastGroup = v7->_broadcastGroup;
    v7->_broadcastGroup = v14;

    v7->_broadcastFailure = 0;
    v16 = objc_alloc(MEMORY[0x277D0F7B0]);
    v17 = [v16 initWithMinimumTimeInterval:2 maximumTimeInterval:5 exponentialFactor:30.0 options:*&keyTransferBroadcastMaximumDelay];
    broadcastUUIDTimer = v7->_broadcastUUIDTimer;
    v7->_broadcastUUIDTimer = v17;

    [(HMFExponentialBackoffTimer *)v7->_broadcastUUIDTimer setDelegate:v7];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel___deviceAddedToAccount_ name:@"HMDAccountAddedDeviceNotification" object:0];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v7 selector:sel___deviceUpdated_ name:@"HMDDeviceUpdatedNotification" object:0];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v7 selector:sel___deviceRemovedFromAccount_ name:@"HMDAccountRemovedDeviceNotification" object:0];

    defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter4 addObserver:v7 selector:sel___resetTimer_ name:@"HMDHomeManagerKeyTransferResetTimerNotification" object:0];

    v23 = [HMDRemoteAccountMessageFilter alloc];
    messageDestination = [(HMDKeyTransferAgent *)v7 messageDestination];
    v25 = [(HMDRemoteAccountMessageFilter *)v23 initWithTarget:messageDestination];

    msgFilterChain = [managerCopy msgFilterChain];
    [msgFilterChain addMessageFilter:v25];

    v27 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
    [v27 setRequiresSecureMessage:0];
    [v27 setRequiresAccountMessage:1];
    [v27 setTransportRestriction:-1];
    v28 = objc_msgSend_copy(v27);
    messageDispatcher = [managerCopy messageDispatcher];
    v33 = v28;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    [messageDispatcher registerForMessage:@"kKeyTransferAgentKey" receiver:v7 policies:v30 selector:sel__handleKeyTransferAgentMessage_];
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t45 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t45, &__block_literal_global_105900);
  }

  v3 = logCategory__hmf_once_v46;

  return v3;
}

uint64_t __40__HMDKeyTransferAgentServer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v46;
  logCategory__hmf_once_v46 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (BOOL)isPeerAvailable
{
  v18 = *MEMORY[0x277D85DE8];
  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  productClass = [productInfo productClass];

  if (productClass == 4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = +[HMDAppleAccountManager sharedManager];
    account = [v4 account];
    devices = [account devices];

    v7 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(devices);
          }

          capabilities = [*(*(&v13 + 1) + 8 * i) capabilities];
          supportsKeyTransferClient = [capabilities supportsKeyTransferClient];

          if (supportsKeyTransferClient)
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end