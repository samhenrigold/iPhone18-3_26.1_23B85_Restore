@interface PCNativeRepresentation
- (PCNativeRepresentation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCNativeRepresentation

- (PCNativeRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v69.receiver = self;
  v69.super_class = PCNativeRepresentation;
  v6 = [(APRepresentationData *)&v69 initWithCoder:coderCopy];
  if (v6)
  {
    v6->_adType = objc_msgSend_decodeInt32ForKey_(coderCopy, v5, @"adType");
    v7 = objc_opt_class();
    v9 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v8, v7, @"accessibleAdCopy");
    accessibleAdCopy = v6->_accessibleAdCopy;
    v6->_accessibleAdCopy = v9;

    v11 = objc_opt_class();
    v13 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v12, v11, @"accessibleHeadline");
    accessibleHeadline = v6->_accessibleHeadline;
    v6->_accessibleHeadline = v13;

    v15 = objc_opt_class();
    v17 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v16, v15, @"adCopy");
    adCopy = v6->_adCopy;
    v6->_adCopy = v17;

    v19 = objc_opt_class();
    v21 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v20, v19, @"defaultStyle");
    defaultStyle = v6->_defaultStyle;
    v6->_defaultStyle = v21;

    v23 = objc_alloc(MEMORY[0x1E695DFD8]);
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v27 = objc_msgSend_initWithObjects_(v23, v26, v24, v25, 0);
    v29 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v28, v27, @"elements");
    elements = v6->_elements;
    v6->_elements = v29;

    v31 = objc_opt_class();
    v33 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v32, v31, @"headline");
    headline = v6->_headline;
    v6->_headline = v33;

    v35 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v36, v35, @"localeIdentifier");
    localeIdentifier = v6->_localeIdentifier;
    v6->_localeIdentifier = v37;

    v39 = objc_opt_class();
    v41 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v40, v39, @"sponsor");
    sponsor = v6->_sponsor;
    v6->_sponsor = v41;

    v6->_adFormatType = objc_msgSend_decodeInt32ForKey_(coderCopy, v43, @"adFormatType");
    v44 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v45, v44, @"kSponsoredByAsset");
    sponsoredByAssetURL = v6->_sponsoredByAssetURL;
    v6->_sponsoredByAssetURL = v46;

    v48 = objc_opt_class();
    v50 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v49, v48, @"kSponsoredByAssetForDarkMode");
    sponsoredByAssetURLForDarkMode = v6->_sponsoredByAssetURLForDarkMode;
    v6->_sponsoredByAssetURLForDarkMode = v50;

    v52 = objc_alloc(MEMORY[0x1E695DFD8]);
    v53 = objc_opt_class();
    v54 = objc_opt_class();
    v56 = objc_msgSend_initWithObjects_(v52, v55, v53, v54, 0);
    v58 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v57, v56, @"kLocalizedHeadlines");
    localizedHeadlines = v6->_localizedHeadlines;
    v6->_localizedHeadlines = v58;

    v60 = objc_opt_class();
    v62 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v61, v60, @"kButton");
    button = v6->_button;
    v6->_button = v62;

    v64 = objc_opt_class();
    v66 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v65, v64, @"lActionURL");
    actionURL = v6->_actionURL;
    v6->_actionURL = v66;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  v65.receiver = self;
  v65.super_class = PCNativeRepresentation;
  coderCopy = coder;
  [(APRepresentationData *)&v65 encodeWithCoder:coderCopy];
  v7 = objc_msgSend_adType(self, v5, v6, v65.receiver, v65.super_class);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v8, v7, @"adType");
  v11 = objc_msgSend_accessibleAdCopy(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"accessibleAdCopy");

  v15 = objc_msgSend_accessibleHeadline(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"accessibleHeadline");

  v19 = objc_msgSend_adCopy(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"adCopy");

  v23 = objc_msgSend_defaultStyle(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"defaultStyle");

  v27 = objc_msgSend_elements(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"elements");

  v31 = objc_msgSend_headline(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"headline");

  v35 = objc_msgSend_localeIdentifier(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"localeIdentifier");

  v39 = objc_msgSend_sponsor(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"sponsor");

  v43 = objc_msgSend_adFormatType(self, v41, v42);
  objc_msgSend_encodeInt32_forKey_(coderCopy, v44, v43, @"adFormatType");
  v47 = objc_msgSend_sponsoredByAssetURL(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"kSponsoredByAsset");

  v51 = objc_msgSend_sponsoredByAssetURLForDarkMode(self, v49, v50);
  objc_msgSend_encodeObject_forKey_(coderCopy, v52, v51, @"kSponsoredByAssetForDarkMode");

  v55 = objc_msgSend_localizedHeadlines(self, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v56, v55, @"kLocalizedHeadlines");

  v59 = objc_msgSend_button(self, v57, v58);
  objc_msgSend_encodeObject_forKey_(coderCopy, v60, v59, @"kButton");

  v63 = objc_msgSend_actionURL(self, v61, v62);
  objc_msgSend_encodeObject_forKey_(coderCopy, v64, v63, @"lActionURL");
}

@end