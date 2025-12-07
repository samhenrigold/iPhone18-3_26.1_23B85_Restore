@interface HMDAccessorySettingGroup
+ (id)logCategory;
+ (id)supportedGroupsClasses;
+ (id)supportedSettingsClasses;
- (BOOL)compareSettingsTree:(id)tree;
- (BOOL)dataSourceShouldEncodeSetting:(id)setting withCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPrivateToDevice;
- (BOOL)shouldEncodeForCoder:(id)coder;
- (HMDAccessorySettingGroup)groupWithIdentifier:(id)identifier;
- (HMDAccessorySettingGroup)init;
- (HMDAccessorySettingGroup)initWithCoder:(id)coder;
- (HMDAccessorySettingGroup)initWithModel:(id)model;
- (HMDAccessorySettingGroup)initWithName:(id)name identifier:(id)identifier parentIdentifier:(id)parentIdentifier;
- (HMDAccessorySettingGroup)mediaSystemSettingGroup;
- (HMDAccessorySettingGroupDataSource)dataSource;
- (NSArray)groups;
- (NSArray)settings;
- (NSString)description;
- (id)_initWithCoder:(id)coder;
- (id)_settingWithKeys:(id)keys;
- (id)copyIdentical;
- (id)copyReplica;
- (id)fullDescription;
- (id)logIdentifier;
- (id)settingWithIdentifier:(id)identifier;
- (id)settingWithKeyPath:(id)path;
- (id)settingWithName:(id)name;
- (id)subGroupWithName:(id)name;
- (unint64_t)hash;
- (void)_encodeWithCoder:(id)coder;
- (void)_reevaluateParentGroup:(id)group;
- (void)_setParentGroup:(id)group;
- (void)addGroup:(id)group;
- (void)addSetting:(id)setting;
- (void)description:(id)description indent:(id)indent;
- (void)encodeWithCoder:(id)coder;
- (void)intersectSettingGroup:(id)group groupMetadata:(id)metadata shouldAddMissingItems:(BOOL)items;
- (void)removeGroup:(id)group;
- (void)removeSetting:(id)setting;
@end

@implementation HMDAccessorySettingGroup

- (void)description:(id)description indent:(id)indent
{
  v36 = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  indentCopy = indent;
  name = [(HMDAccessorySettingGroup *)self name];
  identifier = [(HMDAccessorySettingGroup *)self identifier];
  groups = [(HMDAccessorySettingGroup *)self groups];
  v11 = [groups count];
  settings = [(HMDAccessorySettingGroup *)self settings];
  v13 = [settings count];
  mediaSystemSettingGroup = [(HMDAccessorySettingGroup *)self mediaSystemSettingGroup];
  [descriptionCopy appendFormat:@"\n %@ name = %@, identifier = %@, group = %tu, settings = %tu, media-system-settings-group = %@\n", indentCopy, name, identifier, v11, v13, mediaSystemSettingGroup];

  v15 = [indentCopy indentationByLevels:1];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  groups2 = [(HMDAccessorySettingGroup *)self groups];
  v17 = [groups2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      v20 = 0;
      do
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(groups2);
        }

        [*(*(&v30 + 1) + 8 * v20++) description:descriptionCopy indent:v15];
      }

      while (v18 != v20);
      v18 = [groups2 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v18);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  settings2 = [(HMDAccessorySettingGroup *)self settings];
  v22 = [settings2 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(settings2);
        }

        [*(*(&v26 + 1) + 8 * v25++) description:descriptionCopy indent:v15];
      }

      while (v23 != v25);
      v23 = [settings2 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v23);
  }
}

- (id)fullDescription
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"\n"];
  indentation = [MEMORY[0x277D0F908] indentation];
  [(HMDAccessorySettingGroup *)self description:v3 indent:indentation];
  v5 = objc_msgSend_copy(v3);

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  keyPath = [(HMDAccessorySettingGroup *)self keyPath];
  identifier = [(HMDAccessorySettingGroup *)self identifier];
  mediaSystemSettingGroup = [(HMDAccessorySettingGroup *)self mediaSystemSettingGroup];
  identifier2 = [mediaSystemSettingGroup identifier];
  v8 = [v3 stringWithFormat:@"[HMD-Accessory-Settings-Group: %@/%@ (%@)]", keyPath, identifier, identifier2];

  return v8;
}

- (HMDAccessorySettingGroupDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMDAccessorySettingGroup)mediaSystemSettingGroup
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaSystemSettingGroup);

  return WeakRetained;
}

