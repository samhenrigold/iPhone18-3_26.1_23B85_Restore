@interface HMDMediaActionRouter
- (HMDHome)home;
- (HMDMediaActionRouter)init;
- (HMDMediaActionRouter)initWithDataSource:(id)source;
- (HMDMediaActionRouterDataSource)dataSource;
- (HMDResidentDevice)targetResidentDeviceOverride;
- (NSUUID)messageTargetUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (id)mediaProfileWithUUID:(id)d;
- (id)targetResidentDeviceForExecutingMediaActionWithProfiles:(id)profiles targetSystemMediaApplication:(BOOL)application;
- (void)_registerForMessages;
- (void)dealloc;
- (void)executeMediaActionWithSessionData:(id)data completion:(id)completion;
- (void)gatherTargetDevicesForExecutingMediaActionWithProfiles:(id)profiles targetSystemMediaApplication:(BOOL)application outResidentDevicesInMediaAction:(id *)action outHomePodsInMediaAction:(id *)mediaAction outResidentDevicesSupportingMediaActions:(id *)actions outHomePodsSupportingMediaActions:(id *)mediaActions outNonOdeonHomePodsSupportingMediaActions:(id *)supportingMediaActions outNonOdeonResidentDevicesSupportingMediaActions:(id *)self0 outNonOdeonResidentDevicesInMediaAction:(id *)self1 outNonOdeonHomePodsInMediaAction:(id *)self2 dataSource:(id)self3;
- (void)handleNonResidentMediaActionExecutionWithSessionData:(id)data encodePlaybackArchive:(BOOL)archive completion:(id)completion;
- (void)routeMediaActionForExecution:(id)execution source:(unint64_t)source clientName:(id)name completion:(id)completion;
- (void)routeMessage:(id)message;
- (void)routeSessionDataForExecution:(id)execution encodePlaybackArchive:(BOOL)archive completion:(id)completion;
- (void)sendMediaActionMessageToCompanionWithSessionData:(id)data encodePlaybackArchive:(BOOL)archive completion:(id)completion;
- (void)sendMediaActionMessageToDevice:(id)device sessionData:(id)data encodePlaybackArchive:(BOOL)archive canForwardMessage:(BOOL)message completion:(id)completion;
- (void)sendMediaActionMessageToResident:(id)resident sessionData:(id)data encodePlaybackArchive:(BOOL)archive completion:(id)completion;
@end

@implementation HMDMediaActionRouter

- (HMDResidentDevice)targetResidentDeviceOverride
{
  WeakRetained = objc_loadWeakRetained(&self->_targetResidentDeviceOverride);

  return WeakRetained;
}

- (HMDMediaActionRouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id)mediaProfileWithUUID:(id)d
{
  dCopy = d;
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  v6 = [dataSource mediaProfileWithUUID:dCopy];

  return v6;
}

- (HMDHome)home
{
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  home = [dataSource home];

  return home;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  workQueue = [dataSource workQueue];

  return workQueue;
}

- (NSUUID)messageTargetUUID
{
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  uuid = [dataSource uuid];

  return uuid;
}

- (void)executeMediaActionWithSessionData:(id)data completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Running media action locally", &v13, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  mpcSessionController = [(HMDMediaActionRouter *)selfCopy mpcSessionController];
  [mpcSessionController executeSessionWithSessionData:dataCopy completion:completionCopy];
}

