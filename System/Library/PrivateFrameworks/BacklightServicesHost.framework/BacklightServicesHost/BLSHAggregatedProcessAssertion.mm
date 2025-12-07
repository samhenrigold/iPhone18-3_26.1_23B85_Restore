@interface BLSHAggregatedProcessAssertion
- (BLSHAggregatedProcessAssertion)initWithExplanation:(id)explanation processIdentity:(id)identity duration:(double)duration;
- (NSString)description;
- (id)createRBSAssertion;
- (void)createRBSAssertion;
- (void)dealloc;
@end

@implementation BLSHAggregatedProcessAssertion

- (id)createRBSAssertion
{
  v14[4] = *MEMORY[0x277D85DE8];
  v3 = bls_scenes_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(BLSHAggregatedProcessAssertion *)self createRBSAssertion];
  }

  v4 = [MEMORY[0x277D47008] targetWithProcessIdentity:self->_processIdentity];
  duration = self->_duration;
  if (duration == 1.79769313e308)
  {
    grant = [MEMORY[0x277D46E70] grant];
    grantUserInitiated = [MEMORY[0x277D46DF0] grantUserInitiated];
    v13[1] = grantUserInitiated;
    grantWithBackgroundPriority = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
    v13[2] = grantWithBackgroundPriority;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  }

  else
  {
    grant = [MEMORY[0x277D46E48] attributeWithDuration:1 warningDuration:1 startPolicy:duration endPolicy:0.0];
    v14[0] = grant;
    grantUserInitiated = [MEMORY[0x277D46E70] grant];
    v14[1] = grantUserInitiated;
    grantWithBackgroundPriority = [MEMORY[0x277D46DF0] grantUserInitiated];
    v14[2] = grantWithBackgroundPriority;
    grantWithBackgroundPriority2 = [MEMORY[0x277D46EA8] grantWithBackgroundPriority];
    v14[3] = grantWithBackgroundPriority2;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  }

  v11 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:self->_explanation target:v4 attributes:v10];

  return v11;
}

- (void)dealloc
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"_invalidated"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v5 = OUTLINED_FUNCTION_4(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BLSHAggregatedProcessAssertion)initWithExplanation:(id)explanation processIdentity:(id)identity duration:(double)duration
{
  explanationCopy = explanation;
  identityCopy = identity;
  v14.receiver = self;
  v14.super_class = BLSHAggregatedProcessAssertion;
  v11 = [(BLSHAggregatedProcessAssertion *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_processIdentity, identity);
    objc_storeStrong(&v12->_explanation, explanation);
    v12->_duration = duration;
  }

  return v12;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v3 appendString:self->_explanation withName:@"explanation"];
  v4 = [v3 appendObject:self->_processIdentity withName:@"processIdentity"];
  if (self->_duration != 1.79769313e308)
  {
    v5 = [v3 appendDouble:@"duration" withName:3 decimalPrecision:?];
  }

  build = [v3 build];

  return build;
}

- (void)createRBSAssertion
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(self + 32);
  v3 = 134218242;
  selfCopy = self;
  v5 = 2114;
  v6 = v2;
  _os_log_debug_impl(&dword_21FD11000, a2, OS_LOG_TYPE_DEBUG, "%p:createRBSAssertion, creating new RBS assertion for %{public}@", &v3, 0x16u);
}

@end