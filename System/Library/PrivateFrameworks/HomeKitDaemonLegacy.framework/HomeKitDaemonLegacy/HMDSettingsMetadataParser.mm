@interface HMDSettingsMetadataParser
+ (id)logCategory;
- (HMDSettingsControllerDependency)dependency;
- (HMDSettingsMetadataParser)initWithDependency:(id)dependency;
- (id)logIdentifier;
- (id)modelsFromMetadata:(id)metadata;
@end

@implementation HMDSettingsMetadataParser

- (HMDSettingsControllerDependency)dependency
{
  WeakRetained = objc_loadWeakRetained(&self->_dependency);

  return WeakRetained;
}

- (id)logIdentifier
{
  dependency = [(HMDSettingsMetadataParser *)self dependency];
  parentIdentifier = [dependency parentIdentifier];
  uUIDString = [parentIdentifier UUIDString];

  return uUIDString;
}

- (id)modelsFromMetadata:(id)metadata
{
  v185 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [metadataCopy hmf_dictionaryForKey:@"Info"];
  v7 = v6;
  if (!v6)
  {
    v98 = objc_autoreleasePoolPush();
    selfCopy = self;
    v100 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v101 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v101;
      _os_log_impl(&dword_2531F8000, v100, OS_LOG_TYPE_ERROR, "%{public}@Missing info section in metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v98);
    v97 = 0;
    goto LABEL_101;
  }

  v8 = [v6 hmf_numberForKey:@"Version"];
  v9 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (!v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v102 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v102;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Missing version number in metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    v97 = 0;
    goto LABEL_100;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v178 = v13;
    v179 = 2112;
    v180 = v8;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Loading setting version %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [metadataCopy hmf_dictionaryForKey:@"Data"];
  if (!v14)
  {
    v103 = objc_autoreleasePoolPush();
    v104 = selfCopy2;
    v105 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      v106 = HMFGetLogIdentifier();
      *buf = 138543362;
      v178 = v106;
      _os_log_impl(&dword_2531F8000, v105, OS_LOG_TYPE_ERROR, "%{public}@Missing data section in metadata", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v103);
    v97 = 0;
    goto LABEL_99;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v145 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v144 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v146 = selfCopy2;
  dependency = [(HMDSettingsMetadataParser *)selfCopy2 dependency];
  parentIdentifier = [dependency parentIdentifier];
  v156 = dependency;
  v18 = [dependency createSettingRootGroupModelWithParentModelID:parentIdentifier];

  [v15 addObject:v18];
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v175[0] = @"parentUUID";
  v137 = v18;
  hmbModelID = [v18 hmbModelID];
  v175[1] = @"group";
  v176[0] = hmbModelID;
  v176[1] = v14;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];
  [v19 addObject:v21];

  v154 = v19;
  v138 = v14;
  v155 = v15;
  if (![v19 count])
  {
LABEL_70:
    v89 = objc_autoreleasePoolPush();
    v90 = v146;
    v91 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      v92 = HMFGetLogIdentifier();
      v93 = v5;
      v94 = v8;
      v95 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v155, "count")}];
      v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v145, "count")}];
      *buf = 138543874;
      v178 = v92;
      v179 = 2112;
      v180 = v95;
      v181 = 2112;
      v182 = v96;
      _os_log_impl(&dword_2531F8000, v91, OS_LOG_TYPE_INFO, "%{public}@Parsed %@ groups and %@ settings", buf, 0x20u);

      v5 = v93;
      v15 = v155;

      v8 = v94;
      v14 = v138;
    }

    objc_autoreleasePoolPop(v89);
    [v5 addObjectsFromArray:v15];
    v83 = v145;
    [v5 addObjectsFromArray:v145];
    v84 = v144;
    [v5 addObjectsFromArray:v144];
    v97 = v5;
    goto LABEL_98;
  }

  *&v22 = 138544130;
  v129 = v22;
  v130 = v8;
  v131 = v5;
  while (1)
  {
    v23 = [v154 objectAtIndex:{0, v129}];
    v153 = [v23 hmf_UUIDForKey:@"parentUUID"];
    v132 = v23;
    v24 = [v23 hmf_dictionaryForKey:@"group"];
    [v154 removeObjectAtIndex:0];
    v135 = v24;
    v25 = [v24 hmf_arrayForKey:@"Groups"];
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v163 objects:v174 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v164;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v164 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v163 + 1) + 8 * i);
          v31 = [v30 hmf_stringForKey:@"Key"];
          v15 = v155;
          if (!v31)
          {
            v107 = objc_autoreleasePoolPush();
            v108 = v146;
            v109 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              v110 = HMFGetLogIdentifier();
              *buf = 138543618;
              v178 = v110;
              v179 = 2112;
              v180 = v30;
              _os_log_impl(&dword_2531F8000, v109, OS_LOG_TYPE_ERROR, "%{public}@A group is missing a name attribute: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v107);
            v97 = 0;
            v8 = v130;
            v5 = v131;
            v84 = v144;
            v83 = v145;
            goto LABEL_98;
          }

          v32 = v31;
          v33 = [v156 createSettingGroupModelWithName:v32 parent:v153];
          [v155 addObject:v33];
          v172[0] = @"parentUUID";
          hmbModelID2 = [v33 hmbModelID];
          v172[1] = @"group";
          v173[0] = hmbModelID2;
          v173[1] = v30;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v173 forKeys:v172 count:2];
          [v154 addObject:v35];
        }

        v27 = [obj countByEnumeratingWithState:&v163 objects:v174 count:16];
      }

      while (v27);
    }

    v36 = [v135 hmf_arrayForKey:@"Settings"];
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v136 = v36;
    v15 = v155;
    v139 = [v136 countByEnumeratingWithState:&v159 objects:v171 count:16];
    if (v139)
    {
      break;
    }