- (id)targetResidentDeviceForExecutingMediaActionWithProfiles:(id)profiles targetSystemMediaApplication:(BOOL)application
{
  applicationCopy = application;
  v167 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  if (WeakRetained)
  {
    targetResidentDeviceOverride = [(HMDMediaActionRouter *)self targetResidentDeviceOverride];
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (targetResidentDeviceOverride)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        identifier = [targetResidentDeviceOverride identifier];
        *buf = 138543618;
        v162 = v13;
        v163 = 2112;
        v164 = identifier;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@[Target Device] Picking resident device override: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      firstObject7 = targetResidentDeviceOverride;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v20 = HMFGetLogIdentifier();
        enabledResidents = [WeakRetained enabledResidents];
        *buf = 138543618;
        v162 = v20;
        v163 = 2112;
        v164 = enabledResidents;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Available residents: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v159 = 0;
      v160 = 0;
      v157 = 0;
      v158 = 0;
      v155 = 0;
      v156 = 0;
      v153 = 0;
      v154 = 0;
      [(HMDMediaActionRouter *)selfCopy gatherTargetDevicesForExecutingMediaActionWithProfiles:profilesCopy targetSystemMediaApplication:applicationCopy outResidentDevicesInMediaAction:&v160 outHomePodsInMediaAction:&v159 outResidentDevicesSupportingMediaActions:&v158 outHomePodsSupportingMediaActions:&v157 outNonOdeonHomePodsSupportingMediaActions:&v156 outNonOdeonResidentDevicesSupportingMediaActions:&v155 outNonOdeonResidentDevicesInMediaAction:&v154 outNonOdeonHomePodsInMediaAction:&v153 dataSource:WeakRetained];
      v148 = v160;
      v22 = v159;
      v146 = v158;
      v144 = v157;
      v23 = v156;
      v147 = v155;
      v24 = v154;
      v145 = v153;
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = profilesCopy;
        v30 = v22;
        v31 = [v146 count];
        v32 = [v148 count];
        *buf = 138543874;
        v162 = v28;
        v163 = 2048;
        v164 = v31;
        v22 = v30;
        profilesCopy = v29;
        targetResidentDeviceOverride = 0;
        v165 = 2048;
        v166 = v32;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Number of reachable residents: %lu, number of residents in action: %lu", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v33 = [v147 na_any:&__block_literal_global_35_89153];
      v34 = v33;
      if (v33)
      {
        v35 = [v23 na_any:&__block_literal_global_37_89154];
      }

      else
      {
        v35 = 0;
      }

      v36 = [v148 na_firstObjectPassingTest:&__block_literal_global_39_89155];
      if (v36)
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v26;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v132 = WeakRetained;
          v40 = v138 = v22;
          [v36 identifier];
          v42 = v41 = v23;
          *buf = 138543618;
          v162 = v40;
          v163 = 2112;
          v164 = v42;
          _os_log_impl(&dword_2531F8000, v39, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking current device since it is a resident and part of action: %@", buf, 0x16u);

          v23 = v41;
          WeakRetained = v132;
          v22 = v138;
        }

        objc_autoreleasePoolPop(v37);
        firstObject7 = v36;
      }

      else
      {
        firstObject = [v145 firstObject];
        if (firstObject)
        {
          v43 = objc_autoreleasePoolPush();
          v44 = v26;
          v45 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v133 = WeakRetained;
            v46 = v139 = v22;
            [firstObject identifier];
            v48 = v47 = v23;
            *buf = 138543618;
            v162 = v46;
            v163 = 2112;
            v164 = v48;
            _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking non-odeon HomePod in action: %@", buf, 0x16u);

            v23 = v47;
            WeakRetained = v133;
            v22 = v139;
          }

          objc_autoreleasePoolPop(v43);
          v49 = firstObject;
          firstObject7 = firstObject;
        }

        else
        {
          firstObject2 = [v24 firstObject];
          if (firstObject2)
          {
            v51 = firstObject2;
            context = objc_autoreleasePoolPush();
            v52 = v26;
            v53 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v134 = WeakRetained;
              v54 = v140 = v22;
              [v51 identifier];
              v56 = v55 = v23;
              *buf = 138543618;
              v162 = v54;
              v163 = 2112;
              v164 = v56;
              _os_log_impl(&dword_2531F8000, v53, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking non-odeon resident device in action: %@", buf, 0x16u);

              v23 = v55;
              WeakRetained = v134;
              v22 = v140;
            }

            objc_autoreleasePoolPop(context);
            v57 = v51;
            firstObject7 = v51;
            v49 = 0;
          }

          else
          {
            contexta = [v22 firstObject];
            if (contexta)
            {
              v58 = objc_autoreleasePoolPush();
              v59 = v26;
              v60 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v135 = WeakRetained;
                v61 = v141 = v22;
                [contexta identifier];
                v63 = v62 = v23;
                *buf = 138543618;
                v162 = v61;
                v163 = 2112;
                v164 = v63;
                _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking HomePod in action: %@", buf, 0x16u);

                v23 = v62;
                WeakRetained = v135;
                v22 = v141;
              }

              objc_autoreleasePoolPop(v58);
              v64 = contexta;
              v65 = contexta;
              firstObject7 = v64;
              v49 = 0;
              v57 = 0;
            }

            else
            {
              firstObject3 = [v148 firstObject];
              if (firstObject3)
              {
                v66 = objc_autoreleasePoolPush();
                v67 = v26;
                v68 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  HMFGetLogIdentifier();
                  v136 = WeakRetained;
                  v69 = v142 = v22;
                  [firstObject3 identifier];
                  v71 = v70 = v23;
                  *buf = 138543618;
                  v162 = v69;
                  v163 = 2112;
                  v164 = v71;
                  _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking resident device in action: %@", buf, 0x16u);

                  v23 = v70;
                  WeakRetained = v136;
                  v22 = v142;
                }

                objc_autoreleasePoolPop(v66);
                v72 = firstObject3;
                v73 = firstObject3;
                firstObject7 = v72;
                v49 = 0;
                v57 = 0;
              }

              else
              {
                v143 = v22;
                v151[0] = MEMORY[0x277D85DD0];
                v151[1] = 3221225472;
                v151[2] = __109__HMDMediaActionRouter_targetResidentDeviceForExecutingMediaActionWithProfiles_targetSystemMediaApplication___block_invoke_40;
                v151[3] = &__block_descriptor_33_e27_B16__0__HMDResidentDevice_8l;
                v152 = v35;
                v74 = [v146 na_firstObjectPassingTest:v151];
                if (v74)
                {
                  v75 = v74;
                  v76 = objc_autoreleasePoolPush();
                  v77 = v26;
                  v78 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
                  {
                    HMFGetLogIdentifier();
                    v79 = v137 = v76;
                    [v75 identifier];
                    v128 = v24;
                    v81 = v80 = v23;
                    *buf = 138543618;
                    v162 = v79;
                    v163 = 2112;
                    v164 = v81;
                    _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking current device since it is a HomePod and not part of action and is non-odeon: %@", buf, 0x16u);

                    v23 = v80;
                    v24 = v128;

                    v76 = v137;
                  }

                  objc_autoreleasePoolPop(v76);
                  v82 = v75;
                  v83 = v75;
                  firstObject7 = v82;
                  v22 = v143;
                  v49 = 0;
                  v57 = 0;
                }

                else
                {
                  firstObject4 = [v23 firstObject];
                  if (firstObject4)
                  {
                    v84 = objc_autoreleasePoolPush();
                    v85 = v26;
                    v86 = HMFGetOSLogHandle();
                    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
                    {
                      v87 = HMFGetLogIdentifier();
                      [firstObject4 identifier];
                      v129 = v24;
                      v89 = v88 = v23;
                      *buf = 138543618;
                      v162 = v87;
                      v163 = 2112;
                      v164 = v89;
                      _os_log_impl(&dword_2531F8000, v86, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking any non-odeon HomePod: %@", buf, 0x16u);

                      v23 = v88;
                      v24 = v129;
                    }

                    objc_autoreleasePoolPop(v84);
                    v90 = firstObject4;
                    v91 = firstObject4;
                    firstObject7 = v90;
                    v22 = v143;
                    v49 = 0;
                  }

                  else
                  {
                    v149[0] = MEMORY[0x277D85DD0];
                    v149[1] = 3221225472;
                    v149[2] = __109__HMDMediaActionRouter_targetResidentDeviceForExecutingMediaActionWithProfiles_targetSystemMediaApplication___block_invoke_41;
                    v149[3] = &__block_descriptor_33_e27_B16__0__HMDResidentDevice_8l;
                    v150 = v34;
                    v122 = [v146 na_firstObjectPassingTest:v149];
                    if (v122)
                    {
                      v92 = objc_autoreleasePoolPush();
                      v93 = v26;
                      v94 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
                      {
                        v95 = HMFGetLogIdentifier();
                        [v122 identifier];
                        v130 = v24;
                        v97 = v96 = v23;
                        *buf = 138543618;
                        v162 = v95;
                        v163 = 2112;
                        v164 = v97;
                        _os_log_impl(&dword_2531F8000, v94, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking current device since it is a resident and not part of action and is non-odeon: %@", buf, 0x16u);

                        v23 = v96;
                        v24 = v130;
                      }

                      objc_autoreleasePoolPop(v92);
                      v98 = v122;
                      firstObject7 = v122;
                      v22 = v143;
                    }

                    else
                    {
                      v131 = v24;
                      v99 = v23;
                      firstObject5 = [v144 firstObject];
                      if (firstObject5)
                      {
                        v101 = objc_autoreleasePoolPush();
                        v102 = v26;
                        v103 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
                        {
                          v104 = HMFGetLogIdentifier();
                          identifier2 = [firstObject5 identifier];
                          *buf = 138543618;
                          v162 = v104;
                          v163 = 2112;
                          v164 = identifier2;
                          _os_log_impl(&dword_2531F8000, v103, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking any HomePod resident: %@", buf, 0x16u);
                        }

                        objc_autoreleasePoolPop(v101);
                        firstObject7 = firstObject5;
                      }

                      else
                      {
                        firstObject6 = [v147 firstObject];
                        if (firstObject6)
                        {
                          v106 = objc_autoreleasePoolPush();
                          v107 = v26;
                          v108 = HMFGetOSLogHandle();
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
                          {
                            v109 = HMFGetLogIdentifier();
                            identifier3 = [firstObject6 identifier];
                            *buf = 138543618;
                            v162 = v109;
                            v163 = 2112;
                            v164 = identifier3;
                            _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking any non-odeon resident: %@", buf, 0x16u);
                          }

                          objc_autoreleasePoolPop(v106);
                          firstObject7 = firstObject6;
                        }

                        else
                        {
                          firstObject7 = [v146 firstObject];
                          v120 = objc_autoreleasePoolPush();
                          v111 = v26;
                          v112 = HMFGetOSLogHandle();
                          v113 = os_log_type_enabled(v112, OS_LOG_TYPE_INFO);
                          if (firstObject7)
                          {
                            if (v113)
                            {
                              v114 = HMFGetLogIdentifier();
                              identifier4 = [firstObject7 identifier];
                              *buf = 138543618;
                              v162 = v114;
                              v163 = 2112;
                              v164 = identifier4;
                              _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Picking any resident: %@", buf, 0x16u);
                            }

                            objc_autoreleasePoolPop(v120);
                            v116 = firstObject7;
                          }

                          else
                          {
                            if (v113)
                            {
                              v117 = HMFGetLogIdentifier();
                              v118 = [v146 count];
                              *buf = 138543618;
                              v162 = v117;
                              v163 = 2048;
                              v164 = v118;
                              _os_log_impl(&dword_2531F8000, v112, OS_LOG_TYPE_INFO, "%{public}@[Target Device] Couldn't find media action resident to route to, out of %lu candidates", buf, 0x16u);
                            }

                            objc_autoreleasePoolPop(v120);
                          }
                        }
                      }

                      v22 = v143;
                      v23 = v99;
                      v24 = v131;
                      v36 = 0;
                      v98 = 0;
                    }

                    v49 = 0;
                    v91 = 0;
                  }

                  v57 = 0;

                  v83 = 0;
                }

                v73 = 0;
              }

              v65 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v162 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid data source", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    firstObject7 = 0;
  }

  return firstObject7;
}

uint64_t __109__HMDMediaActionRouter_targetResidentDeviceForExecutingMediaActionWithProfiles_targetSystemMediaApplication___block_invoke_40(uint64_t a1, void *a2)
{
  if ([a2 isCurrentDevice])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t __109__HMDMediaActionRouter_targetResidentDeviceForExecutingMediaActionWithProfiles_targetSystemMediaApplication___block_invoke_41(uint64_t a1, void *a2)
{
  if ([a2 isCurrentDevice])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (void)gatherTargetDevicesForExecutingMediaActionWithProfiles:(id)profiles targetSystemMediaApplication:(BOOL)application outResidentDevicesInMediaAction:(id *)action outHomePodsInMediaAction:(id *)mediaAction outResidentDevicesSupportingMediaActions:(id *)actions outHomePodsSupportingMediaActions:(id *)mediaActions outNonOdeonHomePodsSupportingMediaActions:(id *)supportingMediaActions outNonOdeonResidentDevicesSupportingMediaActions:(id *)self0 outNonOdeonResidentDevicesInMediaAction:(id *)self1 outNonOdeonHomePodsInMediaAction:(id *)self2 dataSource:(id)self3
{
  v87 = *MEMORY[0x277D85DE8];
  profilesCopy = profiles;
  sourceCopy = source;
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = HMFGetLogIdentifier();
    enabledResidents = [sourceCopy enabledResidents];
    *buf = 138543618;
    v84 = v20;
    v85 = 2112;
    v86 = enabledResidents;
    _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Available residents: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  enabledResidents2 = [sourceCopy enabledResidents];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke;
  v80[3] = &unk_279729A80;
  applicationCopy = application;
  v81 = sourceCopy;
  v57 = sourceCopy;
  v23 = [enabledResidents2 na_filter:v80];

  appleMediaAccessories = [v57 appleMediaAccessories];
  v78[0] = MEMORY[0x277D85DD0];
  v78[1] = 3221225472;
  v78[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_2;
  v78[3] = &unk_27972AE10;
  v25 = appleMediaAccessories;
  v79 = v25;
  v55 = [v23 na_filter:v78];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_4;
  v76[3] = &unk_27972AE10;
  v26 = profilesCopy;
  v77 = v26;
  v27 = [v23 na_filter:v76];
  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_6;
  v74[3] = &unk_27972AE10;
  v28 = v26;
  v75 = v28;
  v29 = [v27 na_filter:v74];
  v30 = MEMORY[0x277CBEB98];
  v31 = [v25 na_map:&__block_literal_global_33_89175];
  v32 = [v30 setWithArray:v31];

  v33 = MEMORY[0x277CBEB98];
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_9;
  v72[3] = &unk_279729AC8;
  v73 = v32;
  v56 = v32;
  v34 = [v25 na_map:v72];
  v35 = [v33 setWithArray:v34];

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_10;
  v69[3] = &unk_279729B18;
  v36 = v28;
  v70 = v36;
  v37 = v35;
  v71 = v37;
  v38 = [v27 na_filter:v69];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_12;
  v67[3] = &unk_27972AE10;
  v68 = v36;
  v54 = v36;
  v39 = [v38 na_filter:v67];
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_14;
  v64[3] = &unk_279729B18;
  v40 = v25;
  v65 = v40;
  v66 = v37;
  v41 = v37;
  v42 = [v23 na_filter:v64];
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_16;
  v62[3] = &unk_27972AE10;
  v63 = v40;
  v43 = v40;
  v44 = [v42 na_filter:v62];
  v45 = v23;
  *actions = v23;
  v46 = v55;
  *mediaActions = v46;
  v47 = v46;
  v48 = v27;
  *action = v27;
  v49 = v29;
  *mediaAction = v29;
  v50 = v38;
  *inMediaAction = v38;
  v51 = v39;
  *podsInMediaAction = v39;
  v52 = v42;
  *devicesSupportingMediaActions = v42;
  v53 = v44;
  *supportingMediaActions = v44;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40) != 1)
  {
    if (![v3 supportsCustomMediaApplicationDestination])
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = [*(a1 + 32) isResidentReachable:v4];
    goto LABEL_6;
  }

  if ([v3 supportsMediaActions])
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 0;
LABEL_6:

  return v5;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_3;
  v8[3] = &unk_279734F10;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_5;
  v8[3] = &unk_27972A1E8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_7;
  v8[3] = &unk_27972A1E8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

id __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 audioDestination];
  v5 = [v4 uniqueIdentifier];

  if (v5 && [*(a1 + 32) containsObject:v5])
  {
    v6 = [v3 uuid];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_11;
  v8[3] = &unk_279729AF0;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_13;
  v8[3] = &unk_27972A1E8;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_15;
  v8[3] = &unk_279729B40;
  v9 = v3;
  v4 = *(a1 + 32);
  v10 = *(a1 + 40);
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_17;
  v8[3] = &unk_279734F10;
  v9 = v3;
  v5 = v3;
  v6 = [v4 na_any:v8];

  return v6;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHomePod])
  {
    v4 = [*(a1 + 32) device];
    v5 = [v4 identifier];
    v6 = [v3 device];
    v7 = [v6 identifier];
    v8 = [v5 hmf_isEqualToUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_15(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) device];
  v5 = [v4 identifier];
  v6 = [v3 device];
  v7 = [v6 identifier];
  if ([v5 hmf_isEqualToUUID:v7])
  {
    v8 = *(a1 + 40);
    v9 = [v3 uuid];
    v10 = [v8 containsObject:v9] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_13(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5 && [v5 isHomePod])
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    v10 = [v7 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5)
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    if ([v7 hmf_isEqualToUUID:v9])
    {
      v10 = *(a1 + 40);
      v11 = [v5 uuid];
      v12 = [v10 containsObject:v11] ^ 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 audioDestinationController];
  v3 = [v2 data];
  v4 = [v3 destinationIdentifier];

  return v4;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5 && [v5 isHomePod])
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    v10 = [v7 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 accessory];
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

  if (v5)
  {
    v6 = [*(a1 + 32) device];
    v7 = [v6 identifier];
    v8 = [v5 device];
    v9 = [v8 identifier];
    v10 = [v7 hmf_isEqualToUUID:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __415__HMDMediaActionRouter_gatherTargetDevicesForExecutingMediaActionWithProfiles_targetSystemMediaApplication_outResidentDevicesInMediaAction_outHomePodsInMediaAction_outResidentDevicesSupportingMediaActions_outHomePodsSupportingMediaActions_outNonOdeonHomePodsSupportingMediaActions_outNonOdeonResidentDevicesSupportingMediaActions_outNonOdeonResidentDevicesInMediaAction_outNonOdeonHomePodsInMediaAction_dataSource___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isHomePod])
  {
    v4 = [*(a1 + 32) device];
    v5 = [v4 identifier];
    v6 = [v3 device];
    v7 = [v6 identifier];
    v8 = [v5 hmf_isEqualToUUID:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)routeMessage:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [HMDMPCSessionData alloc];
  messagePayload = [messageCopy messagePayload];
  v7 = [(HMDMPCSessionData *)v5 initWithDictionaryRepresentation:messagePayload profileSource:self];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__HMDMediaActionRouter_routeMessage___block_invoke;
  aBlock[3] = &unk_2797359D8;
  v8 = messageCopy;
  v24 = v8;
  v9 = _Block_copy(aBlock);
  if (v7)
  {
    messagePayload2 = [v8 messagePayload];
    if ([messagePayload2 hmf_BOOLForKey:@"kDoNotForwardMessageKey"])
    {

LABEL_11:
      [(HMDMediaActionRouter *)self executeMediaActionWithSessionData:v7 completion:v9];
      goto LABEL_12;
    }

    messagePayload3 = [v8 messagePayload];
    v17 = [messagePayload3 objectForKeyedSubscript:@"kDoNotForwardMessageKey"];

    if (!v17)
    {
      goto LABEL_11;
    }

    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      remoteSourceDevice = [v8 remoteSourceDevice];
      *buf = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = remoteSourceDevice;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Forwarding media action for remote device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    [(HMDMediaActionRouter *)selfCopy routeSessionDataForExecution:v7 encodePlaybackArchive:1 completion:v9];
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2955];
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to route media action for execution, invalid message payload", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v9[2](v9, v11);
  }

LABEL_12:
}

void __37__HMDMediaActionRouter_routeMessage___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) responseHandler];

  if (v3)
  {
    v4 = [*(a1 + 32) responseHandler];
    (v4)[2](v4, v5, 0);
  }
}

