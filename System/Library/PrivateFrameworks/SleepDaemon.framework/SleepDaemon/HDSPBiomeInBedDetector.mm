@interface HDSPBiomeInBedDetector
+ (double)hoursOfSleepForResult:(id)result;
+ (id)inBedDetector;
+ (id)inBedDetectorWithProvider:(id)provider;
- (HDSPBiomeInBedDetector)initWithProvider:(id)provider;
- (id)detectInBedTimesDuringInterval:(id)interval;
- (id)detectInBedTimesHelperDuringInterval:(id)interval;
- (id)findLastTimeDeviceWasLockedDuringInterval:(id)interval error:(id *)error;
- (id)findLastTimeDeviceWasUnlockedDuringInterval:(id)interval error:(id *)error;
- (id)findLatestEndOfMovementDuringInterval:(id)interval error:(id *)error;
- (id)lockedTimesDuringInterval:(id)interval error:(id *)error;
@end

@implementation HDSPBiomeInBedDetector

+ (id)inBedDetector
{
  v3 = objc_alloc_init(HDSPBiomeInBedDetectionProvider);
  v4 = [self inBedDetectorWithProvider:v3];

  return v4;
}

+ (id)inBedDetectorWithProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithProvider:providerCopy];

  return v5;
}

- (HDSPBiomeInBedDetector)initWithProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = HDSPBiomeInBedDetector;
  v6 = [(HDSPBiomeInBedDetector *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_biomeProvider, provider);
  }

  return v7;
}

+ (double)hoursOfSleepForResult:(id)result
{
  v16 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [resultCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(resultCopy);
        }

        [*(*(&v11 + 1) + 8 * i) duration];
        v7 = v7 + v9 / 3600.0;
      }

      v5 = [resultCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)detectInBedTimesDuringInterval:(id)interval
{
  intervalCopy = interval;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HDSPBiomeInBedDetector *)self detectInBedTimesHelperDuringInterval:intervalCopy];
  objc_autoreleasePoolPop(v5);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__HDSPBiomeInBedDetector_detectInBedTimesDuringInterval___block_invoke;
  v9[3] = &unk_279C7B7B8;
  v9[4] = self;
  v7 = [v6 addSuccessBlock:v9];

  return v6;
}

void __57__HDSPBiomeInBedDetector_detectInBedTimesDuringInterval___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    [objc_opt_class() hoursOfSleepForResult:v2];
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] calculated time in bed hours: %f", &v7, 0x16u);
  }
}

