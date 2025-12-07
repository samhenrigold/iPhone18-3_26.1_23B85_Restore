@interface APInstallAttribution
- (APInstallAttribution)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APInstallAttribution

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_adamId(self, v5, v6);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v8, v7, @"adamId");
  v11 = objc_msgSend_campaignId(self, v9, v10);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v12, v11, @"campaignId");
  v15 = objc_msgSend_sourceAppAdamId(self, v13, v14);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v16, v15, @"sourceAppAdamId");
  v19 = objc_msgSend_timestamp(self, v17, v18);
  objc_msgSend_encodeInt64_forKey_(coderCopy, v20, v19, @"timestamp");
  v23 = objc_msgSend_adNetworkId(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"adNetworkId");

  v27 = objc_msgSend_attributionSignature(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"attributionSignature");

  v31 = objc_msgSend_contextIdentifier(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"contextIdentifier");

  v36 = objc_msgSend_version(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v35, v36, @"version");
}

- (APInstallAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = APInstallAttribution;
  v6 = [(APInstallAttribution *)&v27 init];
  if (v6)
  {
    v6->_adamId = objc_msgSend_decodeInt64ForKey_(coderCopy, v5, @"adamId");
    v6->_campaignId = objc_msgSend_decodeInt64ForKey_(coderCopy, v7, @"campaignId");
    v6->_sourceAppAdamId = objc_msgSend_decodeInt64ForKey_(coderCopy, v8, @"sourceAppAdamId");
    v6->_timestamp = objc_msgSend_decodeInt64ForKey_(coderCopy, v9, @"timestamp");
    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"adNetworkId");
    adNetworkId = v6->_adNetworkId;
    v6->_adNetworkId = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"attributionSignature");
    attributionSignature = v6->_attributionSignature;
    v6->_attributionSignature = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"contextIdentifier");
    contextIdentifier = v6->_contextIdentifier;
    v6->_contextIdentifier = v20;

    v22 = objc_opt_class();
    v24 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v23, v22, @"version");
    version = v6->_version;
    v6->_version = v24;
  }

  return v6;
}

@end