- (void)sendMediaActionMessageToDevice:(id)device sessionData:(id)data encodePlaybackArchive:(BOOL)archive canForwardMessage:(BOOL)message completion:(id)completion
{
  messageCopy = message;
  archiveCopy = archive;
  v47 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  dataCopy = data;
  completionCopy = completion;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v18 = v36 = dataCopy;
    [deviceCopy name];
    v35 = archiveCopy;
    v20 = v19 = completionCopy;
    identifier = [deviceCopy identifier];
    v22 = HMFBooleanToString();
    *buf = 138544130;
    v40 = v18;
    v41 = 2112;
    v42 = v20;
    v43 = 2112;
    v44 = identifier;
    v45 = 2112;
    v46 = v22;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Sending media action to < %@ : %@ > canForward: %@", buf, 0x2Au);

    completionCopy = v19;
    archiveCopy = v35;

    dataCopy = v36;
  }

  objc_autoreleasePoolPop(v15);
  v23 = [dataCopy dictionaryRepresentation:archiveCopy];
  v24 = [v23 mutableCopy];

  v25 = [MEMORY[0x277CCABB0] numberWithBool:!messageCopy];
  [v24 setObject:v25 forKey:@"kDoNotForwardMessageKey"];

  dataSource = [(HMDMediaActionRouter *)selfCopy dataSource];
  v27 = [HMDRemoteDeviceMessageDestination alloc];
  uuid = [dataSource uuid];
  v29 = [(HMDRemoteDeviceMessageDestination *)v27 initWithTarget:uuid device:deviceCopy];

  v30 = MEMORY[0x277D0F848];
  v31 = objc_msgSend_copy(v24);
  v32 = [v30 messageWithName:@"HMDMAR.RouteMediaAction" qualityOfService:25 destination:v29 payload:v31];

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __118__HMDMediaActionRouter_sendMediaActionMessageToDevice_sessionData_encodePlaybackArchive_canForwardMessage_completion___block_invoke;
  v37[3] = &unk_279729A58;
  v38 = completionCopy;
  v33 = completionCopy;
  [v32 setResponseHandler:v37];
  [v32 setSecureRemote:1];
  msgDispatcher = [dataSource msgDispatcher];
  [msgDispatcher sendMessage:v32 completionHandler:0];
}

