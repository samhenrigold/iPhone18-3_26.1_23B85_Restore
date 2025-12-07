@interface MNTransitWalkingSegmentInstruction
+ (id)instructionForWalkingSegment:(id)segment context:(int64_t)context;
- (MNTransitWalkingSegmentInstruction)initWithWalkingSegment:(id)segment context:(int64_t)context;
- (id)instructionSet;
@end

@implementation MNTransitWalkingSegmentInstruction

- (id)instructionSet
{
  v16 = *MEMORY[0x1E69E9840];
  walkingSegment = [(MNTransitWalkingSegmentInstruction *)self walkingSegment];
  steps = [walkingSegment steps];
  firstObject = [steps firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315906;
      v9 = "[MNTransitWalkingSegmentInstruction instructionSet]";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNTransitInstruction.m";
      v12 = 1024;
      v13 = 378;
      v14 = 2080;
      v15 = "[step isKindOfClass:[GEOComposedTransitWalkingRouteStep class]]";
      _os_log_impl(&dword_1D311E000, v7, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v8, 0x26u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    instructions = [firstObject instructions];
  }

  else
  {
    instructions = 0;
  }

  return instructions;
}

- (MNTransitWalkingSegmentInstruction)initWithWalkingSegment:(id)segment context:(int64_t)context
{
  segmentCopy = segment;
  v12.receiver = self;
  v12.super_class = MNTransitWalkingSegmentInstruction;
  v8 = [(MNTransitInstruction *)&v12 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_walkingSegment, segment);
    [(MNTransitInstruction *)v9 _fillInInstructions];
    v10 = v9;
  }

  return v9;
}

+ (id)instructionForWalkingSegment:(id)segment context:(int64_t)context
{
  segmentCopy = segment;
  v7 = [[self alloc] initWithWalkingSegment:segmentCopy context:context];

  return v7;
}

@end