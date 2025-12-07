@interface _IMDOpenGraphSpotlightMappingInfo
+ (id)infoForLinkMetadata:(id)metadata;
+ (id)infoForOGType:(id)type;
- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type indexer:(id)indexer;
- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type prefix:(id)prefix linkType:(id)linkType linkSubType:(id)subType;
@end

@implementation _IMDOpenGraphSpotlightMappingInfo

+ (id)infoForOGType:(id)type
{
  v3 = qword_1EBA54258;
  typeCopy = type;
  if (v3 != -1)
  {
    sub_1B7CFA8B8();
  }

  v7 = objc_msgSend_objectForKeyedSubscript_(qword_1EBA54250, v4, typeCopy, v5);

  return v7;
}

+ (id)infoForLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8 = objc_msgSend_itemType(metadataCopy, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_itemType(metadataCopy, v9, v10, v11);
    v15 = objc_msgSend_infoForOGType_(self, v13, v12, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type indexer:(id)indexer
{
  indexerCopy = indexer;
  typeCopy = type;
  v11 = objc_msgSend_prefix(indexerCopy, v8, v9, v10);
  v15 = objc_msgSend_linkType(indexerCopy, v12, v13, v14);
  v19 = objc_msgSend_linkSubtype(indexerCopy, v16, v17, v18);

  v21 = objc_msgSend_initWithOGType_prefix_linkType_linkSubType_(self, v20, typeCopy, v11, v15, v19);
  return v21;
}

- (_IMDOpenGraphSpotlightMappingInfo)initWithOGType:(id)type prefix:(id)prefix linkType:(id)linkType linkSubType:(id)subType
{
  typeCopy = type;
  prefixCopy = prefix;
  linkTypeCopy = linkType;
  subTypeCopy = subType;
  v18.receiver = self;
  v18.super_class = _IMDOpenGraphSpotlightMappingInfo;
  v15 = [(_IMDOpenGraphSpotlightMappingInfo *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_ogType, type);
    objc_storeStrong(&v16->_prefix, prefix);
    objc_storeStrong(&v16->_linkType, linkType);
    objc_storeStrong(&v16->_linkSubType, subType);
  }

  return v16;
}

@end