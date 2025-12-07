@interface IMDCoreSpotlightAppleTVLinkIndexer
- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes;
@end

@implementation IMDCoreSpotlightAppleTVLinkIndexer

- (void)_mapPropertiesFromMetadata:(id)metadata toAttributes:(id)attributes
{
  attributesCopy = attributes;
  metadataCopy = metadata;
  v31 = objc_msgSend_specialization(metadataCopy, v8, v9, v10);
  v14 = objc_msgSend_title(v31, v11, v12, v13);
  v17 = objc_msgSend__prefixFromMetadata_(self, v15, metadataCopy, v16);
  objc_msgSend__insertLinkName_prefix_toAttributes_(self, v18, v14, v17, attributesCopy);

  v22 = objc_msgSend_summary(metadataCopy, v19, v20, v21);
  objc_msgSend_setContentDescription_(attributesCopy, v23, v22, v24);

  v28 = objc_msgSend_siteName(metadataCopy, v25, v26, v27);

  objc_msgSend_setUrlDescription_(attributesCopy, v29, v28, v30);
}

@end