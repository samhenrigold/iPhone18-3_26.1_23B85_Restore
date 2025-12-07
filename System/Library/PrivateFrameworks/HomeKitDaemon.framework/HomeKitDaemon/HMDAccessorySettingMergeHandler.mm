@interface HMDAccessorySettingMergeHandler
+ (BOOL)_extractMinMaxStep:(id)step minConstraint:(id *)constraint maxConstraint:(id *)maxConstraint stepConstraint:(id *)stepConstraint first:(id)first;
+ (BOOL)_isNumber:(id)number betweenStart:(id)start andEnd:(id)end first:(id)first;
+ (BOOL)mergeFirst:(id)first second:(id)second mergeStrategy:(id)strategy shouldAddMissing:(BOOL)missing;
+ (id)_mergeFirst:(id)first second:(id)second mergedConstraints:(id)constraints mergeStrategy:(id)strategy;
+ (id)_mergeRangeConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing;
+ (id)_mergeValidValueConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing;
@end

@implementation HMDAccessorySettingMergeHandler

+ (id)_mergeValidValueConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing
{
  missingCopy = missing;
  v37 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  secondCopy = second;
  v9 = MEMORY[0x277CBEB98];
  constraints = [firstCopy constraints];
  v11 = [v9 setWithArray:constraints];
  v12 = [v11 mutableCopy];

  v13 = MEMORY[0x277CBEB98];
  constraints2 = [secondCopy constraints];
  v15 = [v13 setWithArray:constraints2];
  v16 = [v15 mutableCopy];

  v17 = objc_autoreleasePoolPush();
  v18 = firstCopy;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    v31 = 138543874;
    v32 = v20;
    v33 = 2048;
    v34 = [v12 count];
    v35 = 2048;
    v36 = [v16 count];
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Valid value constraints: this: %lu, second: %lu", &v31, 0x20u);
  }

  objc_autoreleasePoolPop(v17);
  if (missingCopy)
  {
    [v12 unionSet:v16];
    v21 = objc_autoreleasePoolPush();
    v22 = v18;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v24 = HMFGetLogIdentifier();
    v25 = [v12 count];
    v31 = 138543618;
    v32 = v24;
    v33 = 2048;
    v34 = v25;
    v26 = "%{public}@Combined: %lu";
  }

  else
  {
    [v12 intersectSet:v16];
    v21 = objc_autoreleasePoolPush();
    v27 = v18;
    v23 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v24 = HMFGetLogIdentifier();
    v28 = [v12 count];
    v31 = 138543618;
    v32 = v24;
    v33 = 2048;
    v34 = v28;
    v26 = "%{public}@Intersected: %lu";
  }

  _os_log_impl(&dword_229538000, v23, OS_LOG_TYPE_INFO, v26, &v31, 0x16u);

LABEL_9:
  objc_autoreleasePoolPop(v21);
  allObjects = [v12 allObjects];

  return allObjects;
}

+ (BOOL)_extractMinMaxStep:(id)step minConstraint:(id *)constraint maxConstraint:(id *)maxConstraint stepConstraint:(id *)stepConstraint first:(id)first
{
  v50 = *MEMORY[0x277D85DE8];
  stepCopy = step;
  firstCopy = first;
  v12 = firstCopy;
  if (!constraint || !maxConstraint || !stepConstraint)
  {
    v25 = objc_autoreleasePoolPush();
    v26 = v12;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v28;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot return result in invalid data", buf, 0xCu);
    }

    goto LABEL_28;
  }

  v35 = firstCopy;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = stepCopy;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v38;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v37 + 1) + 8 * i);
        type = [v18 type];
        maxConstraintCopy = constraint;
        if (type != 1)
        {
          if (type == 3)
          {
            maxConstraintCopy = stepConstraint;
          }

          else
          {
            maxConstraintCopy = maxConstraint;
            if (type != 2)
            {
              continue;
            }
          }
        }

        value = [v18 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = value;
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;

        *maxConstraintCopy = v22;
      }

      v15 = [v13 countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v15);
  }

  if (!*constraint || !*maxConstraint || !*stepConstraint)
  {
    v25 = objc_autoreleasePoolPush();
    v12 = v35;
    v29 = v35;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      v31 = *constraint;
      v32 = *maxConstraint;
      v33 = *stepConstraint;
      *buf = 138544130;
      v42 = v30;
      v43 = 2112;
      v44 = v31;
      v45 = 2112;
      v46 = v32;
      v47 = 2112;
      v48 = v33;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not find min %@ or max %@ or step %@", buf, 0x2Au);
    }

