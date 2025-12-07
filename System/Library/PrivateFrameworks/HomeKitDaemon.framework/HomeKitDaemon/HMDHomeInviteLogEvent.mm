@interface HMDHomeInviteLogEvent
+ (id)logCategory;
+ (id)updateWithInvitationState:(int64_t)state isFMFDevice:(BOOL)device;
+ (id)updateWithState:(int64_t)state isFMFDevice:(BOOL)device;
- (HMDHomeInviteLogEvent)initWithHomeInviteLogEventState:(int64_t)state isFMFDevice:(BOOL)device;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHomeInviteLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v21[15] = *MEMORY[0x277D85DE8];
  v20[0] = @"received_BOOL";
  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent received](self, "received")}];
  v21[0] = v19;
  v20[1] = @"filtered_BOOL";
  v18 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent filtered](self, "filtered")}];
  v21[1] = v18;
  v20[2] = @"suppressedNotification_BOOL";
  v17 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent suppressedNotification](self, "suppressedNotification")}];
  v21[2] = v17;
  v20[3] = @"accepted_BOOL";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent accepted](self, "accepted")}];
  v21[3] = v16;
  v20[4] = @"declined_BOOL";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent declined](self, "declined")}];
  v21[4] = v15;
  v20[5] = @"ignored_BOOL";
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent ignored](self, "ignored")}];
  v21[5] = v14;
  v20[6] = @"expired_BOOL";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent expired](self, "expired")}];
  v21[6] = v3;
  v20[7] = @"received_INT";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent received](self, "received")}];
  v21[7] = v4;
  v20[8] = @"filtered_INT";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent filtered](self, "filtered")}];
  v21[8] = v5;
  v20[9] = @"suppressedNotification_INT";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent suppressedNotification](self, "suppressedNotification")}];
  v21[9] = v6;
  v20[10] = @"accepted_INT";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent accepted](self, "accepted")}];
  v21[10] = v7;
  v20[11] = @"declined_INT";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent declined](self, "declined")}];
  v21[11] = v8;
  v20[12] = @"ignored_INT";
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent ignored](self, "ignored")}];
  v21[12] = v9;
  v20[13] = @"expired_INT";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent expired](self, "expired")}];
  v21[13] = v10;
  v20[14] = @"isFMFDevice";
  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeInviteLogEvent isFMFDevice](self, "isFMFDevice")}];
  v21[14] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:15];

  return v12;
}

- (HMDHomeInviteLogEvent)initWithHomeInviteLogEventState:(int64_t)state isFMFDevice:(BOOL)device
{
  v22 = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = HMDHomeInviteLogEvent;
  v6 = [(HMMLogEvent *)&v19 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v6->_expired = 0;
  v6->_ignored = 0;
  v6->_declined = 0;
  v6->_accepted = 0;
  p_suppressedNotification = &v6->_suppressedNotification;
  v6->_suppressedNotification = 0;
  v6->_filtered = 0;
  v6->_received = 0;
  v6->_isFMFDevice = device;
  if (state <= 3)
  {
    switch(state)
    {
      case 1:
        p_suppressedNotification = &v6->_received;
        break;
      case 2:
        p_suppressedNotification = &v6->_filtered;
        break;
      case 3:
        break;
      default:
        goto LABEL_12;
    }

LABEL_17:
    *p_suppressedNotification = 1;
LABEL_18:
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v17;
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v13 = v15;
    goto LABEL_21;
  }

  if (state <= 5)
  {
    p_suppressedNotification = &v6->_accepted;
    if (state != 4)
    {
      p_suppressedNotification = &v6->_declined;
    }

    goto LABEL_17;
  }

  p_suppressedNotification = &v6->_ignored;
  if (state == 6)
  {
    goto LABEL_17;
  }

  p_suppressedNotification = &v6->_expired;
  if (state == 7)
  {
    goto LABEL_17;
  }

LABEL_12:
  v9 = objc_autoreleasePoolPush();
  v10 = v7;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v12;
    _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@No home invitation event to log. Invitation was cancelled or is pending.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = 0;
LABEL_21:

  return v13;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_130742 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_130742, &__block_literal_global_130743);
  }

  v3 = logCategory__hmf_once_v3_130744;

  return v3;
}

void __36__HMDHomeInviteLogEvent_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_130744;
  logCategory__hmf_once_v3_130744 = v0;
}

+ (id)updateWithInvitationState:(int64_t)state isFMFDevice:(BOOL)device
{
  if ((state - 3) > 4)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_22A5878F8[state - 3];
  }

  v7 = [self updateWithState:v6 isFMFDevice:{device, v4}];

  return v7;
}

+ (id)updateWithState:(int64_t)state isFMFDevice:(BOOL)device
{
  v4 = [[HMDHomeInviteLogEvent alloc] initWithHomeInviteLogEventState:state isFMFDevice:device];

  return v4;
}

@end