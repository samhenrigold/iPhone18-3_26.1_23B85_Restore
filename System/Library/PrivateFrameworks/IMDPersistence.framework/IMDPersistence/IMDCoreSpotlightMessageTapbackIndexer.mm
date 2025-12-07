@interface IMDCoreSpotlightMessageTapbackIndexer
+ (int)_searchableAttributeFromAssociatedMessageType:(int64_t)type;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageTapbackIndexer

+ (int)_searchableAttributeFromAssociatedMessageType:(int64_t)type
{
  result = 1;
  if (type <= 2005)
  {
    if (type > 2000)
    {
      if (type == 2005)
      {
        v4 = 6;
      }

      else
      {
        v4 = 1;
      }

      if (type == 2004)
      {
        v5 = 4;
      }

      else
      {
        v5 = v4;
      }

      if (type == 2003)
      {
        v6 = 5;
      }

      else
      {
        v6 = v5;
      }

      if (type == 2002)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      if (type == 2001)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }

      if (type <= 2002)
      {
        return v8;
      }

      else
      {
        return v6;
      }
    }

    else if (type <= 3 && type != 1 || (type - 1000) < 2)
    {
      return 0;
    }
  }

  else
  {
    if (type > 2999)
    {
      if ((type - 3000) >= 8 && type != 4000)
      {
        return result;
      }

      return 0;
    }

    if (type == 2007)
    {
      v9 = 9;
    }

    else
    {
      v9 = 1;
    }

    if (type == 2006)
    {
      return 7;
    }

    else
    {
      return v9;
    }
  }

  return result;
}

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  itemCopy = item;
  updateCopy = update;
  v12 = objc_msgSend_objectForKey_(itemCopy, v10, @"associatedMessageType", v11);
  v16 = v12;
  if (v12)
  {
    v17 = objc_msgSend_integerValue(v12, v13, v14, v15);
    if (v17)
    {
      v20 = v17;
      v21 = objc_msgSend__searchableAttributeFromAssociatedMessageType_(self, v18, v17, v19);
      v24 = objc_msgSend_objectForKey_(itemCopy, v22, @"associatedMessageGUID", v23);
      v27 = objc_msgSend_objectForKey_(itemCopy, v25, @"attributedBody", v26);
      v31 = objc_msgSend_string(v27, v28, v29, v30);

      v32 = _IMDCoreSpotlightStrippedBody(itemCopy, @"plainBody", v31);
      objc_msgSend_setTextContent_(updateCopy, v33, v32, v34);
      objc_msgSend_setMessageTapbackType_(updateCopy, v35, v21, v36);
      objc_msgSend_setTapbackAssociatedMessageID_(updateCopy, v37, v24, v38);
      objc_msgSend_setMessageType_(updateCopy, v39, @"tpbck", v40);
      objc_msgSend_setDisableSearchInSpotlight_(updateCopy, v41, MEMORY[0x1E695E118], v42);
      if (v20 == 2006)
      {
        v45 = objc_msgSend_objectForKey_(itemCopy, v43, @"associatedMessageEmoji", v44);
        objc_msgSend_setMessageTapbackStringValue_(updateCopy, v46, v45, v47);
      }
    }
  }
}

@end