- (BOOL)compareSettingsTree:(id)tree
{
  v80 = *MEMORY[0x277D85DE8];
  treeCopy = tree;
  name = [(HMDAccessorySettingGroup *)self name];
  name2 = [treeCopy name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v56 = HMFGetLogIdentifier();
    name3 = [treeCopy name];
    *buf = 138543618;
    v77 = v56;
    v78 = 2112;
    v79 = name3;
    v58 = "%{public}@Name is not matching: %@";
    goto LABEL_27;
  }

  v8 = 0x277CBE000uLL;
  v9 = MEMORY[0x277CBEB98];
  groups = [(HMDAccessorySettingGroup *)self groups];
  v11 = [v9 setWithArray:groups];
  v12 = MEMORY[0x277CBEB98];
  groups2 = [treeCopy groups];
  v14 = [v12 setWithArray:groups2];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v56 = HMFGetLogIdentifier();
    name3 = [treeCopy name];
    *buf = 138543618;
    v77 = v56;
    v78 = 2112;
    v79 = name3;
    v58 = "%{public}@Sub-groups are not matching: %@";
    goto LABEL_27;
  }

  v16 = MEMORY[0x277CBEB98];
  settings = [(HMDAccessorySettingGroup *)self settings];
  v18 = [v16 setWithArray:settings];
  v19 = MEMORY[0x277CBEB98];
  settings2 = [treeCopy settings];
  v21 = [v19 setWithArray:settings2];
  v22 = HMFEqualObjects();

  if ((v22 & 1) == 0)
  {
    v53 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v55 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      goto LABEL_28;
    }

    v56 = HMFGetLogIdentifier();
    name3 = [treeCopy name];
    *buf = 138543618;
    v77 = v56;
    v78 = 2112;
    v79 = name3;
    v58 = "%{public}@Sub-settings are not matching: %@";
LABEL_27:
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, v58, buf, 0x16u);

LABEL_28:
    objc_autoreleasePoolPop(v53);
LABEL_29:
    v52 = 0;
    goto LABEL_30;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  settings3 = [(HMDAccessorySettingGroup *)self settings];
  v24 = objc_msgSend_copy(settings3);

  obj = v24;
  v25 = [v24 countByEnumeratingWithState:&v70 objects:v75 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v71;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v71 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v70 + 1) + 8 * i);
        v30 = MEMORY[0x277CCAC30];
        name4 = [v29 name];
        v32 = [v30 predicateWithFormat:@"name == %@", name4];

        v33 = MEMORY[0x277CBEB98];
        settings4 = [treeCopy settings];
        v35 = [v33 setWithArray:settings4];

        v36 = [v35 filteredSetUsingPredicate:v32];
        anyObject = [v36 anyObject];
        if (([v29 compareConstraints:anyObject] & 1) == 0)
        {
          v60 = objc_autoreleasePoolPush();
          selfCopy4 = self;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            name5 = [v29 name];
            *buf = 138543618;
            v77 = v63;
            v78 = 2112;
            v79 = name5;
            _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Constraints on settings are not matching: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v60);
          goto LABEL_29;
        }

        v8 = 0x277CBE000uLL;
      }

      v26 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  groups3 = [(HMDAccessorySettingGroup *)self groups];
  v39 = [groups3 countByEnumeratingWithState:&v66 objects:v74 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v67;
    while (2)
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v67 != v41)
        {
          objc_enumerationMutation(groups3);
        }

        v43 = *(*(&v66 + 1) + 8 * j);
        v44 = MEMORY[0x277CCAC30];
        name6 = [v43 name];
        v46 = [v44 predicateWithFormat:@"name == %@", name6];

        v47 = *(v8 + 2968);
        groups4 = [treeCopy groups];
        v49 = [v47 setWithArray:groups4];
        v50 = [v49 filteredSetUsingPredicate:v46];

        anyObject2 = [v50 anyObject];
        LODWORD(v43) = [v43 compareSettingsTree:anyObject2];

        if (!v43)
        {
          v52 = 0;
          goto LABEL_35;
        }

        v8 = 0x277CBE000;
      }

      v40 = [groups3 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  v52 = 1;
LABEL_35:

LABEL_30:
  return v52;
}

- (void)intersectSettingGroup:(id)group groupMetadata:(id)metadata shouldAddMissingItems:(BOOL)items
{
  itemsCopy = items;
  v179 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v129 = metadataCopy;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    name = [(HMDAccessorySettingGroup *)selfCopy name];
    *buf = 138543874;
    v174 = v11;
    v175 = 2112;
    v176 = name;
    v177 = 1024;
    v178 = itemsCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Group name is %@, intersecting. addMissing: %d", buf, 0x1Cu);

    metadataCopy = v129;
  }

  objc_autoreleasePoolPop(v8);
  if ([(HMDAccessorySettingGroup *)selfCopy isPrivateToDevice])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      name2 = [(HMDAccessorySettingGroup *)v14 name];
      *buf = 138543618;
      v174 = v16;
      v175 = 2112;
      v176 = name2;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Skipping private group %@", buf, 0x16u);

      metadataCopy = v129;
    }