LABEL_69:

    v8 = v130;
    v5 = v131;
    if (![v154 count])
    {
      goto LABEL_70;
    }
  }

  v140 = *v160;
  v133 = v7;
  v134 = metadataCopy;
LABEL_18:
  v37 = 0;
  while (1)
  {
    if (*v160 != v140)
    {
      objc_enumerationMutation(v136);
    }

    v38 = *(*(&v159 + 1) + 8 * v37);
    v39 = [v38 hmf_stringForKey:@"Key"];
    v151 = v37;
    if (v39)
    {
      break;
    }

    v44 = v38;
    v45 = objc_autoreleasePoolPush();
    v46 = v146;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v178 = v48;
      v179 = 2112;
      v180 = v44;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_DEFAULT, "%{public}@A setting is missing a name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
LABEL_67:
    v37 = v151 + 1;
    if (v151 + 1 == v139)
    {
      v139 = [v136 countByEnumeratingWithState:&v159 objects:v171 count:16];
      if (!v139)
      {
        goto LABEL_69;
      }

      goto LABEL_18;
    }
  }

  v40 = v39;
  v41 = [v38 hmf_stringForKey:@"Type"];
  if (!v41)
  {
    v111 = v38;
    v112 = objc_autoreleasePoolPush();
    v113 = v146;
    v114 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v115 = HMFGetLogIdentifier();
      *buf = 138543618;
      v178 = v115;
      v179 = 2112;
      v180 = v111;
      _os_log_impl(&dword_2531F8000, v114, OS_LOG_TYPE_ERROR, "%{public}@A setting is missing type attribute %@", buf, 0x16u);
    }

    v143 = 0;
    goto LABEL_88;
  }

  v42 = v41;
  v143 = v42;
  if ([v42 isEqualToString:@"data"])
  {
    v43 = 1;
    goto LABEL_36;
  }

  if ([v42 isEqualToString:@"number"])
  {
    v43 = 2;
    goto LABEL_36;
  }

  if ([v42 isEqualToString:@"string"])
  {
    v43 = 3;
    goto LABEL_36;
  }

  if ([v42 isEqualToString:@"selection"])
  {
    v43 = 4;
    goto LABEL_36;
  }

  if (([v42 isEqualToString:@"collection"] & 1) == 0)
  {
    v126 = v38;

    v112 = objc_autoreleasePoolPush();
    v127 = v146;
    v114 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      v128 = HMFGetLogIdentifier();
      *buf = 138543618;
      v178 = v128;
      v179 = 2112;
      v180 = v126;
      _os_log_impl(&dword_2531F8000, v114, OS_LOG_TYPE_ERROR, "%{public}@Decoded setting with unrecognized type %@", buf, 0x16u);
    }

LABEL_88:
    v84 = v144;

    objc_autoreleasePoolPop(v112);
LABEL_96:

    v83 = v145;
    goto LABEL_97;
  }

  v43 = 5;
