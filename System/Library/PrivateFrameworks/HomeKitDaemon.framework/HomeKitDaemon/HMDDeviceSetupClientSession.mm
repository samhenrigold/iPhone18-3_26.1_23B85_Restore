@interface HMDDeviceSetupClientSession
+ (BOOL)isSupported;
+ (id)allowedClasses;
+ (id)logCategory;
- (BOOL)processSessionData:(id)data outAccessoryUUID:(id *)d outAccessoryCategory:(id *)category outAccessoryIDSIdentifier:(id *)identifier error:(id *)error;
- (HMDDeviceSetupClientSession)initWithHomeManager:(id)manager userDefaults:(id)defaults sessionIdentifier:(id)identifier;
@end

@implementation HMDDeviceSetupClientSession

- (BOOL)processSessionData:(id)data outAccessoryUUID:(id *)d outAccessoryCategory:(id *)category outAccessoryIDSIdentifier:(id *)identifier error:(id *)error
{
  v200 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_229538000, logger, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ClientDeviceSessionProcess", "", buf, 2u);
  }

  if (!dataCopy)
  {
    v20 = 0;
LABEL_13:
    homeManager = [(HMDDeviceSetupSessionInternal *)self homeManager];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    state = [(HMDDeviceSetupSessionInternal *)self state];
    if (state != 2)
    {
      if (state == 1)
      {
        v186 = 0;
        v33 = [homeManager getOrCreateLocalPairingIdentity:&v186];
        v34 = v186;
        if (!v34 && v33)
        {
          v185 = dataCopy;
          v179 = v33;
          v35 = objc_autoreleasePoolPush();
          selfCopy = self;
          v37 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = HMFGetLogIdentifier();
            *buf = 138543618;
            v191 = v38;
            v192 = 2112;
            v193 = v33;
            _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@Sending local pairing identity: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
          systemStore = [MEMORY[0x277CFEC78] systemStore];
          getPreferredHH2ControllerKey = [systemStore getPreferredHH2ControllerKey];

          v182 = getPreferredHH2ControllerKey;
          if (!getPreferredHH2ControllerKey)
          {
            v41 = objc_autoreleasePoolPush();
            v42 = selfCopy;
            v43 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              HMFGetLogIdentifier();
              v45 = v44 = dictionary;
              *buf = 138543362;
              v191 = v45;
              _os_log_impl(&dword_229538000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@Its very strange that we are running in HH2 mode but we do not have HH2 pairing key. This will not fail TTSU as the HH2 key will be created by the newly setup device.", buf, 0xCu);

              dictionary = v44;
            }

            objc_autoreleasePoolPop(v41);
          }

          [dictionary setObject:getPreferredHH2ControllerKey forKeyedSubscript:@"pi.hh2"];
          [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"mi.hh2"];
          homes = [homeManager homes];
          firstObject = [homes firstObject];
          v48 = 0x277CCA000;
          v174 = firstObject;
          v176 = dictionary;
          if ([homes count] == 1 && firstObject)
          {
            v171 = homes;
            residentDeviceManager = [firstObject residentDeviceManager];
            residentDevices = [residentDeviceManager residentDevices];
            v51 = [residentDevices na_any:&__block_literal_global_324];

            appleMediaAccessories = [firstObject appleMediaAccessories];
            v53 = [appleMediaAccessories na_any:&__block_literal_global_327];

            v54 = v51 | v53;
            context = objc_autoreleasePoolPush();
            v55 = selfCopy;
            v56 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v166 = HMFGetLogIdentifier();
              v161 = HMFBooleanToString();
              shortDescription = [v174 shortDescription];
              v163 = HMFBooleanToString();
              v57 = HMFBooleanToString();
              *buf = 138544386;
              v191 = v166;
              v192 = 2112;
              v193 = v161;
              v194 = 2112;
              v195 = shortDescription;
              v196 = 2112;
              v197 = v163;
              v198 = 2112;
              v199 = v57;
              _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@Sending home has reachable resident value: %@ as part of payload (home: %@, hasReachableResident: %@, hasReachableAppleMediaAccessory: %@)", buf, 0x34u);

              v48 = 0x277CCA000uLL;
            }

            objc_autoreleasePoolPop(context);
            v58 = [*(v48 + 2992) numberWithBool:v54 & 1];
            dictionary = v176;
            [v176 setObject:v58 forKeyedSubscript:@"rpr"];

            homes = v171;
          }

          v59 = [*(v48 + 2992) numberWithInteger:{-[HMDDeviceSetupSessionInternal state](selfCopy, "state", shortDescription)}];
          [dictionary setObject:v59 forKeyedSubscript:@"st"];

          [dictionary setObject:v179 forKeyedSubscript:@"pi"];
          v60 = *(v48 + 2992);
          hh2FrameworkSwitch = [homeManager hh2FrameworkSwitch];
          v62 = [v60 numberWithBool:{objc_msgSend(hh2FrameworkSwitch, "checkExistenceOfHH2SentinelZone")}];
          [dictionary setObject:v62 forKeyedSubscript:@"sz.hh2"];

          sessionIdentifier = [(HMDDeviceSetupClientSession *)selfCopy sessionIdentifier];
          uUIDString = [sessionIdentifier UUIDString];

          v65 = objc_autoreleasePoolPush();
          v66 = selfCopy;
          v67 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = HMFGetLogIdentifier();
            *buf = 138543618;
            v191 = v68;
            v192 = 2112;
            v193 = uUIDString;
            _os_log_impl(&dword_229538000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@Sending setup session identifier %@ as part of payload", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v65);
          [dictionary setObject:uUIDString forKeyedSubscript:@"session.id"];
          mediaSystemHints = [homeManager mediaSystemHints];

          if (mediaSystemHints)
          {
            v172 = uUIDString;
            v70 = objc_autoreleasePoolPush();
            v71 = v66;
            v72 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              v73 = HMFGetLogIdentifier();
              [homeManager mediaSystemHints];
              v75 = v74 = homes;
              *buf = 138543618;
              v191 = v73;
              v192 = 2112;
              v193 = v75;
              _os_log_impl(&dword_229538000, v72, OS_LOG_TYPE_DEFAULT, "%{public}@Sending media system hints %@", buf, 0x16u);

              homes = v74;
            }

            objc_autoreleasePoolPop(v70);
            mediaSystemHints2 = [homeManager mediaSystemHints];
            mediaSystemHomeUUIDString = [mediaSystemHints2 mediaSystemHomeUUIDString];
            dictionary = v176;
            [v176 setObject:mediaSystemHomeUUIDString forKeyedSubscript:*MEMORY[0x277CD2450]];

            mediaSystemHints3 = [homeManager mediaSystemHints];
            mediaSystemUUIDString = [mediaSystemHints3 mediaSystemUUIDString];
            [v176 setObject:mediaSystemUUIDString forKeyedSubscript:*MEMORY[0x277CD2470]];

            mediaSystemHints4 = [homeManager mediaSystemHints];
            peerAccessoryUUIDString = [mediaSystemHints4 peerAccessoryUUIDString];
            [v176 setObject:peerAccessoryUUIDString forKeyedSubscript:*MEMORY[0x277CD24A0]];

            mediaSystemHints5 = [homeManager mediaSystemHints];
            peerAccessoryRoleString = [mediaSystemHints5 peerAccessoryRoleString];
            [v176 setObject:peerAccessoryRoleString forKeyedSubscript:*MEMORY[0x277CD2498]];

            uUIDString = v172;
          }

          [(HMDDeviceSetupSessionInternal *)v66 setState:2];

          v84 = v179;
          goto LABEL_111;
        }

        goto LABEL_92;
      }

      if (error)
      {
        v105 = MEMORY[0x277CCA9B8];
        v106 = 23;
LABEL_69:
        [v105 hmErrorWithCode:v106];
        *error = v87 = 0;
LABEL_116:

        goto LABEL_117;
      }

      goto LABEL_92;
    }

    if (!v20)
    {
      v107 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v109 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
      {
        v110 = HMFGetLogIdentifier();
        state2 = [(HMDDeviceSetupSessionInternal *)selfCopy2 state];
        *buf = 138543618;
        v191 = v110;
        v192 = 2048;
        v193 = state2;
        _os_log_impl(&dword_229538000, v109, OS_LOG_TYPE_DEFAULT, "%{public}@Invalid request state: %tu", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v107);
      if (error)
      {
        v105 = MEMORY[0x277CCA9B8];
        v106 = 58;
        goto LABEL_69;
      }

LABEL_92:
      v87 = 0;
      goto LABEL_116;
    }

    v185 = dataCopy;
    categoryCopy = category;
    v93 = [v20 objectForKeyedSubscript:@"ac"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v94 = v93;
    }

    else
    {
      v94 = 0;
    }

    v84 = v94;

    if (!v84)
    {
LABEL_110:
      [(HMDDeviceSetupSessionInternal *)self setState:3];
LABEL_111:

      if ([(HMDDeviceSetupSessionInternal *)self state]== 3)
      {
        v87 = 1;
        dataCopy = v185;
      }

      else
      {
        v154 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v156 = HMFGetOSLogHandle();
        dataCopy = v185;
        if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
        {
          v157 = HMFGetLogIdentifier();
          *buf = 138543618;
          v191 = v157;
          v192 = 2112;
          v193 = dictionary;
          _os_log_impl(&dword_229538000, v156, OS_LOG_TYPE_DEFAULT, "%{public}@Response: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v154);
        v158 = encodeRootObjectForRemote(dictionary, 0, 0);
        [(HMDDeviceSetupSessionInternal *)selfCopy3 setSessionData:v158];

        v87 = 1;
      }

      goto LABEL_116;
    }

    identifierCopy = identifier;
    v95 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v97 = HMFGetOSLogHandle();
    v175 = selfCopy4;
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v98 = HMFGetLogIdentifier();
      *buf = 138543618;
      v191 = v98;
      v192 = 2112;
      v193 = v84;
      _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_DEFAULT, "%{public}@Received accessory description: %@", buf, 0x16u);

      selfCopy4 = v175;
    }

    objc_autoreleasePoolPop(v95);
    v99 = v84;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v101 = v99;
    }

    else
    {
      v101 = 0;
    }

    v168 = v101;

    if ((isKindOfClass & 1) == 0)
    {
LABEL_105:
      accessoryBrowser = [homeManager accessoryBrowser];
      [accessoryBrowser addUnassociatedAccessory:v99 forDeviceSetup:1];

      if (d)
      {
        *d = [v99 uuid];
      }

      if (categoryCopy)
      {
        *categoryCopy = [v99 category];
      }

      v152 = encodeRootObjectForIncomingXPCMessage(v99, 0);
      v188 = *MEMORY[0x277CCEA00];
      v189 = v152;
      v153 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v189 forKeys:&v188 count:1];
      [(HMDDeviceSetupSessionInternal *)v175 setUserInfo:v153];

      goto LABEL_110;
    }

    v102 = [v20 objectForKeyedSubscript:@"hk"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v103 = v102;
    }

    else
    {
      v103 = 0;
    }

    v104 = v103;

    contexta = v99;
    v180 = v84;
    v162 = v104;
    if (v104)
    {
      v167 = [[HMDHomeKitVersion alloc] initWithString:v104];
    }

    else
    {
      v167 = 0;
    }

    v112 = objc_autoreleasePoolPush();
    v113 = v175;
    v114 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
    {
      v115 = HMFGetLogIdentifier();
      *buf = 138543618;
      v191 = v115;
      v192 = 2112;
      v193 = v167;
      _os_log_impl(&dword_229538000, v114, OS_LOG_TYPE_DEFAULT, "%{public}@Received accessory HomeKit version: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v112);
    v164 = +[HMDDeviceCapabilities supportedPairingCapabilities];
    minimumRequiredPairingSoftwareVersion = [contexta minimumRequiredPairingSoftwareVersion];
    if (minimumRequiredPairingSoftwareVersion)
    {
      v117 = +[HMDHomeKitVersion currentVersion];
      [contexta minimumRequiredPairingSoftwareVersion];
      v119 = v118 = dictionary;
      LODWORD(shortDescription) = [v117 isAtLeastVersion:v119];

      dictionary = v118;
    }

    else
    {
      LODWORD(shortDescription) = 1;
    }

    v120 = objc_autoreleasePoolPush();
    v121 = v113;
    v122 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      v123 = HMFGetLogIdentifier();
      HMFBooleanToString();
      v124 = v177 = dictionary;
      *buf = 138543874;
      v191 = v123;
      v192 = 2048;
      v193 = v164;
      v194 = 2112;
      v195 = v124;
      _os_log_impl(&dword_229538000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@Our pairing capabilities: 0x%lx, minimum software version satisfied: %@", buf, 0x20u);

      dictionary = v177;
    }

    objc_autoreleasePoolPop(v120);
    if ([contexta canPairGivenCapabilities:v164])
    {
      dataCopy = v185;
      if (shortDescription)
      {
        v125 = +[HMDHomeKitVersion version10];
        if ([(HMDHomeKitVersion *)v167 isAtLeastVersion:v125])
        {

LABEL_99:
          dCopy = d;
          v147 = objc_autoreleasePoolPush();
          v148 = v121;
          v149 = HMFGetOSLogHandle();
          v84 = v180;
          if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
          {
            v150 = HMFGetLogIdentifier();
            *buf = 138543362;
            v191 = v150;
            _os_log_impl(&dword_229538000, v149, OS_LOG_TYPE_DEFAULT, "%{public}@Accessory HomeKit version indicates HH2 support, continuing normally", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v147);
          d = dCopy;
          v99 = contexta;
LABEL_102:
          if (identifierCopy)
          {
            *identifierCopy = [v99 idsIdentifierString];
          }

          goto LABEL_105;
        }

        category = [contexta category];
        [category categoryType];
        v139 = v138 = dictionary;
        v165 = [v139 isEqualToString:*MEMORY[0x277CCE8B0]];

        dictionary = v138;
        if ((v165 & 1) == 0)
        {
          goto LABEL_99;
        }

        v140 = objc_autoreleasePoolPush();
        v141 = v121;
        v142 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
        {
          v143 = HMFGetLogIdentifier();
          *buf = 138543362;
          v191 = v143;
          _os_log_impl(&dword_229538000, v142, OS_LOG_TYPE_DEFAULT, "%{public}@Starting HomePod upgrade and pairing engine", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v140);
        legacyAccessoryPairingController = [homeManager legacyAccessoryPairingController];
        v99 = contexta;
        v145 = [legacyAccessoryPairingController pairAccessory:contexta];

        v84 = v180;
        if (v145)
        {
          goto LABEL_102;
        }

        dataCopy = v185;
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
        }

LABEL_91:

        goto LABEL_92;
      }

      v133 = objc_autoreleasePoolPush();
      v134 = v121;
      v135 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
      {
        v136 = HMFGetLogIdentifier();
        *buf = 138543362;
        v191 = v136;
        _os_log_impl(&dword_229538000, v135, OS_LOG_TYPE_ERROR, "%{public}@Pairing device does not have minimum software version required by accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v133);
      v99 = contexta;
      if (!error)
      {
        goto LABEL_91;
      }

      v130 = MEMORY[0x277CCA9B8];
      v131 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9026];
      v132 = @"Pairing device does not have minimum software version";
    }

    else
    {
      v126 = objc_autoreleasePoolPush();
      v127 = v121;
      v128 = HMFGetOSLogHandle();
      dataCopy = v185;
      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        v129 = HMFGetLogIdentifier();
        *buf = 138543362;
        v191 = v129;
        _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_ERROR, "%{public}@Cannot pair as pairing device does not have all required capabilities required by accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v126);
      v99 = contexta;
      if (!error)
      {
        goto LABEL_91;
      }

      v130 = MEMORY[0x277CCA9B8];
      v131 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:9025];
      v132 = @"Pairing device does not have all required capabilities";
    }

    *error = [v130 hmErrorWithCode:48 description:@"Pairing not supported" reason:v132 suggestion:0 underlyingError:{v131, shortDescription, v162}];

    goto LABEL_91;
  }

  dCopy2 = d;
  identifierCopy2 = identifier;
  errorCopy = error;
  categoryCopy2 = category;
  v15 = MEMORY[0x277CCAAC8];
  v16 = +[HMDDeviceSetupServerSession allowedClasses];
  v187 = 0;
  v17 = dataCopy;
  v18 = [v15 unarchivedObjectOfClasses:v16 fromData:dataCopy error:&v187];
  v19 = v187;

  v20 = v18;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  v23 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v25 = HMFGetOSLogHandle();
  v26 = v25;
  if (v22)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v191 = v27;
      v192 = 2112;
      v193 = v22;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Processing request: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v28 = [v22 hmf_numberForKey:@"st"];
    integerValue = [v28 integerValue];
    if (integerValue == [(HMDDeviceSetupSessionInternal *)selfCopy5 state])
    {

      category = categoryCopy2;
      dataCopy = v17;
      identifier = identifierCopy2;
      error = errorCopy;
      d = dCopy2;
      goto LABEL_13;
    }

    v88 = objc_autoreleasePoolPush();
    v89 = selfCopy5;
    v90 = HMFGetOSLogHandle();
    dataCopy = v17;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      v91 = HMFGetLogIdentifier();
      state3 = [(HMDDeviceSetupSessionInternal *)v89 state];
      *buf = 138543874;
      v191 = v91;
      v192 = 2112;
      v193 = v28;
      v194 = 2048;
      v195 = state3;
      _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@Request state number, %@, does not match expected state number: %tu", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v88);
    if (errorCopy)
    {
      *errorCopy = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    }

    v87 = 0;
    homeManager = v19;
  }

  else
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v85 = HMFGetLogIdentifier();
      *buf = 138543618;
      v191 = v85;
      v192 = 2112;
      v193 = v19;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive request payload from data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    if (errorCopy)
    {
      v86 = v19;
      v87 = 0;
      *errorCopy = v19;
    }

    else
    {
      v87 = 0;
    }

    homeManager = v20;
    v20 = v19;
    dataCopy = v17;
  }

LABEL_117:

  return v87;
}

- (HMDDeviceSetupClientSession)initWithHomeManager:(id)manager userDefaults:(id)defaults sessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = HMDDeviceSetupClientSession;
  v10 = [(HMDDeviceSetupSessionInternal *)&v14 initWithHomeManager:manager userDefaults:defaults];
  if (v10)
  {
    v11 = HMFGetOSLogHandle();
    logger = v10->_logger;
    v10->_logger = v11;

    objc_storeStrong(&v10->_sessionIdentifier, identifier);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t45 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t45, &__block_literal_global_341);
  }

  v3 = logCategory__hmf_once_v46;

  return v3;
}

void __42__HMDDeviceSetupClientSession_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v46;
  logCategory__hmf_once_v46 = v0;
}

+ (id)allowedClasses
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HMDDeviceSetupClientSession;
  v2 = objc_msgSendSuper2(&v6, sel_allowedClasses);
  v3 = [v2 mutableCopy];

  v7[0] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 addObjectsFromArray:v4];

  return v3;
}

+ (BOOL)isSupported
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsKeychainSync = [v2 supportsKeychainSync];

  return supportsKeychainSync;
}

@end