LABEL_28:

    objc_autoreleasePoolPop(v25);
    v24 = 0;
    goto LABEL_29;
  }

  v24 = 1;
  v12 = v35;
LABEL_29:

  return v24;
}

+ (id)_mergeRangeConstraintsFirst:(id)first second:(id)second shouldAddMissing:(BOOL)missing
{
  missingCopy = missing;
  v95 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  secondCopy = second;
  constraints = [firstCopy constraints];
  v10 = objc_msgSend_copy(constraints);
  v85 = 0;
  v86 = 0;
  v84 = 0;
  v11 = [HMDAccessorySettingMergeHandler _extractMinMaxStep:v10 minConstraint:&v86 maxConstraint:&v85 stepConstraint:&v84 first:firstCopy];
  v80 = v86;
  v79 = v85;
  v12 = v84;

  if (!v11)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = firstCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      constraints2 = [v14 constraints];
      *buf = 138543618;
      v88 = v16;
      v89 = 2112;
      v90 = *&constraints2;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Cannot extract min, max and step from this setting's constraints %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    if (!missingCopy)
    {
      v59 = 0;
      v18 = secondCopy;
      goto LABEL_51;
    }
  }

  v18 = secondCopy;
  constraints3 = [secondCopy constraints];
  v20 = objc_msgSend_copy(constraints3);
  v82 = 0;
  v83 = 0;
  v81 = 0;
  v21 = [HMDAccessorySettingMergeHandler _extractMinMaxStep:v20 minConstraint:&v83 maxConstraint:&v82 stepConstraint:&v81 first:firstCopy];
  v22 = v83;
  v23 = v82;
  v78 = v81;

  if (!v21)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = firstCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543362;
      v88 = v63;
      v64 = "%{public}@Cannot extract min, max and step from second setting's constraints";
LABEL_47:
      _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_ERROR, v64, buf, 0xCu);
    }

LABEL_48:

    objc_autoreleasePoolPop(v60);
    goto LABEL_49;
  }

  if (!v22 || !v23 || !v78)
  {
    v60 = objc_autoreleasePoolPush();
    v61 = firstCopy;
    v62 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v63 = HMFGetLogIdentifier();
      *buf = 138543362;
      v88 = v63;
      v64 = "%{public}@second min, max or step is nil";
      goto LABEL_47;
    }

    goto LABEL_48;
  }

  if (missingCopy)
  {
    if (!v80)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = firstCopy;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543618;
        v88 = v27;
        v89 = 2112;
        v90 = *&secondCopy;
        _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Taking min constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v24);
      v80 = v22;
      v18 = secondCopy;
    }

    if (!v79)
    {
      v28 = objc_autoreleasePoolPush();
      v29 = firstCopy;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = HMFGetLogIdentifier();
        *buf = 138543618;
        v88 = v31;
        v89 = 2112;
        v90 = *&secondCopy;
        _os_log_impl(&dword_229538000, v30, OS_LOG_TYPE_INFO, "%{public}@Taking max constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      v79 = v23;
      v18 = secondCopy;
    }

    if (!v12)
    {
      v32 = objc_autoreleasePoolPush();
      v33 = firstCopy;
      v34 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = HMFGetLogIdentifier();
        *buf = 138543618;
        v88 = v35;
        v89 = 2112;
        v90 = *&v18;
        _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_INFO, "%{public}@Taking step constraint from %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v32);
      v12 = v78;
    }
  }

  if (v80 && v79 && v12)
  {
    goto LABEL_28;
  }

  v36 = objc_autoreleasePoolPush();
  v37 = firstCopy;
  v38 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    HMFGetLogIdentifier();
    v39 = v74 = v36;
    *buf = 138543362;
    v88 = v39;
    _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_ERROR, "%{public}@Min, max or step is nil", buf, 0xCu);

    v36 = v74;
  }

  objc_autoreleasePoolPop(v36);
  if (missingCopy)
  {
LABEL_28:
    array = [MEMORY[0x277CBEB18] array];
    if ([v80 compare:v22] == -1)
    {
      v40 = v22;
    }

    else
    {
      v40 = v80;
    }

    v41 = v40;
    if ([v12 compare:v78] == -1)
    {
      v42 = v78;
    }

    else
    {
      v42 = v12;
    }

    v75 = v42;
    v72 = v23;
    if ([v79 compare:v23] == -1)
    {
      v43 = v79;
    }

    else
    {
      v43 = v23;
    }

    v44 = v43;
    v45 = objc_autoreleasePoolPush();
    selfCopy = self;
    v47 = HMFGetOSLogHandle();
    v77 = v44;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138544130;
      v88 = v48;
      v89 = 2112;
      v90 = *&v41;
      v91 = 2112;
      v92 = v75;
      v93 = 2112;
      v94 = v77;
      _os_log_impl(&dword_229538000, v47, OS_LOG_TYPE_INFO, "%{public}@Chosen min: %@, step: %@, max: %@", buf, 0x2Au);

      v44 = v77;
    }

    objc_autoreleasePoolPop(v45);
    [v44 doubleValue];
    v50 = v49;
    [v41 doubleValue];
    v52 = v50 - v51;
    if (v52 <= 0.0)
    {
      v66 = v41;
      v67 = objc_autoreleasePoolPush();
      v68 = selfCopy;
      v69 = HMFGetOSLogHandle();
      v23 = v72;
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = HMFGetLogIdentifier();
        *buf = 138543618;
        v88 = v70;
        v89 = 2048;
        v90 = v52;
        v71 = "%{public}@Chosen max constraint is not compatible with min constraint: %lf";
LABEL_58:
        _os_log_impl(&dword_229538000, v69, OS_LOG_TYPE_ERROR, v71, buf, 0x16u);
      }
    }

    else
    {
      v53 = [MEMORY[0x277CCABB0] numberWithDouble:v52];
      v54 = compareCharacteristicValue(v75, v53, 1, &unk_283E780A0);

      v23 = v72;
      if (v54)
      {
        v55 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:1 value:v41];
        v56 = array;
        [array addObject:v55];

        v57 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:3 value:v75];
        [array addObject:v57];

        v18 = secondCopy;
        v58 = [objc_alloc(MEMORY[0x277CD1780]) initWithType:2 value:v77];
        [array addObject:v58];

        v59 = objc_msgSend_copy(array);