LABEL_91:

    objc_autoreleasePoolPop(v13);
    v125 = [MEMORY[0x277CBEB58] set];
    groups = v14->_groups;
    v14->_groups = v125;

    v127 = [MEMORY[0x277CBEB58] set];
    settings = v14->_settings;
    v14->_settings = v127;
    goto LABEL_92;
  }

  if (!metadataCopy)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v124 = HMFGetLogIdentifier();
      *buf = 138543362;
      v174 = v124;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_ERROR, "%{public}@Received metadata is nil, not intersecting", buf, 0xCu);

      metadataCopy = v129;
    }

    goto LABEL_91;
  }

  v18 = MEMORY[0x277CBEB58];
  groups = [(HMDAccessorySettingGroup *)selfCopy groups];
  v20 = [groups hmf_objectsPassingTest:&__block_literal_global_38_147885];
  v21 = [v18 setWithArray:v20];

  v22 = MEMORY[0x277CBEB98];
  groups2 = [groupCopy groups];
  v24 = [groups2 hmf_objectsPassingTest:&__block_literal_global_40_147886];
  v25 = [v22 setWithArray:v24];

  v134 = v25;
  [(NSMutableSet *)v21 intersectSet:v25];
  v135 = v21;
  objc_storeStrong(&selfCopy->_groups, v21);
  v26 = MEMORY[0x277CBEB38];
  groups3 = [metadataCopy groups];
  v28 = [v26 dictionaryWithCapacity:{objc_msgSend(groups3, "count")}];

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  groups4 = [metadataCopy groups];
  v30 = [groups4 countByEnumeratingWithState:&v162 objects:v172 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v163;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v163 != v32)
        {
          objc_enumerationMutation(groups4);
        }

        v34 = *(*(&v162 + 1) + 8 * i);
        name3 = [v34 name];
        [v28 setObject:v34 forKey:name3];
      }

      v31 = [groups4 countByEnumeratingWithState:&v162 objects:v172 count:16];
    }

    while (v31);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  groups5 = [(HMDAccessorySettingGroup *)selfCopy groups];
  v37 = objc_msgSend_copy(groups5);

  v38 = [v37 countByEnumeratingWithState:&v158 objects:v171 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v159;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v159 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v158 + 1) + 8 * j);
        name4 = [v42 name];
        v44 = [v28 objectForKey:name4];

        if (!v44)
        {
          [(NSMutableSet *)selfCopy->_groups removeObject:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v158 objects:v171 count:16];
    }

    while (v39);
  }

  p_isa = &selfCopy->super.super.isa;

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  groups6 = [v129 groups];
  v46 = [groups6 countByEnumeratingWithState:&v154 objects:v170 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v155;
    do
    {
      v49 = 0;
      do
      {
        if (*v155 != v48)
        {
          objc_enumerationMutation(groups6);
        }

        v50 = *(*(&v154 + 1) + 8 * v49);
        v51 = MEMORY[0x277CCAC30];
        name5 = [v50 name];
        v53 = [v51 predicateWithFormat:@"name == %@", name5];

        v54 = [(NSMutableSet *)v135 filteredSetUsingPredicate:v53];
        anyObject = [v54 anyObject];

        v56 = [v134 filteredSetUsingPredicate:v53];
        anyObject2 = [v56 anyObject];

        if (anyObject)
        {
          [anyObject intersectSettingGroup:anyObject2 groupMetadata:v50 shouldAddMissingItems:itemsCopy];
        }

        else if (anyObject2 && itemsCopy && ([anyObject2 isPrivateToDevice] & 1) == 0)
        {
          [p_isa addGroup:anyObject2];
        }

        ++v49;
      }

      while (v47 != v49);
      v58 = [groups6 countByEnumeratingWithState:&v154 objects:v170 count:16];
      v47 = v58;
    }

    while (v58);
  }

  v59 = MEMORY[0x277CBEB38];
  settings = [v129 settings];
  v61 = [v59 dictionaryWithCapacity:{objc_msgSend(settings, "count")}];

  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  settings2 = [v129 settings];
  v63 = [settings2 countByEnumeratingWithState:&v150 objects:v169 count:16];
  if (v63)
  {
    v64 = v63;
    v65 = *v151;
    do
    {
      for (k = 0; k != v64; ++k)
      {
        if (*v151 != v65)
        {
          objc_enumerationMutation(settings2);
        }

        v67 = *(*(&v150 + 1) + 8 * k);
        name6 = [v67 name];
        [v61 setObject:v67 forKey:name6];
      }

      v64 = [settings2 countByEnumeratingWithState:&v150 objects:v169 count:16];
    }

    while (v64);
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  settings3 = [p_isa settings];
  v70 = objc_msgSend_copy(settings3);

  v71 = [v70 countByEnumeratingWithState:&v146 objects:v168 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v147;
    do
    {
      v74 = 0;
      v132 = v72;
      do
      {
        if (*v147 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = *(*(&v146 + 1) + 8 * v74);
        name7 = [v75 name];
        v77 = [v61 objectForKey:name7];

        if (!v77)
        {
          v78 = objc_autoreleasePoolPush();
          v79 = p_isa;
          v80 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v81 = v61;
            v82 = v73;
            v84 = v83 = v70;
            *buf = 138543618;
            v174 = v84;
            v175 = 2112;
            v176 = v75;
            _os_log_impl(&dword_2531F8000, v80, OS_LOG_TYPE_INFO, "%{public}@Setting %@ does not have metadata, cannot merge", buf, 0x16u);

            v70 = v83;
            v73 = v82;
            v61 = v81;
            v72 = v132;
          }

          objc_autoreleasePoolPop(v78);
          [v79[2] removeObject:v75];
        }

        ++v74;
      }

      while (v72 != v74);
      v72 = [v70 countByEnumeratingWithState:&v146 objects:v168 count:16];
    }

    while (v72);
  }

  v85 = MEMORY[0x277CBEB58];
  v86 = p_isa;
  settings4 = [p_isa settings];
  v88 = [v85 setWithArray:settings4];

  v89 = MEMORY[0x277CBEB98];
  settings5 = [groupCopy settings];
  v133 = [v89 setWithArray:settings5];

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = [v129 settings];
  v91 = [obj countByEnumeratingWithState:&v142 objects:v167 count:16];
  v130 = v88;
  if (v91)
  {
    v92 = v91;
    v93 = *v143;
    do
    {
      for (m = 0; m != v92; ++m)
      {
        if (*v143 != v93)
        {
          objc_enumerationMutation(obj);
        }

        v95 = *(*(&v142 + 1) + 8 * m);
        v96 = MEMORY[0x277CCAC30];
        name8 = [v95 name];
        v98 = [v96 predicateWithFormat:@"name == %@", name8];

        v99 = [v88 filteredSetUsingPredicate:v98];
        anyObject3 = [v99 anyObject];

        v101 = [v133 filteredSetUsingPredicate:v98];
        anyObject4 = [v101 anyObject];

        if (anyObject3)
        {
          v103 = anyObject4 == 0;
        }

        else
        {
          v103 = 1;
        }

        if (v103)
        {
          if (anyObject4 && itemsCopy)
          {
            [v86 addSetting:anyObject4];
          }
        }

        else
        {
          mergeStrategy = [v95 mergeStrategy];
          v105 = [HMDAccessorySettingMergeHandler mergeFirst:anyObject3 second:anyObject4 mergeStrategy:mergeStrategy shouldAddMissing:itemsCopy];

          if (!v105)
          {
            v106 = objc_autoreleasePoolPush();
            v107 = v86;
            v108 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
            {
              v109 = HMFGetLogIdentifier();
              *buf = 138543618;
              v174 = v109;
              v175 = 2112;
              v176 = anyObject3;
              _os_log_impl(&dword_2531F8000, v108, OS_LOG_TYPE_INFO, "%{public}@Failed to merge setting %@, cannot merge", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v106);
            [v107[2] removeObject:anyObject3];
            v86 = p_isa;
            v88 = v130;
          }
        }
      }

      v92 = [obj countByEnumeratingWithState:&v142 objects:v167 count:16];
    }

    while (v92);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  groups7 = [v86 groups];
  v111 = [groups7 countByEnumeratingWithState:&v138 objects:v166 count:16];
  if (v111)
  {
    v112 = v111;
    v113 = *v139;
    do
    {
      for (n = 0; n != v112; ++n)
      {
        if (*v139 != v113)
        {
          objc_enumerationMutation(groups7);
        }

        v115 = *(*(&v138 + 1) + 8 * n);
        groups8 = [v115 groups];
        if ([groups8 count])
        {
        }

        else
        {
          settings6 = [v115 settings];
          v118 = [settings6 count];

          if (!v118)
          {
            v119 = objc_autoreleasePoolPush();
            v120 = p_isa;
            v121 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
            {
              v122 = HMFGetLogIdentifier();
              *buf = 138543618;
              v174 = v122;
              v175 = 2112;
              v176 = v115;
              _os_log_impl(&dword_2531F8000, v121, OS_LOG_TYPE_INFO, "%{public}@No subgroup or settings, removing group %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v119);
            [p_isa[3] removeObject:v115];
          }
        }
      }

      v112 = [groups7 countByEnumeratingWithState:&v138 objects:v166 count:16];
    }

    while (v112);
  }

  metadataCopy = v129;
  settings = v135;
LABEL_92:
}

- (BOOL)dataSourceShouldEncodeSetting:(id)setting withCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  settingCopy = setting;
  coderCopy = coder;
  dataSource = [(HMDAccessorySettingGroup *)self dataSource];
  v9 = dataSource;
  if (dataSource)
  {
    v10 = [dataSource shouldEncodeSetting:settingCopy withCoder:coderCopy forAccessorySettingGroup:self];
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      keyPath = [settingCopy keyPath];
      v16 = HMFBooleanToString();
      v20 = 138544130;
      v21 = v14;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = keyPath;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@dataSource: %@, shouldEncodeSetting = %@, %@", &v20, 0x2Au);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode settings due to no data source", &v20, 0xCu);
    }

    v10 = 0;
  }

  objc_autoreleasePoolPop(v11);
  return v10;
}

- (void)_encodeWithCoder:(id)coder
{
  v36 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([(HMDAccessorySettingGroup *)self shouldEncodeForCoder:coderCopy])
  {
    groups = [(HMDAccessorySettingGroup *)self groups];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __45__HMDAccessorySettingGroup__encodeWithCoder___block_invoke;
    v28[3] = &unk_27972F108;
    v6 = coderCopy;
    v29 = v6;
    v7 = [groups hmf_objectsPassingTest:v28];

    settings = [(HMDAccessorySettingGroup *)self settings];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __45__HMDAccessorySettingGroup__encodeWithCoder___block_invoke_2;
    v26[3] = &unk_27972F130;
    v26[4] = self;
    v9 = v6;
    v27 = v9;
    v10 = [settings na_filter:v26];

    v11 = MEMORY[0x277CBEB98];
    settings2 = [(HMDAccessorySettingGroup *)self settings];
    v13 = [v11 setWithArray:settings2];

    v14 = [MEMORY[0x277CBEB98] setWithArray:v10];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v18 = v25 = v7;
      dataSource = [(HMDAccessorySettingGroup *)selfCopy dataSource];
      [v13 na_setByRemovingObjectsFromSet:v14];
      v24 = v14;
      v21 = v20 = v13;
      *buf = 138543874;
      v31 = v18;
      v32 = 2112;
      v33 = dataSource;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@dataSource = %@, subtracted values = %@", buf, 0x20u);

      v13 = v20;
      v14 = v24;

      v7 = v25;
    }

    objc_autoreleasePoolPop(v15);
    identifier = [(HMDAccessorySettingGroup *)selfCopy identifier];
    [v9 encodeObject:identifier forKey:*MEMORY[0x277CCED40]];

    name = [(HMDAccessorySettingGroup *)selfCopy name];
    [v9 encodeObject:name forKey:*MEMORY[0x277CCED48]];

    [v9 encodeObject:v10 forKey:*MEMORY[0x277CCED50]];
    [v9 encodeObject:v7 forKey:*MEMORY[0x277CCED38]];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDAccessorySettingGroup *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (BOOL)shouldEncodeForCoder:(id)coder
{
  v24 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy hmd_isForNonAdminSharedUser])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    settings = [(HMDAccessorySettingGroup *)self settings];
    v6 = [settings countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(settings);
        }

        if ([(HMDAccessorySettingGroup *)self dataSourceShouldEncodeSetting:*(*(&v18 + 1) + 8 * v9) withCoder:coderCopy])
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [settings countByEnumeratingWithState:&v18 objects:v23 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      settings = [(HMDAccessorySettingGroup *)self groups];
      v10 = [settings countByEnumeratingWithState:&v14 objects:v22 count:16];
      if (!v10)
      {
LABEL_21:

        goto LABEL_22;
      }

      v11 = *v15;
LABEL_12:
      v12 = 0;
      while (1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(settings);
        }

        if ([*(*(&v14 + 1) + 8 * v12) shouldEncodeForCoder:coderCopy])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [settings countByEnumeratingWithState:&v14 objects:v22 count:16];
          if (v10)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }
      }
    }

    LOBYTE(v10) = 1;
    goto LABEL_21;
  }

  LOBYTE(v10) = 1;
