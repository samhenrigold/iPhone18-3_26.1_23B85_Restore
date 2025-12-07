@interface HMDRemoteMessageFilter
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error;
@end

@implementation HMDRemoteMessageFilter

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies dispatcher:(id)dispatcher error:(id *)error
{
  v137 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  policiesCopy = policies;
  dispatcherCopy = dispatcher;
  if (messageCopy && [messageCopy isRemote])
  {
    v13 = [self requiredPolicyOfClass:objc_opt_class() fromPolicies:policiesCopy error:0];
    if (!v13)
    {
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = HMFGetLogIdentifier();
        identifier = [messageCopy identifier];
        *buf = 138543618;
        v132 = v21;
        v133 = 2114;
        v134 = identifier;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_ERROR, "%{public}@Missing remote policy for message %{public}@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v17 = -1;
      goto LABEL_114;
    }

    remoteRestriction = [messageCopy remoteRestriction];
    errorCopy = error;
    v121 = dispatcherCopy;
    if ([v13 transportRestriction] == -1)
    {
      v16 = 0;
      v15 = 1;
    }

    else
    {
      v15 = (remoteRestriction - 1) < 0xFFFFFFFFFFFFFFFELL;
      if ((remoteRestriction - 1) >= 0xFFFFFFFFFFFFFFFELL)
      {
        v23 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          transport = [messageCopy transport];
          [messageCopy identifier];
          v28 = v123 = v23;
          *buf = 138543874;
          v132 = v26;
          v133 = 2112;
          v134 = transport;
          v135 = 2114;
          v136 = v28;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          v23 = v123;
          dispatcherCopy = v121;

          error = errorCopy;
        }

        objc_autoreleasePoolPop(v23);
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1 description:0 reason:@"Invalid transport" suggestion:0];
        v15 = 0;
      }

      else
      {
        v16 = 0;
      }

      if (([v13 transportRestriction] & remoteRestriction) == 0)
      {
        v116 = v16;
        v29 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v31 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = HMFGetLogIdentifier();
          transport2 = [messageCopy transport];
          [messageCopy identifier];
          v34 = v124 = v29;
          *buf = 138543874;
          v132 = v32;
          v133 = 2112;
          v134 = transport2;
          v135 = 2114;
          v136 = v34;
          _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_ERROR, "%{public}@Invalid transport: %@ for message: %{public}@", buf, 0x20u);

          v29 = v124;
          error = errorCopy;

          dispatcherCopy = v121;
        }

        objc_autoreleasePoolPop(v29);
        v16 = v116;
        if (!v116)
        {
          v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17 description:0 reason:@"Invalid transport" suggestion:0];
        }

        v15 = 0;
      }
    }

    v122 = [policiesCopy hmf_objectPassingTest:&__block_literal_global_69821];
    if (remoteRestriction == 4)
    {
      +[HMDAppleAccountManager sharedManager];
    }

    else
    {
      [messageCopy remoteSourceDevice];
    }
    v35 = ;
    account = [v35 account];

    if ([v13 requiresSecureMessage])
    {
      if (([messageCopy isSecureRemote] & 1) == 0)
      {
        v37 = v16;
        v46 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v48 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = HMFGetLogIdentifier();
          identifier2 = [messageCopy identifier];
          *buf = 138543618;
          v132 = v49;
          v133 = 2114;
          v134 = identifier2;
          _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be secure", buf, 0x16u);

          error = errorCopy;
          dispatcherCopy = v121;
        }

        objc_autoreleasePoolPop(v46);
        if (!v37)
        {
          v43 = MEMORY[0x277CCA9B8];
          v44 = @"Message is required to be secure.";
          v45 = 17;
          goto LABEL_39;
        }

LABEL_37:
        v16 = v37;
LABEL_40:
        v15 = 0;
        goto LABEL_41;
      }

      if (([v13 allowsAnonymousMessage] & 1) == 0)
      {
        isCurrentAccount = [account isCurrentAccount];
        if (remoteRestriction != 4 && (isCurrentAccount & 1) == 0 && !v122)
        {
          v37 = v16;
          v38 = objc_autoreleasePoolPush();
          selfCopy5 = self;
          v40 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = HMFGetLogIdentifier();
            identifier3 = [messageCopy identifier];
            *buf = 138543618;
            v132 = v41;
            v133 = 2114;
            v134 = identifier3;
            _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Unable to authenticate message %{public}@, not our account and no user message policy", buf, 0x16u);

            error = errorCopy;
            dispatcherCopy = v121;
          }

          objc_autoreleasePoolPop(v38);
          if (!v37)
          {
            v43 = MEMORY[0x277CCA9B8];
            v44 = @"Unable to authenticate message.";
            v45 = 55;
LABEL_39:
            v16 = [v43 hmErrorWithCode:v45 description:0 reason:v44 suggestion:0];
            goto LABEL_40;
          }

          goto LABEL_37;
        }
      }
    }