- (void)sendMediaActionMessageToCompanionWithSessionData:(id)data encodePlaybackArchive:(BOOL)archive completion:(id)completion
{
  archiveCopy = archive;
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  completionCopy = completion;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543362;
    v20 = v13;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Running media action on companion", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v10);
  dataSource = [(HMDMediaActionRouter *)selfCopy dataSource];
  companionDevice = [dataSource companionDevice];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __106__HMDMediaActionRouter_sendMediaActionMessageToCompanionWithSessionData_encodePlaybackArchive_completion___block_invoke;
  v17[3] = &unk_279733F30;
  v17[4] = selfCopy;
  v18 = completionCopy;
  v16 = completionCopy;
  [(HMDMediaActionRouter *)selfCopy sendMediaActionMessageToDevice:companionDevice sessionData:dataCopy encodePlaybackArchive:archiveCopy canForwardMessage:1 completion:v17];
}

void __106__HMDMediaActionRouter_sendMediaActionMessageToCompanionWithSessionData_encodePlaybackArchive_completion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Unable to execute media action on companion: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)sendMediaActionMessageToResident:(id)resident sessionData:(id)data encodePlaybackArchive:(BOOL)archive completion:(id)completion
{
  archiveCopy = archive;
  residentCopy = resident;
  dataCopy = data;
  completionCopy = completion;
  device = [residentCopy device];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__HMDMediaActionRouter_sendMediaActionMessageToResident_sessionData_encodePlaybackArchive_completion___block_invoke;
  v17[3] = &unk_279729A30;
  v17[4] = self;
  v18 = residentCopy;
  v21 = archiveCopy;
  v19 = dataCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = dataCopy;
  v16 = residentCopy;
  [(HMDMediaActionRouter *)self sendMediaActionMessageToDevice:device sessionData:v15 encodePlaybackArchive:archiveCopy canForwardMessage:0 completion:v17];
}