LABEL_22:

  return v10;
}

- (id)_initWithCoder:(id)coder
{
  v50 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED48]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCED40]];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v8 = [(HMDAccessorySettingGroup *)self initWithName:v5 identifier:v6 parentIdentifier:uUID];

  if (v8)
  {
    v9 = +[HMDAccessorySettingGroup supportedSettingsClasses];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:*MEMORY[0x277CCED50]];

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __43__HMDAccessorySettingGroup__initWithCoder___block_invoke;
    v46[3] = &unk_27972F0E0;
    v11 = v8;
    v47 = v11;
    v35 = v10;
    v12 = [v10 na_filter:v46];
    if (v12)
    {
      v13 = v12;
      v14 = [MEMORY[0x277CBEB58] setWithArray:v12];
      v15 = v11[2];
      v11[2] = v14;

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v16 = v11[2];
      v17 = [v16 countByEnumeratingWithState:&v42 objects:v49 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v43;
        do
        {
          v20 = 0;
          do
          {
            if (*v43 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(*(&v42 + 1) + 8 * v20++) setGroup:v11];
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v42 objects:v49 count:16];
        }

        while (v18);
      }

      v12 = v13;
    }

    v21 = +[HMDAccessorySettingGroup supportedGroupsClasses];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:*MEMORY[0x277CCED38]];

    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __43__HMDAccessorySettingGroup__initWithCoder___block_invoke_35;
    v40[3] = &unk_27972F0E0;
    v23 = v11;
    v41 = v23;
    v24 = [v22 na_filter:v40];
    if (v24)
    {
      v33 = v12;
      v34 = v5;
      v25 = [MEMORY[0x277CBEB58] setWithArray:v24];
      v26 = v23[3];
      v23[3] = v25;

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = v23[3];
      v28 = [v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v37;
        do
        {
          v31 = 0;
          do
          {
            if (*v37 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v36 + 1) + 8 * v31++) _setParentGroup:v23];
          }

          while (v29 != v31);
          v29 = [v27 countByEnumeratingWithState:&v36 objects:v48 count:16];
        }

        while (v29);
      }

      v12 = v33;
      v5 = v34;
    }
  }

  return v8;
}

