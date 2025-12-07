@interface HMDAccessoryFirmwareUpdateTimeWindow
+ (id)logCategory;
- (HMDAccessoryFirmwareUpdateTimeWindow)initWithStartTime:(id)time endTime:(id)endTime;
@end

@implementation HMDAccessoryFirmwareUpdateTimeWindow

- (HMDAccessoryFirmwareUpdateTimeWindow)initWithStartTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v22.receiver = self;
  v22.super_class = HMDAccessoryFirmwareUpdateTimeWindow;
  v8 = [(HMDAccessoryFirmwareUpdateTimeWindow *)&v22 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v9 setDateFormat:@"HH:mm:ss"];
    v10 = [v9 dateFromString:timeCopy];
    v11 = [v9 dateFromString:endTimeCopy];
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || ([MEMORY[0x277CBEA80] currentCalendar], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "components:fromDate:", 224, v10), v15 = objc_claimAutoreleasedReturnValue(), startTimeComponents = v8->_startTimeComponents, v8->_startTimeComponents = v15, startTimeComponents, v14, objc_msgSend(MEMORY[0x277CBEA80], "currentCalendar"), v17 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v17, "components:fromDate:", 224, v12), v18 = objc_claimAutoreleasedReturnValue(), endTimeComponents = v8->_endTimeComponents, v8->_endTimeComponents = v18, endTimeComponents, v17, !v8->_startTimeComponents) || !v8->_endTimeComponents)
    {

      v20 = 0;
      goto LABEL_11;
    }
  }

  v20 = v8;
LABEL_11:

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_121479 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_121479, &__block_literal_global_121480);
  }

  v3 = logCategory__hmf_once_v1_121481;

  return v3;
}

uint64_t __51__HMDAccessoryFirmwareUpdateTimeWindow_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_121481;
  logCategory__hmf_once_v1_121481 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end