void __102__HMDMediaActionRouter_sendMediaActionMessageToResident_sessionData_encodePlaybackArchive_completion___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3 && ([*(a1 + 32) dataSource], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isResidentReachable:", *(a1 + 40)), v4, (v5 & 1) == 0))
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) device];
      v11 = [v10 name];
      v12 = [*(a1 + 40) identifier];
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Device < %@ : %@ > unreachable, rerouting", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [*(a1 + 32) routeSessionDataForExecution:*(a1 + 48) encodePlaybackArchive:*(a1 + 64) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)handleNonResidentMediaActionExecutionWithSessionData:(id)data encodePlaybackArchive:(BOOL)archive completion:(id)completion
{
  archiveCopy = archive;
  dataCopy = data;
  completionCopy = completion;
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  if (isWatch() && [dataSource isCompanionReachable] && (objc_msgSend(dataSource, "companionDevice"), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __110__HMDMediaActionRouter_handleNonResidentMediaActionExecutionWithSessionData_encodePlaybackArchive_completion___block_invoke;
    v12[3] = &unk_279735168;
    v12[4] = self;
    v13 = dataCopy;
    v14 = completionCopy;
    [(HMDMediaActionRouter *)self sendMediaActionMessageToCompanionWithSessionData:v13 encodePlaybackArchive:archiveCopy completion:v12];
  }

  else
  {
    [(HMDMediaActionRouter *)self executeMediaActionWithSessionData:dataCopy completion:completionCopy];
  }
}

uint64_t __110__HMDMediaActionRouter_handleNonResidentMediaActionExecutionWithSessionData_encodePlaybackArchive_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) executeMediaActionWithSessionData:*(a1 + 40) completion:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)routeSessionDataForExecution:(id)execution encodePlaybackArchive:(BOOL)archive completion:(id)completion
{
  archiveCopy = archive;
  v20 = *MEMORY[0x277D85DE8];
  executionCopy = execution;
  completionCopy = completion;
  if (executionCopy)
  {
    playbackArchiveTargetsSystemMediaApplication = [executionCopy playbackArchiveTargetsSystemMediaApplication];
    mediaProfiles = [executionCopy mediaProfiles];
    v12 = [(HMDMediaActionRouter *)self targetResidentDeviceForExecutingMediaActionWithProfiles:mediaProfiles targetSystemMediaApplication:playbackArchiveTargetsSystemMediaApplication];

    if (v12 && ![v12 isCurrentDevice])
    {
      [(HMDMediaActionRouter *)self sendMediaActionMessageToResident:v12 sessionData:executionCopy encodePlaybackArchive:archiveCopy completion:completionCopy];
    }

    else
    {
      [(HMDMediaActionRouter *)self handleNonResidentMediaActionExecutionWithSessionData:executionCopy encodePlaybackArchive:archiveCopy completion:completionCopy];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2955];
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Failed to package media action for execution, invalid message payload", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    completionCopy[2](completionCopy, v13);
  }
}