BOOL __43__HMDAccessorySettingGroup__initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
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

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type found while decoding accessory setting", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5 != 0;
}

BOOL __43__HMDAccessorySettingGroup__initWithCoder___block_invoke_35(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
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

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Unexpected type found while decoding accessory group", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5 != 0;
}

- (HMDAccessorySettingGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDAccessorySettingGroup *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(HMDAccessorySettingGroup *)self identifier];
  uUIDString = [identifier UUIDString];
  name = [(HMDAccessorySettingGroup *)self name];
  v7 = [v3 stringWithFormat:@"%@/%@", uUIDString, name];

  return v7;
}

- (void)removeGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    v5 = groupCopy;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_groups containsObject:v5])
    {
      [(NSMutableSet *)self->_groups removeObject:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
    groupCopy = v5;
  }
}

- (void)addGroup:(id)group
{
  groupCopy = group;
  if (groupCopy)
  {
    v5 = groupCopy;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_groups containsObject:v5]& 1) == 0)
    {
      [(NSMutableSet *)self->_groups addObject:v5];
      [v5 _setParentGroup:self];
    }

    os_unfair_lock_unlock(&self->_lock);
    groupCopy = v5;
  }
}

- (void)_setParentGroup:(id)group
{
  v33 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  identifier = [groupCopy identifier];
  parentIdentifier = self->_parentIdentifier;
  self->_parentIdentifier = identifier;

  keyPath = [groupCopy keyPath];
  name = [(HMDAccessorySettingGroup *)self name];
  v9 = [keyPath stringByAppendingFormat:@".%@", name];
  keyPath = self->_keyPath;
  self->_keyPath = v9;

  allObjects = [(NSMutableSet *)self->_groups allObjects];
  allObjects2 = [(NSMutableSet *)self->_settings allObjects];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = allObjects;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      v17 = 0;
      do
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v27 + 1) + 8 * v17++) _reevaluateParentGroup:self];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v15);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = allObjects2;
  v19 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v24;
    do
    {
      v22 = 0;
      do
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v23 + 1) + 8 * v22++) setGroup:self];
      }

      while (v20 != v22);
      v20 = [v18 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v20);
  }
}

