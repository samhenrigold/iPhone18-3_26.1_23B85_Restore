@interface HMDHomeActivityStateDetails
- (BOOL)isEqual:(id)equal;
- (HMDHomeActivityStateDetails)initWithHomeActivityState:(unint64_t)state holdInPlace:(BOOL)place holdExpiryTime:(id)time transitionalStateEndDate:(id)date;
- (id)attributeDescriptions;
- (id)generatePayload;
@end

@implementation HMDHomeActivityStateDetails

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  if (v6 && (v7 = -[HMDHomeActivityStateDetails state](self, "state"), v7 == [v6 state]) && (v8 = -[HMDHomeActivityStateDetails isHoldActive](self, "isHoldActive"), v8 == objc_msgSend(v6, "isHoldActive")) && (-[HMDHomeActivityStateDetails holdExpiryTime](self, "holdExpiryTime"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "holdExpiryTime"), v10 = objc_claimAutoreleasedReturnValue(), v11 = HMFEqualObjects(), v10, v9, v11))
  {
    transitionalStateEndDate = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
    transitionalStateEndDate2 = [v6 transitionalStateEndDate];
    v14 = HMFEqualObjects();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)generatePayload
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHomeActivityStateDetails state](self, "state")}];
  [dictionary setObject:v4 forKeyedSubscript:*MEMORY[0x277CCFDD8]];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDHomeActivityStateDetails isHoldActive](self, "isHoldActive")}];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277CCFDD0]];

  holdExpiryTime = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  [dictionary setObject:holdExpiryTime forKeyedSubscript:*MEMORY[0x277CCFDC8]];

  transitionalStateEndDate = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
  [dictionary setObject:transitionalStateEndDate forKeyedSubscript:*MEMORY[0x277CCFE08]];

  v8 = objc_msgSend_copy(dictionary);

  return v8;
}

- (id)attributeDescriptions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityStateDetails *)self state];
  v4 = HMHomeActivityStateToString();
  v5 = [v3 initWithName:@"activityState" value:v4];
  v17[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  transitionalStateEndDate = [(HMDHomeActivityStateDetails *)self transitionalStateEndDate];
  v8 = [v6 initWithName:@"transitionalStateEndDate" value:transitionalStateEndDate];
  v17[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeActivityStateDetails *)self isHoldActive];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"isActivityStateHoldActive" value:v10];
  v17[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  holdExpiryTime = [(HMDHomeActivityStateDetails *)self holdExpiryTime];
  v14 = [v12 initWithName:@"activityStateHoldEndDate" value:holdExpiryTime];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

- (HMDHomeActivityStateDetails)initWithHomeActivityState:(unint64_t)state holdInPlace:(BOOL)place holdExpiryTime:(id)time transitionalStateEndDate:(id)date
{
  timeCopy = time;
  dateCopy = date;
  v16.receiver = self;
  v16.super_class = HMDHomeActivityStateDetails;
  v13 = [(HMDHomeActivityStateDetails *)&v16 init];
  v14 = v13;
  if (v13)
  {
    v13->_state = state;
    objc_storeStrong(&v13->_transitionalStateEndDate, date);
    v14->_holdActive = place;
    objc_storeStrong(&v14->_holdExpiryTime, time);
  }

  return v14;
}

@end