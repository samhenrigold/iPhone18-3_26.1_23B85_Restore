@interface GEOAPSequenceState
- (GEOAPSequenceState)initWithName:(id)name;
- (unint64_t)processUserAction:(int)action target:(int)target atTime:(double)time;
- (void)addAbortingUserAction:(int)action target:(int)target;
- (void)reset;
@end

@implementation GEOAPSequenceState

- (void)reset
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOGetGEOAPSequenceStateAnalyticsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    name = self->_name;
    v5 = 138412290;
    v6 = name;
    _os_log_impl(&dword_1AB634000, v3, OS_LOG_TYPE_DEBUG, "reset state '%@'", &v5, 0xCu);
  }

  self->_finished = 0;
  self->_startTime = 0.0;
}

- (unint64_t)processUserAction:(int)action target:(int)target atTime:(double)time
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    *v6 = 0;
    _os_log_fault_impl(&dword_1AB634000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unreachable reached: base class has no implementation", v6, 2u);
  }

  return 3;
}

- (void)addAbortingUserAction:(int)action target:(int)target
{
  v5 = *&action;
  if (!self->_rejectionPairs)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    rejectionPairs = self->_rejectionPairs;
    self->_rejectionPairs = v7;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:target | (v5 << 32)];
  [(NSMutableArray *)self->_rejectionPairs addObject:v9];
}

- (GEOAPSequenceState)initWithName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = GEOAPSequenceState;
  v5 = [(GEOAPSequenceState *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_finished = 0;
    v5->_startTime = 0.0;
    fulfillmentBlock = v5->_fulfillmentBlock;
    v5->_fulfillmentBlock = 0;
  }

  return v5;
}

@end