- (void)_reevaluateParentGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock_with_options();
  [(HMDAccessorySettingGroup *)self _setParentGroup:groupCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (HMDAccessorySettingGroup)groupWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_groups;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSArray)groups
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_groups allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (void)removeSetting:(id)setting
{
  settingCopy = setting;
  if (settingCopy)
  {
    v5 = settingCopy;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableSet *)self->_settings containsObject:v5])
    {
      [(NSMutableSet *)self->_settings removeObject:v5];
    }

    os_unfair_lock_unlock(&self->_lock);
    settingCopy = v5;
  }
}

- (void)addSetting:(id)setting
{
  settingCopy = setting;
  if (settingCopy)
  {
    v5 = settingCopy;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableSet *)self->_settings containsObject:v5]& 1) == 0)
    {
      [(NSMutableSet *)self->_settings addObject:v5];
      [v5 setGroup:self];
    }

    os_unfair_lock_unlock(&self->_lock);
    settingCopy = v5;
  }
}

- (id)settingWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_settings;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSArray)settings
{
  os_unfair_lock_lock_with_options();
  allObjects = [(NSMutableSet *)self->_settings allObjects];
  os_unfair_lock_unlock(&self->_lock);

  return allObjects;
}

- (BOOL)isPrivateToDevice
{
  name = [(HMDAccessorySettingGroup *)self name];
  if ([name isEqualToString:@"profiles"])
  {
    v4 = 1;
  }

  else
  {
    name2 = [(HMDAccessorySettingGroup *)self name];
    v4 = [name2 isEqualToString:@"analytics"];
  }

  return v4;
}