- (id)detectInBedTimesHelperDuringInterval:(id)interval
{
  v135 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];

  v7 = HKSPLogForCategory();
  v8 = &off_269B98000;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v128 = objc_opt_class();
    v129 = 2112;
    v130 = startDate;
    v131 = 2112;
    v132 = endDate;
    v9 = v128;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for in-bed intervals between %@ and %@", buf, 0x20u);
  }

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    *buf = 138543362;
    v128 = v11;
    v12 = v11;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Establishing night start..", buf, 0xCu);
  }

  v13 = [startDate dateByAddingTimeInterval:14400.0];
  v14 = [endDate dateByAddingTimeInterval:-60.0];
  v15 = objc_alloc(MEMORY[0x277CCA970]);
  v115 = v13;
  v16 = [v13 earlierDate:v14];
  v17 = [v15 initWithStartDate:startDate endDate:v16];

  v126 = 0;
  v113 = v17;
  v18 = [(HDSPBiomeInBedDetector *)self findLatestEndOfMovementDuringInterval:v17 error:&v126];
  v19 = v126;
  if (v19)
  {
    v20 = v19;
    v21 = HKSPLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v91 = objc_opt_class();
      *buf = 138543618;
      v128 = v91;
      v129 = 2112;
      v130 = v20;
      v92 = v91;
      _os_log_error_impl(&dword_269B11000, v21, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding last end of movement: %@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v65 = HKSPLogForCategory();
  v20 = v65;
  if (v18)
  {
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = objc_opt_class();
      *buf = 138543618;
      v128 = v66;
      v129 = 2112;
      v130 = v18;
      v21 = v66;
      _os_log_impl(&dword_269B11000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Night start is %@", buf, 0x16u);
LABEL_8:
    }
  }

  else if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    v70 = objc_opt_class();
    *buf = 138543618;
    v128 = v70;
    v129 = 2112;
    v130 = startDate;
    v21 = v70;
    _os_log_error_impl(&dword_269B11000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find last end of movement. Falling back to provided start time (%@).", buf, 0x16u);
    goto LABEL_8;
  }

  if (v18)
  {
    v22 = v18;
  }

  else
  {
    v22 = startDate;
  }

  v23 = v22;

  v24 = HKSPLogForCategory();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = objc_opt_class();
    *buf = 138543362;
    v128 = v25;
    v26 = v25;
    _os_log_impl(&dword_269B11000, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] Establishing final bedtime..", buf, 0xCu);
  }

  v27 = v23;
  v112 = [v27 dateByAddingTimeInterval:5400.0];
  v117 = [v112 earlierDate:v14];
  v125[1] = 0;
  v119 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v27 endDate:v117];
  v28 = [HDSPBiomeInBedDetector findLastTimeDeviceWasLockedDuringInterval:"findLastTimeDeviceWasLockedDuringInterval:error:" error:?];
  v29 = 0;
  v120 = v28;
  if (v29)
  {
    v30 = v29;
    v31 = HKSPLogForCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v93 = objc_opt_class();
      *buf = 138544130;
      v128 = v93;
      v129 = 2112;
      v130 = v27;
      v131 = 2112;
      v132 = v117;
      v133 = 2112;
      v134 = v30;
      v94 = v27;
      v95 = v93;
      _os_log_error_impl(&dword_269B11000, v31, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding last lock date between %@ and %@: %@", buf, 0x2Au);

      v27 = v94;
      v28 = v120;
    }
  }

  v32 = HKSPLogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_opt_class();
    *buf = 138543618;
    v128 = v33;
    v129 = 2112;
    v130 = v28;
    v34 = v33;
    _os_log_impl(&dword_269B11000, v32, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last lock was %@", buf, 0x16u);
  }

  v122 = v27;
  if (v28)
  {
    v122 = [v27 laterDate:v28];
  }

  biomeProvider = self->_biomeProvider;
  v125[0] = 0;
  v121 = [(HDSPBiomeInBedDetectionProviding *)biomeProvider findLastTimeDeviceWasPluggedInDuringInterval:v119 error:v125];
  v36 = v125[0];
  if (v36)
  {
    v37 = v36;
    v38 = HKSPLogForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v96 = objc_opt_class();
      *buf = 138544130;
      v128 = v96;
      v129 = 2112;
      v130 = v27;
      v131 = 2112;
      v132 = v117;
      v133 = 2112;
      v134 = v37;
      v97 = v27;
      v98 = v96;
      _os_log_error_impl(&dword_269B11000, v38, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding last date device was plugged in between %@ and %@: %@", buf, 0x2Au);

      v27 = v97;
      v28 = v120;
    }
  }

  v39 = HKSPLogForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = objc_opt_class();
    *buf = 138543618;
    v128 = v40;
    v129 = 2112;
    v130 = v121;
    v41 = v40;
    _os_log_impl(&dword_269B11000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] Last plugin was %@", buf, 0x16u);
  }

  if (v121)
  {
    v42 = [v122 laterDate:?];

    v122 = v42;
  }

  v43 = HKSPLogForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = objc_opt_class();
    *buf = 138543618;
    v128 = v44;
    v129 = 2112;
    v130 = v122;
    v45 = v44;
    _os_log_impl(&dword_269B11000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] Final bedtime is %@", buf, 0x16u);
  }

  v46 = HKSPLogForCategory();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_opt_class();
    *buf = 138543362;
    v128 = v47;
    v48 = v47;
    _os_log_impl(&dword_269B11000, v46, OS_LOG_TYPE_DEFAULT, "[%{public}@] Establing night end..", buf, 0xCu);
  }

  v49 = [endDate dateByAddingTimeInterval:-3600.0];
  [v49 timeIntervalSinceReferenceDate];
  v51 = v50;
  [v122 timeIntervalSinceReferenceDate];
  v53 = v52;
  v54 = HKSPLogForCategory();
  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT);
  v114 = v14;
  v118 = v49;
  if (v51 <= v53)
  {
    if (!v55)
    {
LABEL_55:
      v59 = 0;
      goto LABEL_56;
    }

    v63 = objc_opt_class();
    *buf = 138543362;
    v128 = v63;
    v64 = v63;
    _os_log_impl(&dword_269B11000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Bedtime started less than an hour before end date, not performing further movement based changes on end date.", buf, 0xCu);
LABEL_54:

    goto LABEL_55;
  }

  if (v55)
  {
    v56 = objc_opt_class();
    *buf = 138543874;
    v128 = v56;
    v129 = 2112;
    v130 = v49;
    v131 = 2112;
    v132 = endDate;
    v57 = v56;
    _os_log_impl(&dword_269B11000, v54, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for earliest start of movement between %@ and %@", buf, 0x20u);

    v49 = v118;
  }

  v54 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v49 endDate:endDate];
  v58 = self->_biomeProvider;
  v124 = 0;
  v59 = [(HDSPBiomeInBedDetectionProviding *)v58 findMotionTerminusDuringInterval:v54 latest:0 error:&v124];
  v60 = v124;
  if (v60)
  {
    v61 = v60;
    v62 = HKSPLogForCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      v102 = objc_opt_class();
      *buf = 138543618;
      v128 = v102;
      v129 = 2112;
      v130 = v61;
      v103 = v59;
      v104 = v102;
      _os_log_error_impl(&dword_269B11000, v62, OS_LOG_TYPE_ERROR, "[%{public}@] Error finding first start of movement: %@", buf, 0x16u);

      v59 = v103;
      v8 = &off_269B98000;
    }

    v28 = v120;
    goto LABEL_56;
  }

  v67 = HKSPLogForCategory();
  v64 = v67;
  if (!v59)
  {
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v105 = objc_opt_class();
      *buf = 138543618;
      v128 = v105;
      v129 = 2112;
      v130 = endDate;
      v106 = v27;
      v107 = v105;
      _os_log_error_impl(&dword_269B11000, v64, OS_LOG_TYPE_ERROR, "[%{public}@] Unable to find first start of movement. Falling back to provided end time (%@).", buf, 0x16u);

      v27 = v106;
      v28 = v120;
    }

    goto LABEL_54;
  }

  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    v68 = objc_opt_class();
    *buf = 138543618;
    v128 = v68;
    v129 = 2112;
    v130 = v59;
    v69 = v68;
    _os_log_impl(&dword_269B11000, v64, OS_LOG_TYPE_DEFAULT, "[%{public}@] Night end is %@", buf, 0x16u);

    v28 = v120;
  }