LABEL_41:
    if (![v13 requiresAccountMessage])
    {
      goto LABEL_55;
    }

    if (account)
    {
      if ([account isCurrentAccount])
      {
        goto LABEL_55;
      }

      v117 = v16;
      v51 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v53 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = HMFGetLogIdentifier();
        identifier4 = [messageCopy identifier];
        shortDescription = [account shortDescription];
        *buf = 138543874;
        v132 = v54;
        v133 = 2114;
        v134 = identifier4;
        v135 = 2112;
        v136 = shortDescription;
        _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_ERROR, "%{public}@Message %{public}@ is required to be from the current account: %@", buf, 0x20u);

        error = errorCopy;
        dispatcherCopy = v121;
      }

      objc_autoreleasePoolPop(v51);
      v16 = v117;
      if (!v117)
      {
        v57 = MEMORY[0x277CCA9B8];
        v58 = @"Message is required to be from the current account";
        v59 = 17;
LABEL_53:
        v16 = [v57 hmErrorWithCode:v59 description:0 reason:v58 suggestion:0];
      }
    }

    else
    {
      v60 = v16;
      v61 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v63 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = HMFGetLogIdentifier();
        identifier5 = [messageCopy identifier];
        *buf = 138543618;
        v132 = v64;
        v133 = 2114;
        v134 = identifier5;
        _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Unable to determine the account of the message %{public}@", buf, 0x16u);

        error = errorCopy;
        dispatcherCopy = v121;
      }

      objc_autoreleasePoolPop(v61);
      if (!v60)
      {
        v57 = MEMORY[0x277CCA9B8];
        v58 = @"Unable to determine the account of the message";
        v59 = 2;
        goto LABEL_53;
      }

      v16 = v60;
    }

    v15 = 0;
LABEL_55:
    if (![v13 roles])
    {
LABEL_105:
      if (error)
      {
        if (v15)
        {
          v110 = 0;
        }

        else
        {
          v110 = v16;
        }

        *error = v110;
      }

      if (v15)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

LABEL_114:
      goto LABEL_115;
    }

    remoteSourceDevice = [messageCopy remoteSourceDevice];
    v118 = v16;
    v119 = v15;
    if (([v13 roles] & 1) == 0)
    {
      v67 = 0;
      goto LABEL_68;
    }

    if (remoteSourceDevice)
    {
      v68 = +[HMDCompanionManager sharedManager];
      companion = [v68 companion];
      v70 = [remoteSourceDevice isRelatedToDevice:companion];

      if (!v70)
      {
        v67 = 0;
        error = errorCopy;
        dispatcherCopy = v121;
        goto LABEL_68;
      }

      v71 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        v74 = HMFGetLogIdentifier();
        identifier6 = [messageCopy identifier];
        *buf = 138543618;
        v132 = v74;
        v133 = 2114;
        v134 = identifier6;
        v67 = 1;
        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from companion", buf, 0x16u);

        error = errorCopy;
        dispatcherCopy = v121;
      }

      else
      {
        error = errorCopy;
        dispatcherCopy = v121;
        v67 = 1;
      }
    }

    else
    {
      v71 = objc_autoreleasePoolPush();
      selfCopy9 = self;
      v73 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
      {
        v77 = HMFGetLogIdentifier();
        identifier7 = [messageCopy identifier];
        *buf = 138543618;
        v132 = v77;
        v133 = 2114;
        v134 = identifier7;
        _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

        error = errorCopy;
        dispatcherCopy = v121;
      }

      v67 = 0;
    }

    objc_autoreleasePoolPop(v71);
    v16 = v118;
    v15 = v119;