- (id)copyReplica
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [HMDAccessorySettingGroup alloc];
  name = [(HMDAccessorySettingGroup *)self name];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUID2 = [MEMORY[0x277CCAD78] UUID];
  v7 = [(HMDAccessorySettingGroup *)v3 initWithName:name identifier:uUID parentIdentifier:uUID2];

  dataSource = [(HMDAccessorySettingGroup *)self dataSource];
  [(HMDAccessorySettingGroup *)v7 setDataSource:dataSource];

  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  groups = [(HMDAccessorySettingGroup *)self groups];
  v11 = [groups countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(groups);
        }

        copyReplica = [*(*(&v32 + 1) + 8 * v14) copyReplica];
        [copyReplica _setParentGroup:v7];
        [array addObject:copyReplica];

        ++v14;
      }

      while (v12 != v14);
      v12 = [groups countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  groups = v7->_groups;
  v17 = [MEMORY[0x277CBEB98] setWithArray:array];
  [(NSMutableSet *)groups setSet:v17];

  array2 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  settings = [(HMDAccessorySettingGroup *)self settings];
  v20 = [settings countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(settings);
        }

        copyReplica2 = [*(*(&v28 + 1) + 8 * v23) copyReplica];
        [copyReplica2 setGroup:v7];
        [array2 addObject:copyReplica2];

        ++v23;
      }

      while (v21 != v23);
      v21 = [settings countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  settings = v7->_settings;
  v26 = [MEMORY[0x277CBEB98] setWithArray:array2];
  [(NSMutableSet *)settings setSet:v26];

  return v7;
}