- (void)routeMediaActionForExecution:(id)execution source:(unint64_t)source clientName:(id)name completion:(id)completion
{
  executionCopy = execution;
  nameCopy = name;
  completionCopy = completion;
  v11 = [HMDMPCSessionData alloc];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  v25 = [(HMDMPCSessionData *)v11 initWithMediaAction:executionCopy source:v12 clientName:nameCopy];

  mediaProfiles = [executionCopy mediaProfiles];
  v14 = [mediaProfiles na_map:&__block_literal_global_89194];

  v15 = [HMDMediaPlaybackActionEvent alloc];
  playbackArchive = [executionCopy playbackArchive];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(executionCopy, "state")}];
  volume = [executionCopy volume];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  allObjects = [v14 allObjects];
  v21 = [(HMDMediaPlaybackActionEvent *)v15 initWithIsPlaybackArchivePresent:playbackArchive != 0 playbackStateNumber:v17 volumeNumber:volume sourceNumber:v19 sourceClientName:nameCopy accessories:allObjects];

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__HMDMediaActionRouter_routeMediaActionForExecution_source_clientName_completion___block_invoke_2;
  aBlock[3] = &unk_2797346E0;
  objc_copyWeak(&v31, &location);
  v22 = v21;
  v29 = v22;
  v23 = completionCopy;
  v30 = v23;
  v24 = _Block_copy(aBlock);
  -[HMDMediaActionRouter routeSessionDataForExecution:encodePlaybackArchive:completion:](self, "routeSessionDataForExecution:encodePlaybackArchive:completion:", v25, [executionCopy encodePlaybackArchiveForExecution], v24);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

