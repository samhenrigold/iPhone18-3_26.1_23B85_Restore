@interface IMDCoreSpotlightReadStateIndexer
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightReadStateIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  itemCopy = item;
  updateCopy = update;
  v11 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v9, @"type", v10);
  v15 = objc_msgSend_unsignedLongLongValue(v11, v12, v13, v14);

  if (!v15)
  {
    v18 = objc_msgSend_objectForKey_(itemCopy, v16, @"flags", v17);
    v22 = objc_msgSend_unsignedLongLongValue(v18, v19, v20, v21);

    v25 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v23, (v22 >> 13) & 1, v24);
    objc_msgSend_setMessageRead_(updateCopy, v26, v25, v27);
  }
}

@end