LABEL_56:
  v116 = startDate;

  if (v59)
  {
    v71 = v59;
  }

  else
  {
    v71 = endDate;
  }

  v72 = v71;

  v73 = HKSPLogForCategory();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = objc_opt_class();
    *buf = *(v8 + 71);
    v128 = v74;
    v129 = 2112;
    v130 = v122;
    v131 = 2112;
    v132 = v72;
    v75 = v74;
    _os_log_impl(&dword_269B11000, v73, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detecting in-bed intervals between night start (%@) and end (%@)", buf, 0x20u);

    v28 = v120;
  }

  v76 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v122 endDate:v72];
  v123 = 0;
  v77 = [(HDSPBiomeInBedDetector *)self lockedTimesDuringInterval:v76 error:&v123];
  v78 = v123;
  if (v78)
  {
    v79 = HKSPLogForCategory();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
    {
      v99 = objc_opt_class();
      *buf = 138544130;
      v128 = v99;
      v129 = 2112;
      v130 = v122;
      v131 = 2112;
      v132 = v72;
      v133 = 2112;
      v134 = v78;
      v100 = v59;
      v101 = v99;
      _os_log_error_impl(&dword_269B11000, v79, OS_LOG_TYPE_ERROR, "[%{public}@] Error identifying locked times between %@ and %@: %@", buf, 0x2Au);

      v59 = v100;
    }

    v28 = v120;
  }

  v111 = v59;
  v80 = HKSPLogForCategory();
  if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
  {
    v81 = objc_opt_class();
    v82 = MEMORY[0x277CCABB0];
    v108 = v81;
    [v82 numberWithUnsignedInteger:{objc_msgSend(v77, "count")}];
    v83 = v109 = v76;
    firstObject = [v77 firstObject];
    [firstObject startDate];
    v110 = v72;
    v86 = v85 = v27;
    lastObject = [v77 lastObject];
    endDate2 = [lastObject endDate];
    *buf = 138544130;
    v128 = v81;
    v129 = 2112;
    v130 = v83;
    v131 = 2112;
    v132 = v86;
    v133 = 2112;
    v134 = endDate2;
    _os_log_impl(&dword_269B11000, v80, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found %@ in-bed intervals between %@ & %@", buf, 0x2Au);

    v27 = v85;
    v72 = v110;

    v28 = v120;
    v76 = v109;
  }

  if (v78)
  {
    [MEMORY[0x277D2C900] futureWithError:v78];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:v77];
  }
  v89 = ;

  return v89;
}

