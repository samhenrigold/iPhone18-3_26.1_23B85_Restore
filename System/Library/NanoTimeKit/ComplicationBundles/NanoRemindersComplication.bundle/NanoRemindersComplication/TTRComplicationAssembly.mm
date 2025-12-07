@interface TTRComplicationAssembly
+ (id)_makeModelSource:(BOOL)source;
+ (id)assembleModuleForComplicationFamily:(int64_t)family isRunningInClockFace:(BOOL)face;
@end

@implementation TTRComplicationAssembly

+ (id)assembleModuleForComplicationFamily:(int64_t)family isRunningInClockFace:(BOOL)face
{
  faceCopy = face;
  v7 = [TTRComplicationPresenter alloc];
  v8 = [self _makeModelSource:faceCopy];
  v9 = objc_alloc_init(_TtC25NanoRemindersComplication21TTRComplicationRouter);
  v10 = [(TTRComplicationPresenter *)v7 initWithModelSource:v8 router:v9 complicationFamily:family];

  return v10;
}

+ (id)_makeModelSource:(BOOL)source
{
  v3 = objc_alloc_init(_TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource);

  return v3;
}

@end