void __82__HMDMediaActionRouter_routeMediaActionForExecution_source_clientName_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained dataSource];
  v5 = [v4 logEventSubmitter];
  [v5 submitLogEvent:*(a1 + 32) error:v3];

  (*(*(a1 + 40) + 16))();
}

- (void)_registerForMessages
{
  v9[2] = *MEMORY[0x277D85DE8];
  dataSource = [(HMDMediaActionRouter *)self dataSource];
  home = [dataSource home];
  if (!isWatch() && home)
  {
    msgDispatcher = [dataSource msgDispatcher];
    v6 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v9[0] = v6;
    v7 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:0 remoteAccessRequired:1];
    v9[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    [msgDispatcher registerForMessage:@"HMDMAR.RouteMediaAction" receiver:self policies:v8 selector:sel_routeMessage_];
  }
}

- (void)dealloc
{
  if (!isWatch())
  {
    dataSource = [(HMDMediaActionRouter *)self dataSource];
    msgDispatcher = [dataSource msgDispatcher];
    [msgDispatcher deregisterForMessage:@"HMDMAR.RouteMediaAction" receiver:self];
  }

  v5.receiver = self;
  v5.super_class = HMDMediaActionRouter;
  [(HMDMediaActionRouter *)&v5 dealloc];
}