- (id)lockedTimesDuringInterval:(id)interval error:(id *)error
{
  v89 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v84 = objc_opt_class();
    v85 = 2112;
    v86 = intervalCopy;
    v8 = v84;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for times device was locked in %@", buf, 0x16u);
  }

  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  biomeProvider = self->_biomeProvider;
  v80 = 0;
  v12 = [(HDSPBiomeInBedDetectionProviding *)biomeProvider findTimesDeviceWasUnlockedDuringInterval:intervalCopy error:&v80];
  v13 = v80;
  v14 = v13;
  if (error && v13)
  {
    v15 = v13;
    array = 0;
    *error = v14;
    v16 = v14;
  }

  else
  {
    v79 = v13;
    v17 = [(HDSPBiomeInBedDetector *)self findLastTimeDeviceWasUnlockedDuringInterval:intervalCopy error:&v79];
    v16 = v79;

    if (error && v16)
    {
      v18 = v16;
      array = 0;
      *error = v16;
    }

    else
    {
      if (v17)
      {
        if (![v12 count] || (objc_msgSend(v12, "lastObject"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "endDate"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "compare:", v17), v20, v19, v21 == -1))
        {
          v22 = HKSPLogForCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            *buf = 138543618;
            v84 = v23;
            v85 = 2112;
            v86 = v17;
            v24 = v23;
            _os_log_impl(&dword_269B11000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Limited search for locked events to last lock end %@", buf, 0x16u);
          }

          v25 = v17;
          endDate = v25;
        }
      }

      if ([v12 count])
      {
        v66 = intervalCopy;
        v67 = v16;
        v64 = endDate;
        array = [MEMORY[0x277CBEB18] array];
        v65 = startDate;
        v26 = startDate;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v68 = v12;
        obj = v12;
        v27 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
        v63 = v17;
        if (v27)
        {
          v28 = v27;
          v72 = *v76;
          endDate4 = v26;
          v73 = v26;
          do
          {
            v30 = 0;
            v31 = endDate4;
            do
            {
              if (*v76 != v72)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(*(&v75 + 1) + 8 * v30);
              v33 = HKSPLogForCategory();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                v34 = objc_opt_class();
                v35 = v34;
                startDate2 = [v32 startDate];
                endDate2 = [v32 endDate];
                *buf = 138543874;
                v84 = v34;
                v85 = 2112;
                v86 = startDate2;
                v87 = 2112;
                v88 = endDate2;
                _os_log_impl(&dword_269B11000, v33, OS_LOG_TYPE_DEFAULT, "[%{public}@] found not locked event between %@ and %@", buf, 0x20u);

                v26 = v73;
              }

              v38 = objc_alloc(MEMORY[0x277CCA970]);
              startDate3 = [v32 startDate];
              v40 = [startDate3 laterDate:v26];
              v41 = [v38 initWithStartDate:v31 endDate:v40];

              v42 = HKSPLogForCategory();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = objc_opt_class();
                v44 = v43;
                startDate4 = [v41 startDate];
                endDate3 = [v41 endDate];
                *buf = 138543874;
                v84 = v43;
                v85 = 2112;
                v86 = startDate4;
                v87 = 2112;
                v88 = endDate3;
                _os_log_impl(&dword_269B11000, v42, OS_LOG_TYPE_DEFAULT, "[%{public}@] inferring locked event between %@ and %@", buf, 0x20u);

                v26 = v73;
              }

              [v41 duration];
              if (v47 > 0.0)
              {
                [array addObject:v41];
              }

              endDate4 = [v32 endDate];

              ++v30;
              v31 = endDate4;
            }

            while (v28 != v30);
            v28 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
          }

          while (v28);
        }

        else
        {
          endDate4 = v26;
        }

        endDate = v64;
        v54 = [endDate4 earlierDate:v64];
        v55 = [v54 isEqualToDate:endDate4];

        intervalCopy = v66;
        v16 = v67;
        if (v55)
        {
          v56 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:endDate4 endDate:v64];
          v57 = HKSPLogForCategory();
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = objc_opt_class();
            v59 = v58;
            startDate5 = [v56 startDate];
            endDate5 = [v56 endDate];
            *buf = 138543874;
            v84 = v58;
            v85 = 2112;
            v86 = startDate5;
            v87 = 2112;
            v88 = endDate5;
            _os_log_impl(&dword_269B11000, v57, OS_LOG_TYPE_DEFAULT, "[%{public}@] adding last locked event between %@ and %@", buf, 0x20u);

            v16 = v67;
          }

          [array addObject:v56];
        }

        startDate = v65;
        v12 = v68;
        v17 = v63;
      }

      else
      {
        v48 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:endDate];
        v49 = HKSPLogForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = objc_opt_class();
          v74 = v50;
          [v48 startDate];
          v51 = v69 = v12;
          [v48 endDate];
          v53 = v52 = v16;
          *buf = 138543874;
          v84 = v50;
          v85 = 2112;
          v86 = v51;
          v87 = 2112;
          v88 = v53;
          _os_log_impl(&dword_269B11000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] no unlocked events, device was locked between %@ and %@", buf, 0x20u);

          v16 = v52;
          v12 = v69;
        }

        v82 = v48;
        array = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
      }
    }
  }

  return array;
}

