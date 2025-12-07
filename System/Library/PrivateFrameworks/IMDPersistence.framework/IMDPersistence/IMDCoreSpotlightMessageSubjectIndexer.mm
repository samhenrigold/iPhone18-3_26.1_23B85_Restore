@interface IMDCoreSpotlightMessageSubjectIndexer
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageSubjectIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  updateCopy = update;
  v10 = objc_msgSend_objectForKey_(item, v8, @"subject", v9);
  if (objc_msgSend_length(v10, v11, v12, v13))
  {
    objc_msgSend_setTitle_(updateCopy, v14, v10, v15);
  }
}

@end