- (HMDMediaActionRouter)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMDMediaActionRouter)initWithDataSource:(id)source
{
  v63 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v53.receiver = self;
  v53.super_class = HMDMediaActionRouter;
  v5 = [(HMDMediaActionRouter *)&v53 init];
  if (v5)
  {
    v6 = [HMDMPCSessionController alloc];
    logEventSubmitter = [sourceCopy logEventSubmitter];
    v8 = [(HMDMPCSessionController *)v6 initWithLogEventSubmitter:logEventSubmitter];
    mpcSessionController = v5->_mpcSessionController;
    v5->_mpcSessionController = v8;

    objc_storeWeak(&v5->_dataSource, sourceCopy);
    [(HMDMediaActionRouter *)v5 _registerForMessages];
    if (isInternalBuild())
    {
      home = [sourceCopy home];
      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      v12 = [mEMORY[0x277D0F8D0] preferenceForKey:@"TargetResidentDeviceForMediaActions"];
      stringValue = [v12 stringValue];

      v14 = stringValue;
      v47 = v5;
      if (stringValue)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = sourceCopy;
        obj = [sourceCopy enabledResidents];
        v15 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v50;
          v45 = home;
LABEL_6:
          v18 = 0;
          while (1)
          {
            if (*v50 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v49 + 1) + 8 * v18);
            device = [v19 device];
            name = [device name];
            if ([name isEqualToString:v14])
            {
              break;
            }

            identifier = [v19 identifier];
            uUIDString = [identifier UUIDString];
            v24 = v14;
            v25 = [uUIDString isEqualToString:v14];

            if (v25)
            {
              goto LABEL_19;
            }

            ++v18;
            v14 = v24;
            if (v16 == v18)
            {
              v16 = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
              home = v45;
              if (v16)
              {
                goto LABEL_6;
              }

              goto LABEL_13;
            }
          }

          v24 = v14;

LABEL_19:
          v34 = objc_autoreleasePoolPush();
          v35 = v47;
          v36 = HMFGetOSLogHandle();
          home = v45;
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v37 = v44 = v34;
            name2 = [v45 name];
            device2 = [v19 device];
            name3 = [device2 name];
            identifier2 = [v19 identifier];
            uUIDString2 = [identifier2 UUIDString];
            *buf = 138544130;
            v55 = v37;
            v56 = 2112;
            v57 = name2;
            v58 = 2112;
            v59 = name3;
            v60 = 2112;
            v61 = uUIDString2;
            _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@For home %@, always using resident %@:%@ to execute Media Action scenes", buf, 0x2Au);

            v34 = v44;
          }

          objc_autoreleasePoolPop(v34);
          v33 = v19;

          objc_storeWeak(v35 + 3, v33);
          sourceCopy = v46;
          v5 = v47;
          if (!v33)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }

LABEL_13:

        sourceCopy = v46;
        v5 = v47;
      }

      v24 = v14;
      objc_storeWeak(&v5->_targetResidentDeviceOverride, 0);
LABEL_15:
      v26 = objc_autoreleasePoolPush();
      v27 = v5;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = HMFGetLogIdentifier();
        name4 = [home name];
        uuid = [home uuid];
        uUIDString3 = [uuid UUIDString];
        *buf = 138544130;
        v55 = v29;
        v56 = 2112;
        v57 = v24;
        v58 = 2112;
        v59 = name4;
        v60 = 2112;
        v61 = uUIDString3;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@Couldn't find TargetResidentDevice %@ in home %@:%@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v26);
      v33 = 0;
      v5 = v47;
LABEL_22:
    }
  }

  return v5;
}

@end