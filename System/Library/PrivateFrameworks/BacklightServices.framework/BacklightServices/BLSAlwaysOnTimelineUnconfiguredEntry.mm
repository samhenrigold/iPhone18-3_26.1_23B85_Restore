@interface BLSAlwaysOnTimelineUnconfiguredEntry
+ (id)entryForPresentationTime:(id)time withRequestedFidelity:(int64_t)fidelity;
+ (id)entryForPresentationTime:(id)time withRequestedFidelity:(int64_t)fidelity animated:(BOOL)animated userObject:(id)object;
- (BLSAlwaysOnTimelineUnconfiguredEntry)initWithPresentationTime:(id)time requestedFidelity:(int64_t)fidelity animated:(BOOL)animated duration:(double)duration timelineIdentifier:(id)identifier userObject:(id)object;
@end

@implementation BLSAlwaysOnTimelineUnconfiguredEntry

- (BLSAlwaysOnTimelineUnconfiguredEntry)initWithPresentationTime:(id)time requestedFidelity:(int64_t)fidelity animated:(BOOL)animated duration:(double)duration timelineIdentifier:(id)identifier userObject:(id)object
{
  animatedCopy = animated;
  timeCopy = time;
  identifierCopy = identifier;
  objectCopy = object;
  v20.receiver = self;
  v20.super_class = BLSAlwaysOnTimelineUnconfiguredEntry;
  v18 = [(BLSAlwaysOnTimelineEntry *)&v20 initWithPresentationTime:timeCopy requestedFidelity:fidelity animated:animatedCopy duration:identifierCopy timelineIdentifier:objectCopy userObject:duration];
  if (v18)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [BLSAlwaysOnTimelineUnconfiguredEntry initWithPresentationTime:a2 requestedFidelity:v18 animated:? duration:? timelineIdentifier:? userObject:?];
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      [BLSAlwaysOnTimelineUnconfiguredEntry initWithPresentationTime:a2 requestedFidelity:v18 animated:? duration:? timelineIdentifier:? userObject:?];
    }
  }

  return v18;
}

+ (id)entryForPresentationTime:(id)time withRequestedFidelity:(int64_t)fidelity
{
  timeCopy = time;
  v6 = [[BLSAlwaysOnTimelineUnconfiguredEntry alloc] initWithPresentationTime:timeCopy requestedFidelity:fidelity animated:0 duration:0 timelineIdentifier:0 userObject:0.2];

  return v6;
}

+ (id)entryForPresentationTime:(id)time withRequestedFidelity:(int64_t)fidelity animated:(BOOL)animated userObject:(id)object
{
  animatedCopy = animated;
  objectCopy = object;
  timeCopy = time;
  v11 = [[BLSAlwaysOnTimelineUnconfiguredEntry alloc] initWithPresentationTime:timeCopy requestedFidelity:fidelity animated:animatedCopy duration:0 timelineIdentifier:objectCopy userObject:0.2];

  return v11;
}

- (void)initWithPresentationTime:(const char *)a1 requestedFidelity:(uint64_t)a2 animated:duration:timelineIdentifier:userObject:.cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self respondsToSelector:@selector(setTimelineIdentifier:)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"BLSAlwaysOnTimelineEntry.m";
    v10 = 1024;
    v11 = 145;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPresentationTime:(const char *)a1 requestedFidelity:(uint64_t)a2 animated:duration:timelineIdentifier:userObject:.cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[self respondsToSelector:@selector(setRequestedFidelity:)]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"BLSAlwaysOnTimelineEntry.m";
    v10 = 1024;
    v11 = 146;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21FE25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end