LABEL_36:
  v149 = v43;

  v148 = v38;
  v49 = [v38 hmf_arrayForKey:@"Properties"];
  if (!v49)
  {
    v116 = objc_autoreleasePoolPush();
    v117 = v146;
    v118 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
    {
      v119 = HMFGetLogIdentifier();
      *buf = v129;
      v178 = v119;
      v179 = 2112;
      v180 = v148;
      v181 = 2112;
      v182 = v40;
      v183 = 2112;
      v184 = 0;
      _os_log_impl(&dword_2531F8000, v118, OS_LOG_TYPE_ERROR, "%{public}@A setting is missing a required attribute %@ name: %@, propertiesArray %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v116);
    goto LABEL_95;
  }

  v50 = v49;
  v51 = [v49 containsObject:@"r"];
  v142 = v50;
  if ([v50 containsObject:@"w"])
  {
    v51 |= 2uLL;
  }

  v52 = [MEMORY[0x277CCABB0] numberWithInteger:v149];
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v51];
  v54 = [v156 createSettingModelWithName:v40 parent:v153 type:v52 properties:v53];

  if (!v54)
  {
    v120 = objc_autoreleasePoolPush();
    v121 = v146;
    v122 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
    {
      v123 = HMFGetLogIdentifier();
      v124 = [MEMORY[0x277CCABB0] numberWithInteger:v149];
      *buf = 138543874;
      v178 = v123;
      v179 = 2112;
      v180 = v40;
      v181 = 2112;
      v182 = v124;
      _os_log_impl(&dword_2531F8000, v122, OS_LOG_TYPE_ERROR, "%{public}@Unable to create setting model for setting %@ with type %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v120);
LABEL_95:
    v84 = v144;
    goto LABEL_96;
  }

  v141 = v40;
  v55 = [v148 hmf_arrayForKey:@"Constraints"];
  v147 = v54;
  hmbModelID3 = [v54 hmbModelID];
  v57 = v55;
  v58 = hmbModelID3;
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v157 = v57;
  v60 = [v157 countByEnumeratingWithState:&v167 objects:buf count:16];
  if (!v60)
  {
    goto LABEL_61;
  }

  v61 = v60;
  v62 = *v168;
  do
  {
    v63 = 0;
    do
    {
      if (*v168 != v62)
      {
        objc_enumerationMutation(v157);
      }

      v64 = *(*(&v167 + 1) + 8 * v63);
      v65 = [v64 hmf_stringForKey:@"Type"];
      if ([v65 isEqualToString:@"minimumValue"])
      {
        v66 = 1;
LABEL_51:

        v67 = [v64 objectForKey:@"Value"];
        v68 = [HMDSettingConstraintModel alloc];
        uUID = [MEMORY[0x277CCAD78] UUID];
        v70 = [(HMBModel *)v68 initWithModelID:uUID parentModelID:v58];

        v71 = [MEMORY[0x277CCABB0] numberWithInteger:v66];
        [(HMDSettingConstraintModel *)v70 setType:v71];

        [(HMDSettingConstraintModel *)v70 setNumberValue:v67];
LABEL_52:
        [v59 addObject:v70];

        goto LABEL_53;
      }

      if ([v65 isEqualToString:@"maximumValue"])
      {
        v66 = 2;
        goto LABEL_51;
      }

      if ([v65 isEqualToString:@"stepValue"])
      {
        v66 = 3;
        goto LABEL_51;
      }

      v72 = [v65 isEqualToString:@"validValue"];

      v67 = [v64 objectForKey:@"Value"];
      if (v72)
      {
        v73 = [HMDSettingConstraintModel alloc];
        uUID2 = [MEMORY[0x277CCAD78] UUID];
        v70 = [(HMBModel *)v73 initWithModelID:uUID2 parentModelID:v58];

        v75 = [MEMORY[0x277CCABB0] numberWithInteger:4];
        [(HMDSettingConstraintModel *)v70 setType:v75];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(HMDSettingConstraintModel *)v70 setDataValue:v67];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(HMDSettingConstraintModel *)v70 setStringValue:v67];
          }
        }

        goto LABEL_52;
      }

LABEL_53:

      ++v63;
    }

    while (v61 != v63);
    v76 = [v157 countByEnumeratingWithState:&v167 objects:buf count:16];
    v61 = v76;
  }

  while (v76);
LABEL_61:

  v77 = objc_msgSend_copy(v59);
  v78 = [v148 objectForKey:@"Value"];
  v79 = [MEMORY[0x277CCABB0] numberWithInteger:v149];
  v158 = 0;
  v80 = [v156 settingValueForValue:v78 type:v79 constraintModels:v77 error:&v158];
  v150 = v158;

  v81 = v147;
  v82 = [v147 setSettingValue:v80];
  if (v82)
  {
    v83 = v145;
    [v145 addObject:v147];
    v84 = v144;
    [v144 addObjectsFromArray:v77];
    v7 = v133;
    metadataCopy = v134;
    v14 = v138;
  }

  else
  {
    v85 = objc_autoreleasePoolPush();
    v86 = v146;
    v87 = HMFGetOSLogHandle();
    metadataCopy = v134;
    v83 = v145;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      v88 = HMFGetLogIdentifier();
      *buf = v129;
      v178 = v88;
      v179 = 2112;
      v180 = v78;
      v181 = 2112;
      v182 = v80;
      v183 = 2112;
      v184 = v147;
      _os_log_impl(&dword_2531F8000, v87, OS_LOG_TYPE_ERROR, "%{public}@Unable to set value %@(%@) on model %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v85);
    v7 = v133;
    v14 = v138;
    v84 = v144;
    v81 = v147;
  }

  v15 = v155;
  if (v82)
  {
    goto LABEL_67;
  }

LABEL_97:

  v97 = 0;
  v8 = v130;
  v5 = v131;
LABEL_98:

LABEL_99:
LABEL_100:

LABEL_101:

  return v97;
}

- (HMDSettingsMetadataParser)initWithDependency:(id)dependency
{
  dependencyCopy = dependency;
  v8.receiver = self;
  v8.super_class = HMDSettingsMetadataParser;
  v5 = [(HMDSettingsMetadataParser *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dependency, dependencyCopy);
  }

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14_58137 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14_58137, &__block_literal_global_58138);
  }

  v3 = logCategory__hmf_once_v15_58139;

  return v3;
}

uint64_t __40__HMDSettingsMetadataParser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v15_58139;
  logCategory__hmf_once_v15_58139 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end