LABEL_60:

        goto LABEL_50;
      }

      v66 = v41;
      v67 = objc_autoreleasePoolPush();
      v68 = selfCopy;
      v69 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        v70 = HMFGetLogIdentifier();
        *buf = 138543618;
        v88 = v70;
        v89 = 2048;
        v90 = v52;
        v71 = "%{public}@New max-min cannot fit in the new step value: %lf";
        goto LABEL_58;
      }
    }

    objc_autoreleasePoolPop(v67);
    v59 = 0;
    v56 = array;
    v41 = v66;
    goto LABEL_60;
  }

LABEL_49:
  v59 = 0;
LABEL_50:

LABEL_51:

  return v59;
}

+ (BOOL)_isNumber:(id)number betweenStart:(id)start andEnd:(id)end first:(id)first
{
  v21 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  startCopy = start;
  endCopy = end;
  firstCopy = first;
  if (!numberCopy)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = firstCopy;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, "%{public}@Given value is nil, cannot determine whether within the range", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    goto LABEL_10;
  }

  if ([startCopy compare:numberCopy] != -1 && objc_msgSend(startCopy, "compare:", numberCopy) || objc_msgSend(numberCopy, "compare:", endCopy) != -1 && objc_msgSend(numberCopy, "compare:", endCopy))
  {
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v13 = 1;
LABEL_11:

  return v13;
}