- (id)copyIdentical
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = [HMDAccessorySettingGroup alloc];
  name = [(HMDAccessorySettingGroup *)self name];
  identifier = [(HMDAccessorySettingGroup *)self identifier];
  parentIdentifier = [(HMDAccessorySettingGroup *)self parentIdentifier];
  v7 = [(HMDAccessorySettingGroup *)v3 initWithName:name identifier:identifier parentIdentifier:parentIdentifier];

  dataSource = [(HMDAccessorySettingGroup *)self dataSource];
  [(HMDAccessorySettingGroup *)v7 setDataSource:dataSource];

  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  groups = [(HMDAccessorySettingGroup *)self groups];
  v11 = [groups countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      v14 = 0;
      do
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(groups);
        }

        copyIdentical = [*(*(&v32 + 1) + 8 * v14) copyIdentical];
        [copyIdentical _setParentGroup:v7];
        [array addObject:copyIdentical];

        ++v14;
      }

      while (v12 != v14);
      v12 = [groups countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v12);
  }

  groups = v7->_groups;
  v17 = [MEMORY[0x277CBEB98] setWithArray:array];
  [(NSMutableSet *)groups setSet:v17];

  array2 = [MEMORY[0x277CBEB18] array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  settings = [(HMDAccessorySettingGroup *)self settings];
  v20 = [settings countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(settings);
        }

        copyIdentical2 = [*(*(&v28 + 1) + 8 * v23) copyIdentical];
        [copyIdentical2 setGroup:v7];
        [array2 addObject:copyIdentical2];

        ++v23;
      }

      while (v21 != v23);
      v21 = [settings countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  settings = v7->_settings;
  v26 = [MEMORY[0x277CBEB98] setWithArray:array2];
  [(NSMutableSet *)settings setSet:v26];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      name = [(HMDAccessorySettingGroup *)self name];
      name2 = [(HMDAccessorySettingGroup *)v6 name];
      v9 = [name isEqualToString:name2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  name = [(HMDAccessorySettingGroup *)self name];
  v3 = [name hash];

  return v3;
}

- (id)_settingWithKeys:(id)keys
{
  v23 = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  if ([keysCopy count] >= 2)
  {
    firstObject = [keysCopy firstObject];
    name = [(HMDAccessorySettingGroup *)self name];
    v8 = [name isEqualToString:firstObject];

    if (v8)
    {
      v9 = [keysCopy count];
      v10 = [keysCopy objectAtIndex:1];
      if (v9 == 2)
      {
        v5 = [(HMDAccessorySettingGroup *)self settingWithName:v10];
      }

      else
      {
        v15 = [(HMDAccessorySettingGroup *)self subGroupWithName:v10];
        [keysCopy hmf_removeFirstObject];
        v5 = [v15 _settingWithKeys:keysCopy];
      }
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v17 = 138543874;
        v18 = v14;
        v19 = 2112;
        v20 = firstObject;
        v21 = 2112;
        v22 = selfCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unexpected group name: %@ for group: %@", &v17, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)settingWithKeyPath:(id)path
{
  v4 = [path componentsSeparatedByString:@"."];
  v5 = [v4 mutableCopy];

  v6 = [(HMDAccessorySettingGroup *)self _settingWithKeys:v5];

  return v6;
}

- (id)settingWithName:(id)name
{
  nameCopy = name;
  settings = [(HMDAccessorySettingGroup *)self settings];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__HMDAccessorySettingGroup_settingWithName___block_invoke;
  v9[3] = &unk_279730DB0;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [settings na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __44__HMDAccessorySettingGroup_settingWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)subGroupWithName:(id)name
{
  nameCopy = name;
  groups = [(HMDAccessorySettingGroup *)self groups];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HMDAccessorySettingGroup_subGroupWithName___block_invoke;
  v9[3] = &unk_279730DD8;
  v10 = nameCopy;
  v6 = nameCopy;
  v7 = [groups na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __45__HMDAccessorySettingGroup_subGroupWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (HMDAccessorySettingGroup)initWithName:(id)name identifier:(id)identifier parentIdentifier:(id)parentIdentifier
{
  identifierCopy = identifier;
  parentIdentifierCopy = parentIdentifier;
  nameCopy = name;
  if (nameCopy)
  {
    v23.receiver = self;
    v23.super_class = HMDAccessorySettingGroup;
    v12 = [(HMDAccessorySettingGroup *)&v23 init];
    if (v12)
    {
      hm_truncatedNameString = [nameCopy hm_truncatedNameString];
      name = v12->_name;
      v12->_name = hm_truncatedNameString;

      v15 = objc_msgSend_copy(nameCopy);
      keyPath = v12->_keyPath;
      v12->_keyPath = v15;

      v12->_lock._os_unfair_lock_opaque = 0;
      objc_storeStrong(&v12->_identifier, identifier);
      objc_storeStrong(&v12->_parentIdentifier, parentIdentifier);
      v17 = [MEMORY[0x277CBEB58] set];
      settings = v12->_settings;
      v12->_settings = v17;

      v19 = [MEMORY[0x277CBEB58] set];
      groups = v12->_groups;
      v12->_groups = v19;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (HMDAccessorySettingGroup)initWithModel:(id)model
{
  modelCopy = model;
  name = [modelCopy name];
  uuid = [modelCopy uuid];
  parentUUID = [modelCopy parentUUID];

  v8 = [(HMDAccessorySettingGroup *)self initWithName:name identifier:uuid parentIdentifier:parentUUID];
  return v8;
}

- (HMDAccessorySettingGroup)init
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

+ (id)supportedGroupsClasses
{
  if (supportedGroupsClasses_onceToken != -1)
  {
    dispatch_once(&supportedGroupsClasses_onceToken, &__block_literal_global_33_147937);
  }

  v3 = supportedGroupsClasses_supportedGroupsClasses;

  return v3;
}

void __50__HMDAccessorySettingGroup_supportedGroupsClasses__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedGroupsClasses_supportedGroupsClasses;
  supportedGroupsClasses_supportedGroupsClasses = v2;
}

+ (id)supportedSettingsClasses
{
  if (supportedSettingsClasses_onceToken != -1)
  {
    dispatch_once(&supportedSettingsClasses_onceToken, &__block_literal_global_29_147940);
  }

  v3 = supportedSettingsClasses_supportedSettingsClasses;

  return v3;
}

void __52__HMDAccessorySettingGroup_supportedSettingsClasses__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = supportedSettingsClasses_supportedSettingsClasses;
  supportedSettingsClasses_supportedSettingsClasses = v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t11_147942 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t11_147942, &__block_literal_global_147943);
  }

  v3 = logCategory__hmf_once_v12_147944;

  return v3;
}

uint64_t __39__HMDAccessorySettingGroup_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v12_147944;
  logCategory__hmf_once_v12_147944 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end