LABEL_68:
    if (([v13 roles] & 2) != 0)
    {
      v114 = v67;
      if (remoteSourceDevice)
      {
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v79 = +[HMDWatchManager sharedManager];
        watches = [v79 watches];

        v81 = [watches countByEnumeratingWithState:&v126 objects:v130 count:16];
        if (v81)
        {
          v82 = v81;
          v83 = *v127;
          while (2)
          {
            for (i = 0; i != v82; ++i)
            {
              if (*v127 != v83)
              {
                objc_enumerationMutation(watches);
              }

              if ([remoteSourceDevice isRelatedToDevice:*(*(&v126 + 1) + 8 * i)])
              {
                v85 = objc_autoreleasePoolPush();
                selfCopy10 = self;
                v87 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v88 = contexta = v85;
                  identifier8 = [messageCopy identifier];
                  *buf = 138543618;
                  v132 = v88;
                  v133 = 2114;
                  v134 = identifier8;
                  _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ is from watch", buf, 0x16u);

                  v85 = contexta;
                }

                objc_autoreleasePoolPop(v85);
                v16 = v118;
                v67 = v114 + 1;
                error = errorCopy;
                goto LABEL_83;
              }
            }

            v82 = [watches countByEnumeratingWithState:&v126 objects:v130 count:16];
            if (v82)
            {
              continue;
            }

            break;
          }

          error = errorCopy;
        }

        v67 = v114;
LABEL_83:

        dispatcherCopy = v121;
      }

      else
      {
        v90 = objc_autoreleasePoolPush();
        selfCopy11 = self;
        v92 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
        {
          v93 = HMFGetLogIdentifier();
          identifier9 = [messageCopy identifier];
          *buf = 138543618;
          v132 = v93;
          v133 = 2114;
          v134 = identifier9;
          _os_log_impl(&dword_2531F8000, v92, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the sender of message %{public}@", buf, 0x16u);

          error = errorCopy;
          dispatcherCopy = v121;
        }

        objc_autoreleasePoolPop(v90);
        v67 = v114;
        v16 = v118;
      }

      v15 = v119;
    }

    if (([v13 roles] & 4) != 0)
    {
      home = [v122 home];
      v96 = home;
      if (home)
      {
        if ([home isCurrentDeviceAvailableResident])
        {
          v97 = objc_autoreleasePoolPush();
          selfCopy12 = self;
          v99 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v99, OS_LOG_TYPE_DEBUG))
          {
            v100 = HMFGetLogIdentifier();
            identifier10 = [messageCopy identifier];
            *buf = 138543618;
            v132 = v100;
            v133 = 2114;
            v134 = identifier10;
            _os_log_impl(&dword_2531F8000, v99, OS_LOG_TYPE_DEBUG, "%{public}@Message %{public}@ is targeting resident", buf, 0x16u);

            error = errorCopy;
            dispatcherCopy = v121;
          }

          objc_autoreleasePoolPop(v97);
          v16 = v118;
          v15 = v119;
LABEL_104:

          goto LABEL_105;
        }
      }

      else
      {
        v115 = v67;
        context = objc_autoreleasePoolPush();
        selfCopy13 = self;
        v103 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
        {
          v104 = HMFGetLogIdentifier();
          *buf = 138543362;
          v132 = v104;
          _os_log_impl(&dword_2531F8000, v103, OS_LOG_TYPE_DEBUG, "%{public}@Unable to determine the home of the handler", buf, 0xCu);

          dispatcherCopy = v121;
        }

        objc_autoreleasePoolPop(context);
        v67 = v115;
        v16 = v118;
      }

      v15 = v119;
    }

    if (!v67)
    {
      v105 = objc_autoreleasePoolPush();
      selfCopy14 = self;
      v107 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        v108 = HMFGetLogIdentifier();
        identifier11 = [messageCopy identifier];
        *buf = 138543618;
        v132 = v108;
        v133 = 2114;
        v134 = identifier11;
        _os_log_impl(&dword_2531F8000, v107, OS_LOG_TYPE_ERROR, "%{public}@Failed to satisfy the role(s) for message %{public}@", buf, 0x16u);

        error = errorCopy;
        dispatcherCopy = v121;
      }

      objc_autoreleasePoolPop(v105);
      if (!v16)
      {
        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10 description:0 reason:@"Failed to satisfy the role(s)" suggestion:0];
      }

      v15 = 0;
    }

    goto LABEL_104;
  }

  v17 = 0;
LABEL_115:

  return v17;
}

uint64_t __70__HMDRemoteMessageFilter_filterMessage_withPolicies_dispatcher_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end