+ (id)_mergeFirst:(id)first second:(id)second mergedConstraints:(id)constraints mergeStrategy:(id)strategy
{
  v100 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  secondCopy = second;
  constraintsCopy = constraints;
  strategyCopy = strategy;
  value = [firstCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = value;
  }

  else
  {
    v15 = 0;
  }

  v90 = v15;

  value2 = [secondCopy value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = value2;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  v94 = 0;
  v95 = 0;
  v93 = 0;
  v19 = [self _extractMinMaxStep:constraintsCopy minConstraint:&v95 maxConstraint:&v94 stepConstraint:&v93 first:firstCopy];
  v20 = v95;
  v92 = v94;
  v91 = v93;
  if (v19)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = firstCopy;
    v23 = HMFGetOSLogHandle();
    v24 = v23;
    v89 = v20;
    if (!v20 || !v92 || !v91)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v40 = v39 = v18;
        *buf = 138543362;
        v97 = v40;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Min, max or step is nil", buf, 0xCu);

        v18 = v39;
      }

      objc_autoreleasePoolPop(v21);
LABEL_20:
      conflictValue = 0;
LABEL_74:
      v20 = v89;
      goto LABEL_75;
    }

    v25 = strategyCopy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v85 = v18;
      v26 = secondCopy;
      v27 = HMFGetLogIdentifier();
      v28 = v25;
      v29 = v27;
      v30 = v28;
      strategy = [v28 strategy];
      if (strategy >= 5)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown HMDAccessorySettingMergeStrategyType %tu", strategy];
      }

      else
      {
        v32 = off_278675050[strategy];
      }

      *buf = 138543618;
      v97 = v29;
      v98 = 2112;
      v99 = v32;
      _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Merge strategy is %@", buf, 0x16u);

      v25 = v30;
      secondCopy = v26;
      v18 = v85;
    }

    objc_autoreleasePoolPop(v21);
    strategy2 = [v25 strategy];
    if (strategy2 == 4)
    {
      v62 = [self _isNumber:v90 betweenStart:v89 andEnd:v92 first:v22];
      v63 = [self _isNumber:v18 betweenStart:v89 andEnd:v92 first:v22];
      v64 = objc_autoreleasePoolPush();
      v51 = v22;
      v52 = HMFGetOSLogHandle();
      v65 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
      if (v62 && v63)
      {
        if (v65)
        {
          v66 = HMFGetLogIdentifier();
          *buf = 138543362;
          v97 = v66;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Current values are within the merged range", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v64);
        v87 = v18;
        v67 = [(__CFString *)v90 compare:v18];
        v68 = objc_autoreleasePoolPush();
        v69 = v51;
        v70 = HMFGetOSLogHandle();
        v71 = os_log_type_enabled(v70, OS_LOG_TYPE_INFO);
        strategyCopy = v25;
        if (v67 != -1)
        {
          if (v71)
          {
            v72 = HMFGetLogIdentifier();
            *buf = 138543618;
            v97 = v72;
            v98 = 2112;
            v99 = v90;
            _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Retaining current value %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
          conflictValue = v90;
          v18 = v87;
          goto LABEL_74;
        }

        if (v71)
        {
          v81 = HMFGetLogIdentifier();
          *buf = 138543618;
          v97 = v81;
          v98 = 2112;
          v99 = v87;
          _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Choosing second setting's value %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v68);
        v18 = v87;
        goto LABEL_72;
      }

      if (v62)
      {
        v73 = v64;
        strategyCopy = v25;
        if (v65)
        {
LABEL_52:
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          v97 = v74;
          v98 = 2112;
          v99 = v90;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Only current value %@ is within the merged range", buf, 0x16u);
        }

LABEL_53:

        objc_autoreleasePoolPop(v73);
        v75 = v90;
LABEL_54:
        v76 = v75;
LABEL_73:
        conflictValue = v76;
        goto LABEL_74;
      }

      v78 = v64;
      strategyCopy = v25;
      if (!v63)
      {
        if (v65)
        {
          v84 = HMFGetLogIdentifier();
          *buf = 138543618;
          v97 = v84;
          v98 = 2112;
          v99 = v92;
          _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Neither of the values are within the merged range, choosing the max %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v78);
        v75 = v92;
        goto LABEL_54;
      }

      if (v65)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }

    if (strategy2 != 3)
    {
      if (strategy2 == 1)
      {
        conflictValue = [v25 conflictValue];
        v42 = objc_autoreleasePoolPush();
        v43 = v22;
        v44 = HMFGetOSLogHandle();
        v45 = v44;
        if (conflictValue)
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v46 = v86 = v18;
            *buf = 138543618;
            v97 = v46;
            v98 = 2112;
            v99 = conflictValue;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_INFO, "%{public}@Using the conflict value %@ as a merged value", buf, 0x16u);

            v18 = v86;
          }

          strategyCopy = v25;

          objc_autoreleasePoolPop(v42);
          v47 = conflictValue;
        }

        else
        {
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v77 = v88 = v18;
            *buf = 138543362;
            v97 = v77;
            _os_log_impl(&dword_229538000, v45, OS_LOG_TYPE_ERROR, "%{public}@Cannot find the conflict value", buf, 0xCu);

            v18 = v88;
          }

          strategyCopy = v25;

          objc_autoreleasePoolPop(v42);
        }

        goto LABEL_74;
      }

      strategyCopy = v25;
      goto LABEL_20;
    }

    v48 = [self _isNumber:v90 betweenStart:v89 andEnd:v92 first:v22];
    v49 = [self _isNumber:v18 betweenStart:v89 andEnd:v92 first:v22];
    v50 = objc_autoreleasePoolPush();
    v51 = v22;
    v52 = HMFGetOSLogHandle();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_INFO);
    if (v48 && v49)
    {
      if (v53)
      {
        v54 = HMFGetLogIdentifier();
        *buf = 138543362;
        v97 = v54;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Current values are within the merged range", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v50);
      v55 = v18;
      v56 = [(__CFString *)v90 compare:v18];
      v57 = objc_autoreleasePoolPush();
      v58 = v51;
      v59 = HMFGetOSLogHandle();
      v60 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);
      strategyCopy = v25;
      if (v56 == -1)
      {
        if (v60)
        {
          v80 = HMFGetLogIdentifier();
          *buf = 138543618;
          v97 = v80;
          v98 = 2112;
          v99 = v90;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Retaining current value %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v57);
        conflictValue = v90;
        v18 = v55;
        goto LABEL_74;
      }

      if (v60)
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v97 = v61;
        v98 = 2112;
        v99 = v55;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_INFO, "%{public}@Choosing second setting's value %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v57);
      v18 = v55;
      goto LABEL_72;
    }

    if (v48)
    {
      v73 = v50;
      strategyCopy = v25;
      if (v53)
      {
        goto LABEL_52;
      }

      goto LABEL_53;
    }

    v78 = v50;
    strategyCopy = v25;
    if (v49)
    {
      if (v53)
      {
LABEL_64:
        v79 = HMFGetLogIdentifier();
        *buf = 138543618;
        v97 = v79;
        v98 = 2112;
        v99 = v18;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Only second setting's value %@ is within the merged range", buf, 0x16u);
      }

LABEL_65:

      objc_autoreleasePoolPop(v78);
LABEL_72:
      v76 = v18;
      goto LABEL_73;
    }

    if (v53)
    {
      v83 = HMFGetLogIdentifier();
      *buf = 138543618;
      v97 = v83;
      v98 = 2112;
      v99 = v89;
      _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Neither of the values are within the merged range, choosing the min %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v78);
    v20 = v89;
    conflictValue = v89;
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = firstCopy;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v37 = v36 = v18;
      *buf = 138543618;
      v97 = v37;
      v98 = 2112;
      v99 = constraintsCopy;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_ERROR, "%{public}@Cannot extract min, max and step from merged constraints %@", buf, 0x16u);

      v18 = v36;
    }

    objc_autoreleasePoolPop(v33);
    conflictValue = 0;
  }

