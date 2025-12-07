@interface CKAssetRereferenceInfo
- (CKAssetRereferenceInfo)initWithSourceZoneID:(id)d;
- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand;
@end

@implementation CKAssetRereferenceInfo

- (CKAssetRereferenceInfo)initWithSourceZoneID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CKAssetRereferenceInfo;
  v7 = [(CKAssetRereferenceInfo *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(dCopy, v5, v6);
    sourceZoneID = v7->_sourceZoneID;
    v7->_sourceZoneID = v8;
  }

  return v7;
}

- (id)CKDescriptionPropertiesWithPublic:(BOOL)public private:(BOOL)private shouldExpand:(BOOL)expand
{
  privateCopy = private;
  v9 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x1E695DF90], a2, 12, private, expand);
  if (privateCopy)
  {
    v10 = objc_msgSend_contentBaseURL(self, v7, v8);
    v13 = v10;
    if (v10)
    {
      v14 = objc_msgSend_description(v10, v11, v12);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v15, @"contentBaseURL", v14);
    }

    v16 = objc_msgSend_owner(self, v11, v12);
    v19 = v16;
    if (v16)
    {
      v20 = objc_msgSend_description(v16, v17, v18);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v21, @"owner", v20);
    }

    v22 = objc_msgSend_requestor(self, v17, v18);
    v25 = v22;
    if (v22)
    {
      v26 = objc_msgSend_description(v22, v23, v24);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v27, @"requestor", v26);
    }

    v28 = objc_msgSend_assetKey(self, v23, v24);

    if (v28)
    {
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v29, @"assetKey", @"Yes");
    }

    v31 = objc_msgSend_referenceSignature(self, v29, v30);
    v34 = v31;
    if (v31)
    {
      v35 = objc_msgSend_description(v31, v32, v33);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v36, @"referenceSignature", v35);
    }

    v37 = objc_msgSend_downloadToken(self, v32, v33);
    v40 = v37;
    if (v37)
    {
      v41 = objc_msgSend_description(v37, v38, v39);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v42, @"downloadToken", v41);
    }

    v43 = objc_msgSend_downloadTokenExpiration(self, v38, v39);
    if (v43)
    {
      v46 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v44, @"%llu", v43);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v47, @"downloadTokenExpiration", v46);
    }

    v48 = objc_msgSend_error(self, v44, v45);
    v51 = v48;
    if (v48)
    {
      v52 = objc_msgSend_description(v48, v49, v50);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v9, v53, @"error", v52);
    }
  }

  return v9;
}

@end