@interface IMDCoreSpotlightNewsLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightNewsLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  attributesCopy = attributes;
  metadataCopy = metadata;
  v11 = objc_msgSend_title(metadataCopy, v8, v9, v10);
  objc_msgSend__insertLinkName_toAttributes_(self, v12, v11, attributesCopy);

  v16 = objc_msgSend_summary(metadataCopy, v13, v14, v15);
  objc_msgSend_setContentDescription_(attributesCopy, v17, v16, v18);

  v24 = objc_msgSend_title(metadataCopy, v19, v20, v21);

  objc_msgSend_setUrlDescription_(attributesCopy, v22, v24, v23);
}

@end