LABEL_75:

  return conflictValue;
}

+ (BOOL)mergeFirst:(id)first second:(id)second mergeStrategy:(id)strategy shouldAddMissing:(BOOL)missing
{
  missingCopy = missing;
  v210 = *MEMORY[0x277D85DE8];
  firstCopy = first;
  secondCopy = second;
  strategyCopy = strategy;
  value = [firstCopy value];
  value2 = [secondCopy value];
  type = [firstCopy type];
  if (type != [secondCopy type])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = firstCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      [v21 type];
      HMAccessorySettingTypeToString();
      v184 = firstCopy;
      v28 = value;
      v29 = strategyCopy;
      v31 = v30 = value2;
      [secondCopy type];
      v32 = HMAccessorySettingTypeToString();
      *buf = 138543874;
      v199 = v27;
      v200 = 2112;
      v201 = v31;
      v202 = 2112;
      v203 = v32;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Value types are not matching: self %@, second %@", buf, 0x20u);

      value2 = v30;
      strategyCopy = v29;
      value = v28;
      firstCopy = v184;
    }

    goto LABEL_13;
  }

  name = [firstCopy name];
  name2 = [secondCopy name];
  v18 = [name isEqualToString:name2];

  if ((v18 & 1) == 0)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = firstCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      name3 = [v21 name];
      [secondCopy name];
      v185 = firstCopy;
      v34 = secondCopy;
      v35 = value;
      v36 = strategyCopy;
      v38 = v37 = value2;
      *buf = 138543874;
      v199 = v23;
      v200 = 2112;
      v201 = name3;
      v202 = 2112;
      v203 = v38;
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@Setting names are not matching: self %@, second %@", buf, 0x20u);

      value2 = v37;
      strategyCopy = v36;
      value = v35;
      secondCopy = v34;
      firstCopy = v185;

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  type2 = [firstCopy type];
  if (!strategyCopy && type2 <= 3)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = firstCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v199 = v23;
      v24 = "%{public}@No merge strategy, cannot merge";
      v25 = v22;
      v26 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_229538000, v25, v26, v24, buf, 0xCu);
LABEL_12:
    }