- (id)findLatestEndOfMovementDuringInterval:(id)interval error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = startDate;
    v18 = 2112;
    v19 = endDate;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for latest end of movement between %@ and %@", &v14, 0x20u);
  }

  v12 = [(HDSPBiomeInBedDetectionProviding *)self->_biomeProvider findMotionTerminusDuringInterval:intervalCopy latest:1 error:error];

  return v12;
}

- (id)findLastTimeDeviceWasUnlockedDuringInterval:(id)interval error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = startDate;
    v18 = 2112;
    v19 = endDate;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for last time device was unlocked between %@ and %@", &v14, 0x20u);
  }

  v12 = [(HDSPBiomeInBedDetectionProviding *)self->_biomeProvider findLastTimeDeviceLockChangedDuringInterval:intervalCopy isLocked:0 error:error];

  return v12;
}

- (id)findLastTimeDeviceWasLockedDuringInterval:(id)interval error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    startDate = [intervalCopy startDate];
    endDate = [intervalCopy endDate];
    v14 = 138543874;
    v15 = v8;
    v16 = 2112;
    v17 = startDate;
    v18 = 2112;
    v19 = endDate;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Looking for last time device was locked between %@ and %@", &v14, 0x20u);
  }

  v12 = [(HDSPBiomeInBedDetectionProviding *)self->_biomeProvider findLastTimeDeviceLockChangedDuringInterval:intervalCopy isLocked:1 error:error];

  return v12;
}

@end