LABEL_13:

    objc_autoreleasePoolPop(v20);
    v39 = 0;
    goto LABEL_14;
  }

  type3 = [firstCopy type];
  v39 = 0;
  if (type3 <= 2)
  {
    if (!type3)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = firstCopy;
      v22 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v199 = v23;
      v24 = "%{public}@Setting type is unknown, cannot merge";
      v25 = v22;
      v26 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

    if (type3 != 1)
    {
      if (type3 != 2)
      {
        goto LABEL_14;
      }

      v42 = [HMDAccessorySettingMergeHandler _mergeRangeConstraintsFirst:firstCopy second:secondCopy shouldAddMissing:missingCopy];
      v43 = v42;
      if (!v42)
      {
        v119 = objc_autoreleasePoolPush();
        v120 = firstCopy;
        v121 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
        {
          v122 = HMFGetLogIdentifier();
          *buf = 138543362;
          v199 = v122;
          _os_log_impl(&dword_229538000, v121, OS_LOG_TYPE_ERROR, "%{public}@Merged constraints is invalid, cannot merge this setting", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v119);
        v39 = 0;
        goto LABEL_111;
      }

      v186 = v42;
      v174 = value;
      v44 = value;
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

      v171 = value2;
      v47 = value2;
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

      v50 = objc_autoreleasePoolPush();
      v51 = firstCopy;
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543874;
        v199 = v53;
        v200 = 2112;
        v201 = v46;
        v202 = 2112;
        v203 = v49;
        _os_log_impl(&dword_229538000, v52, OS_LOG_TYPE_INFO, "%{public}@Comparing the values: self %@, second %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v50);
      v176 = v49;
      obj = v46;
      if ((HMFEqualObjects() & 1) == 0)
      {
        v54 = objc_autoreleasePoolPush();
        v55 = v51;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = HMFGetLogIdentifier();
          *buf = 138543362;
          v199 = v57;
          _os_log_impl(&dword_229538000, v56, OS_LOG_TYPE_INFO, "%{public}@Values are not matching, going to compute the value", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v54);
        v43 = v186;
        v58 = [HMDAccessorySettingMergeHandler _mergeFirst:v55 second:secondCopy mergedConstraints:v186 mergeStrategy:strategyCopy];
        value = v174;
        if (!v58)
        {
          v160 = objc_autoreleasePoolPush();
          v161 = v55;
          v162 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
          {
            v163 = HMFGetLogIdentifier();
            *buf = 138543362;
            v199 = v163;
            _os_log_impl(&dword_229538000, v162, OS_LOG_TYPE_ERROR, "%{public}@Cannot come up with the merged value", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v160);
          v39 = 0;
          goto LABEL_109;
        }

        v59 = v58;
        value3 = [v55 value];
        v61 = HMFEqualObjects();

        if ((v61 & 1) == 0)
        {
          v62 = objc_autoreleasePoolPush();
          v63 = v55;
          v64 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            v65 = HMFGetLogIdentifier();
            [v63 value];
            v66 = v168 = v62;
            *buf = 138543874;
            v199 = v65;
            v200 = 2112;
            v201 = v66;
            v202 = 2112;
            v203 = v59;
            _os_log_impl(&dword_229538000, v64, OS_LOG_TYPE_INFO, "%{public}@Updating the value from %@ to %@", buf, 0x20u);

            v62 = v168;
          }

          objc_autoreleasePoolPop(v62);
          [v63 setValue:v59];
        }
      }

      v67 = [MEMORY[0x277CBEB98] setWithArray:v186];
      v68 = MEMORY[0x277CBEB98];
      constraints = [v51 constraints];
      v70 = [v68 setWithArray:constraints];
      v71 = [v67 isEqualToSet:v70];

      if (v71)
      {
        v39 = 1;
        value2 = v171;
        value = v174;
        v43 = v186;
LABEL_110:

LABEL_111:
        goto LABEL_14;
      }

      v127 = objc_autoreleasePoolPush();
      v128 = v51;
      v129 = HMFGetOSLogHandle();
      value = v174;
      if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
      {
        v170 = HMFGetLogIdentifier();
        v130 = [MEMORY[0x277CBEB98] setWithArray:v186];
        v166 = v127;
        v131 = MEMORY[0x277CBEB98];
        constraints2 = [v128 constraints];
        v132 = [v131 setWithArray:constraints2];
        v133 = MEMORY[0x277CBEB98];
        constraints3 = [secondCopy constraints];
        v135 = [v133 setWithArray:constraints3];
        *buf = 138544130;
        v199 = v170;
        v200 = 2112;
        v201 = v130;
        v202 = 2112;
        v203 = v132;
        v204 = 2112;
        v205 = v135;
        _os_log_impl(&dword_229538000, v129, OS_LOG_TYPE_INFO, "%{public}@Numerical Constraints are not matching (merged: %@) (first: %@), (second: %@) updating the constraints", buf, 0x2Au);

        v127 = v166;
      }

      objc_autoreleasePoolPop(v127);
      v43 = v186;
      [v128 setConstraints:v186];
      v39 = 1;
LABEL_109:
      value2 = v171;
      goto LABEL_110;
    }

    goto LABEL_47;
  }

  if (type3 == 3)
  {
LABEL_47:
    v79 = objc_autoreleasePoolPush();
    v80 = firstCopy;
    v81 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
    {
      v82 = HMFGetLogIdentifier();
      [v80 type];
      v83 = HMAccessorySettingTypeToString();
      *buf = 138543618;
      v199 = v82;
      v200 = 2112;
      v201 = v83;
      _os_log_impl(&dword_229538000, v81, OS_LOG_TYPE_INFO, "%{public}@Setting type is %@, keeping the values", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v79);
    goto LABEL_69;
  }

  if (type3 != 4)
  {
    if (type3 != 5)
    {
      goto LABEL_14;
    }

    if ([firstCopy isConstraintMergeStrategyReflection] && objc_msgSend(secondCopy, "isConstraintMergeStrategyReflection"))
    {
      v72 = objc_autoreleasePoolPush();
      selfCopy = self;
      v74 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        objb = HMFGetLogIdentifier();
        [firstCopy name];
        v177 = v172 = value2;
        [firstCopy constraints];
        v75 = v187 = v72;
        name4 = [secondCopy name];
        constraints4 = [secondCopy constraints];
        *buf = 138544386;
        v199 = objb;
        v200 = 2112;
        v201 = v177;
        v202 = 2112;
        v203 = v75;
        v204 = 2112;
        v205 = name4;
        v206 = 2112;
        v207 = constraints4;
        _os_log_impl(&dword_229538000, v74, OS_LOG_TYPE_DEBUG, "%{public}@merge constraints first: %@, %@, second: %@, %@", buf, 0x34u);

        v72 = v187;
        value2 = v172;
      }

      objc_autoreleasePoolPop(v72);
      constraints5 = [secondCopy constraints];
      [firstCopy mergeConstraintsFromOther:constraints5];
    }

    else
    {
      constraints6 = [firstCopy constraints];
      v99 = [constraints6 count];
      constraints7 = [secondCopy constraints];
      v101 = [constraints7 count];

      if (v99 >= v101)
      {
LABEL_69:
        v39 = 1;
        goto LABEL_14;
      }

      v102 = objc_autoreleasePoolPush();
      v103 = firstCopy;
      v104 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_INFO))
      {
        v105 = HMFGetLogIdentifier();
        constraints8 = [secondCopy constraints];
        *buf = 138543618;
        v199 = v105;
        v200 = 2112;
        v201 = constraints8;
        _os_log_impl(&dword_229538000, v104, OS_LOG_TYPE_INFO, "%{public}@Updating constraints to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v102);
      constraints5 = [secondCopy constraints];
      [v103 setConstraints:constraints5];
    }

    goto LABEL_69;
  }

  v84 = [HMDAccessorySettingMergeHandler _mergeValidValueConstraintsFirst:firstCopy second:secondCopy shouldAddMissing:missingCopy];
  v85 = objc_autoreleasePoolPush();
  v86 = firstCopy;
  v87 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
  {
    v88 = HMFGetLogIdentifier();
    *buf = 138543618;
    v199 = v88;
    v200 = 2112;
    v201 = v84;
    _os_log_impl(&dword_229538000, v87, OS_LOG_TYPE_INFO, "%{public}@Setting type is selection, merged constraints: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v85);
  v89 = [v84 count];
  v39 = v89 != 0;
  v169 = v84;
  if (v89)
  {
    v188 = v86;
    v196 = 0u;
    v197 = 0u;
    v194 = 0u;
    v195 = 0u;
    obja = v84;
    v90 = [obja countByEnumeratingWithState:&v194 objects:v209 count:16];
    v173 = value2;
    v175 = value;
    if (v90)
    {
      v91 = v90;
      v92 = *v195;
LABEL_57:
      v93 = 0;
      while (1)
      {
        if (*v195 != v92)
        {
          objc_enumerationMutation(obja);
        }

        value4 = [*(*(&v194 + 1) + 8 * v93) value];
        value5 = [v188 value];
        v96 = HMFEqualObjects();

        if (v96)
        {
          break;
        }

        if (v91 == ++v93)
        {
          v91 = [obja countByEnumeratingWithState:&v194 objects:v209 count:16];
          value = v175;
          if (v91)
          {
            goto LABEL_57;
          }

          goto LABEL_63;
        }
      }

      v97 = v188;
      value6 = [v188 value];

      value = v175;
      if (value6)
      {
        goto LABEL_96;
      }
    }

    else
    {
LABEL_63:

      v97 = v188;
    }

    v108 = objc_autoreleasePoolPush();
    v109 = v97;
    v110 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
    {
      v111 = HMFGetLogIdentifier();
      *buf = 138543362;
      v199 = v111;
      _os_log_impl(&dword_229538000, v110, OS_LOG_TYPE_INFO, "%{public}@Did not find first's selection in merged list", buf, 0xCu);
    }

    v165 = v109;
    objc_autoreleasePoolPop(v108);
    v192 = 0u;
    v193 = 0u;
    v190 = 0u;
    v191 = 0u;
    v178 = obja;
    v112 = [v178 countByEnumeratingWithState:&v190 objects:v208 count:16];
    if (v112)
    {
      v113 = v112;
      v114 = *v191;
LABEL_75:
      v115 = 0;
      while (1)
      {
        if (*v191 != v114)
        {
          objc_enumerationMutation(v178);
        }

        value7 = [*(*(&v190 + 1) + 8 * v115) value];
        value8 = [secondCopy value];
        v118 = HMFEqualObjects();

        if (v118)
        {
          break;
        }

        if (v113 == ++v115)
        {
          v113 = [v178 countByEnumeratingWithState:&v190 objects:v208 count:16];
          value = v175;
          if (v113)
          {
            goto LABEL_75;
          }

          goto LABEL_81;
        }
      }

      value6 = [secondCopy value];

      value = v175;
      if (!value6)
      {
        goto LABEL_93;
      }

      v97 = v188;
    }

    else
    {
LABEL_81:

LABEL_93:
      v136 = objc_autoreleasePoolPush();
      v137 = v165;
      v138 = HMFGetOSLogHandle();
      v97 = v188;
      if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
      {
        v139 = HMFGetLogIdentifier();
        *buf = 138543362;
        v199 = v139;
        _os_log_impl(&dword_229538000, v138, OS_LOG_TYPE_INFO, "%{public}@Did not find second's selection in merged list, updating the selected value to nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v136);
      value6 = 0;
    }

LABEL_96:
    value9 = [v97 value];
    v189 = value6;
    v141 = HMFEqualObjects();

    if ((v141 & 1) == 0)
    {
      v142 = objc_autoreleasePoolPush();
      v143 = v97;
      v144 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v144, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v145 = v179 = v142;
        value10 = [v143 value];
        *buf = 138543874;
        v199 = v145;
        v200 = 2112;
        v201 = value10;
        v202 = 2112;
        v203 = v189;
        _os_log_impl(&dword_229538000, v144, OS_LOG_TYPE_INFO, "%{public}@Updating the value from %@ to %@", buf, 0x20u);

        v142 = v179;
      }

      objc_autoreleasePoolPop(v142);
      [v143 setValue:v189];
    }

    v147 = [MEMORY[0x277CBEB98] setWithArray:obja];
    v148 = MEMORY[0x277CBEB98];
    constraints9 = [v97 constraints];
    v150 = [v148 setWithArray:constraints9];
    v151 = v97;
    v152 = [v147 isEqualToSet:v150];

    if ((v152 & 1) == 0)
    {
      v153 = objc_autoreleasePoolPush();
      v154 = v151;
      v155 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
      {
        v156 = HMFGetLogIdentifier();
        [MEMORY[0x277CBEB98] setWithArray:obja];
        v157 = v180 = v153;
        v158 = MEMORY[0x277CBEB98];
        constraints10 = [v154 constraints];
        v159 = [v158 setWithArray:constraints10];
        *buf = 138543874;
        v199 = v156;
        v200 = 2112;
        v201 = v157;
        v202 = 2112;
        v203 = v159;
        _os_log_impl(&dword_229538000, v155, OS_LOG_TYPE_INFO, "%{public}@Selection Constraints are not matching (merged: %@) (first: %@), updating the constraints", buf, 0x20u);

        v153 = v180;
      }

      objc_autoreleasePoolPop(v153);
      [v154 setConstraints:obja];
    }

    value2 = v173;
  }

  else
  {
    v123 = objc_autoreleasePoolPush();
    v124 = v86;
    v125 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v125, OS_LOG_TYPE_ERROR))
    {
      v126 = HMFGetLogIdentifier();
      *buf = 138543362;
      v199 = v126;
      _os_log_impl(&dword_229538000, v125, OS_LOG_TYPE_ERROR, "%{public}@There are no elements in the intersection of selection list", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v123);
  }

LABEL_14:
  return v39;
}

@end