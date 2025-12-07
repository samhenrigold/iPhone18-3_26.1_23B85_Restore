@interface APContentData
+ (id)createForServerUnfilledReason:(int64_t)reason placementType:(int64_t)type contextIdentifier:(id)identifier size:(id)size;
+ (id)mockDataFromContext:(id)context types:(id)types;
- (APContentData)init;
- (APContentData)initWithCoder:(id)coder;
- (BOOL)hasValidRepresentation;
- (id)representationWithIdentifier:(id)identifier;
- (void)_correctNonNullableFields;
- (void)addRepresentation:(id)representation;
- (void)addRepresentations:(id)representations;
- (void)encodeWithCoder:(id)coder;
- (void)removeRepresentation:(id)representation;
@end

@implementation APContentData

+ (id)createForServerUnfilledReason:(int64_t)reason placementType:(int64_t)type contextIdentifier:(id)identifier size:(id)size
{
  var1 = size.var1;
  var0 = size.var0;
  identifierCopy = identifier;
  v11 = objc_alloc_init(APContentData);
  objc_msgSend_setServerUnfilledReason_(v11, v12, reason);
  objc_msgSend_setContextIdentifier_(v11, v13, identifierCopy);

  v14 = objc_alloc_init(APRepresentationData);
  objc_msgSend_setPlacementType_(v14, v15, type);
  objc_msgSend_setSize_(v14, v16, v17, var0, var1);
  v20 = objc_msgSend_identifier(v11, v18, v19);
  objc_msgSend_setContentDataIdentifier_(v14, v21, v20);

  v24 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v22, v23);
  objc_msgSend_setIAdID_(v14, v25, v24);

  objc_msgSend_addRepresentation_(v11, v26, v14);

  return v11;
}

- (BOOL)hasValidRepresentation
{
  v6 = objc_msgSend_error(self, a2, v2);
  if (v6 || objc_msgSend_serverUnfilledReason(self, v4, v5))
  {
    v9 = 0;
  }

  else
  {
    v11 = objc_msgSend_representations(self, v7, v8);
    v9 = objc_msgSend_count(v11, v12, v13) != 0;
  }

  return v9;
}

+ (id)mockDataFromContext:(id)context types:(id)types
{
  v62 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  typesCopy = types;
  v7 = objc_alloc_init(APContentData);
  v54 = contextCopy;
  v10 = objc_msgSend_identifier(contextCopy, v8, v9);
  objc_msgSend_setContextIdentifier_(v7, v11, v10);

  v14 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v12, v13);
  v17 = objc_msgSend_UUIDString(v14, v15, v16);
  objc_msgSend_setJourneyIdentifier_(v7, v18, v17);

  objc_msgSend_setMetadata_(v7, v19, MEMORY[0x1E695E0F8]);
  objc_msgSend_setDisclosureRendererPayload_(v7, v20, @"CAISBWVuX1VTOAFwAg");
  v22 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v21, @"https://iad2v1-iadsdk.iad.apple.com/adserver/2.6/segment/privacyrender/1.0/ad");
  objc_msgSend_setDisclosureURL_(v7, v23, v22);

  objc_msgSend_setMinimumTimeBetweenPresentation_(v7, v24, 2);
  objc_msgSend_setBrandName_(v7, v25, @"Brand name");
  objc_msgSend_setCampaignText_(v7, v26, @"Campaign text");
  v29 = objc_msgSend_dateWithTimeIntervalSinceNow_(MEMORY[0x1E695DF00], v27, v28, 3600.0);
  objc_msgSend_setExpirationDate_(v7, v30, v29);

  v33 = objc_msgSend_array(MEMORY[0x1E695DF70], v31, v32);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v34 = typesCopy;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v55, v61, 16);
  if (v36)
  {
    v39 = v36;
    v40 = *v56;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v56 != v40)
        {
          objc_enumerationMutation(v34);
        }

        v42 = objc_msgSend_unsignedIntegerValue(*(*(&v55 + 1) + 8 * i), v37, v38);
        v43 = APLogForCategory();
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
        if (v42 <= 2)
        {
          if (v42)
          {
            if (v42 == 1)
            {
              if (v44)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeInterstitial", buf, 2u);
              }

              v45 = 1;
            }

            else
            {
              if (v42 != 2)
              {
                goto LABEL_26;
              }

              if (v44)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeAudio", buf, 2u);
              }

              v45 = 2;
            }
          }

          else
          {
            if (v44)
            {
              *buf = 0;
              _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeAnyBanner", buf, 2u);
            }

            v45 = 0;
          }
        }

        else
        {
          if (v42 <= 4)
          {
            if (v42 == 3)
            {
              if (v44)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeVideo", buf, 2u);
              }

              v45 = 3;
            }

            else
            {
              if (v44)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeNative", buf, 2u);
              }

              v45 = 4;
            }

            goto LABEL_38;
          }

          if (v42 != 5)
          {
            if (v42 == 7)
            {
              if (v44)
              {
                *buf = 0;
                _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeSponsorship", buf, 2u);
              }

              v45 = 7;
              goto LABEL_38;
            }

LABEL_26:
            if (v44)
            {
              *buf = 0;
              _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeUndefined", buf, 2u);
            }

            v45 = -1;
            goto LABEL_38;
          }

          if (v44)
          {
            *buf = 0;
            _os_log_impl(&dword_1BAFC4000, v43, OS_LOG_TYPE_INFO, "Creating representation with APPlacementTypeApp", buf, 2u);
          }

          v45 = 5;
        }

LABEL_38:

        v47 = objc_msgSend_mockRepresentationWithType_contentData_(APRepresentationData, v46, v45, v7);
        objc_msgSend_addObject_(v33, v48, v47);
      }

      v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v55, v61, 16);
    }

    while (v39);
  }

  v49 = APLogForCategory();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v60 = v33;
    _os_log_impl(&dword_1BAFC4000, v49, OS_LOG_TYPE_INFO, "Creating representations set with %{public}@", buf, 0xCu);
  }

  v51 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v50, v33);
  objc_msgSend_setRepresentations_(v7, v52, v51);

  return v7;
}

- (APContentData)init
{
  v7.receiver = self;
  v7.super_class = APContentData;
  v2 = [(APContentData *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__correctNonNullableFields(v2, v3, v4);
    v5->_diagnosticCode = -1;
  }

  return v5;
}

- (void)_correctNonNullableFields
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (!self->_identifier)
  {
    v4 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2);
    v7 = objc_msgSend_UUIDString(v4, v5, v6);
    identifier = self->_identifier;
    self->_identifier = v7;
  }

  if (!self->_contextIdentifier)
  {
    v22[0] = 0;
    v22[1] = 0;
    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    v11 = objc_msgSend_initWithUUIDBytes_(v9, v10, v22);
    contextIdentifier = self->_contextIdentifier;
    self->_contextIdentifier = v11;
  }

  if (!self->_journeyIdentifier)
  {
    v13 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2);
    v16 = objc_msgSend_UUIDString(v13, v14, v15);
    journeyIdentifier = self->_journeyIdentifier;
    self->_journeyIdentifier = v16;
  }

  if (!self->_uniqueIdentifier)
  {
    self->_uniqueIdentifier = @"UniqueIdentifierPlaceholder";
  }

  if (!self->_representations)
  {
    v18 = objc_msgSend_set(MEMORY[0x1E695DFA8], a2, v2);
    representations = self->_representations;
    self->_representations = v18;
  }

  if (!self->_expirationDate)
  {
    v20 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], a2, v2);
    expirationDate = self->_expirationDate;
    self->_expirationDate = v20;
  }
}

- (APContentData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v107.receiver = self;
  v107.super_class = APContentData;
  v5 = [(APContentData *)&v107 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"contextIdentifier");
    contextIdentifier = v5->_contextIdentifier;
    v5->_contextIdentifier = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"journeyIdentifier");
    journeyIdentifier = v5->_journeyIdentifier;
    v5->_journeyIdentifier = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"impressionId");
    impressionId = v5->_impressionId;
    v5->_impressionId = v20;

    v22 = MEMORY[0x1E695DFD8];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v26 = objc_msgSend_setWithObjects_(v22, v25, v23, v24, 0);
    v28 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v27, v26, @"metadata");
    metadata = v5->_metadata;
    v5->_metadata = v28;

    v30 = objc_opt_class();
    v32 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v31, v30, @"disclosureURL");
    disclosureURL = v5->_disclosureURL;
    v5->_disclosureURL = v32;

    if (objc_msgSend_containsValueForKey_(coderCopy, v34, @"disclosureRendererPayload"))
    {
      v36 = objc_opt_class();
      v38 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v37, v36, @"disclosureRendererPayload");
      disclosureRendererPayload = v5->_disclosureRendererPayload;
      v5->_disclosureRendererPayload = v38;
    }

    v5->_minimumTimeBetweenPresentation = objc_msgSend_decodeIntForKey_(coderCopy, v35, @"minimumTimeBetweenPresentation");
    v40 = objc_opt_class();
    v42 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v41, v40, @"brandName");
    brandName = v5->_brandName;
    v5->_brandName = v42;

    v44 = objc_opt_class();
    v46 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v45, v44, @"campaignText");
    campaignText = v5->_campaignText;
    v5->_campaignText = v46;

    v48 = objc_opt_class();
    v50 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v49, v48, @"targetingExpressionId");
    targetingExpressionId = v5->_targetingExpressionId;
    v5->_targetingExpressionId = v50;

    v52 = objc_opt_class();
    v54 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v53, v52, @"startDate");
    startDate = v5->_startDate;
    v5->_startDate = v54;

    v56 = objc_opt_class();
    v58 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v57, v56, @"expirationDate");
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v58;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v60, @"impressionThreshold");
    v5->_impressionThreshold = v61;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v62, @"impressionVisiblityThreshold");
    v5->_impressionVisibilityThreshold = v63;
    v5->_serverUnfilledReason = objc_msgSend_decodeIntForKey_(coderCopy, v64, @"serverUnfilledReason");
    v65 = objc_opt_class();
    v67 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v66, v65, @"error");
    error = v5->_error;
    v5->_error = v67;

    v69 = objc_opt_class();
    v71 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v70, v69, @"installAttribution");
    installAttribution = v5->_installAttribution;
    v5->_installAttribution = v71;

    v73 = MEMORY[0x1E695DFD8];
    v74 = objc_opt_class();
    v75 = objc_opt_class();
    v76 = objc_opt_class();
    v77 = objc_opt_class();
    v79 = objc_msgSend_setWithObjects_(v73, v78, v74, v75, v76, v77, 0);
    v81 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v80, v79, @"representationsKey");
    v84 = objc_msgSend_mutableCopy(v81, v82, v83);
    representations = v5->_representations;
    v5->_representations = v84;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v86, @"serverResponseReceivedTimestamp");
    v5->_serverResponseReceivedTimestamp = v87;
    v88 = objc_opt_class();
    v90 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v89, v88, @"receivedReferenceTime");
    receivedReferenceTime = v5->_receivedReferenceTime;
    v5->_receivedReferenceTime = v90;

    v5->_isPAAvailableForAd = objc_msgSend_decodeBoolForKey_(coderCopy, v92, @"personalizedAdsEnabledKey");
    v5->_isLocationAvailableForAd = objc_msgSend_decodeBoolForKey_(coderCopy, v93, @"locationEnabledKey");
    v94 = MEMORY[0x1E695DFD8];
    v95 = objc_opt_class();
    v96 = objc_opt_class();
    v98 = objc_msgSend_setWithObjects_(v94, v97, v95, v96, 0);
    v100 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v99, v98, @"adServerEnvironment");
    adServerEnvironment = v5->_adServerEnvironment;
    v5->_adServerEnvironment = v100;

    v5->_diagnosticCode = objc_msgSend_decodeIntForKey_(coderCopy, v102, @"diagnosticCode");
    objc_msgSend__correctNonNullableFields(v5, v103, v104);

    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v109 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v7 = objc_msgSend_identifier(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"identifier");

  v11 = objc_msgSend_contextIdentifier(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"contextIdentifier");

  v15 = objc_msgSend_journeyIdentifier(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"journeyIdentifier");

  v19 = objc_msgSend_impressionId(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"impressionId");

  v23 = objc_msgSend_metadata(self, v21, v22);
  objc_msgSend_encodeObject_forKey_(coderCopy, v24, v23, @"metadata");

  v27 = objc_msgSend_disclosureURL(self, v25, v26);
  objc_msgSend_encodeObject_forKey_(coderCopy, v28, v27, @"disclosureURL");

  v31 = objc_msgSend_disclosureRendererPayload(self, v29, v30);
  objc_msgSend_encodeObject_forKey_(coderCopy, v32, v31, @"disclosureRendererPayload");

  v35 = objc_msgSend_minimumTimeBetweenPresentation(self, v33, v34);
  objc_msgSend_encodeInt_forKey_(coderCopy, v36, v35, @"minimumTimeBetweenPresentation");
  v39 = objc_msgSend_brandName(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"brandName");

  v43 = objc_msgSend_campaignText(self, v41, v42);
  objc_msgSend_encodeObject_forKey_(coderCopy, v44, v43, @"campaignText");

  v47 = objc_msgSend_targetingExpressionId(self, v45, v46);
  objc_msgSend_encodeObject_forKey_(coderCopy, v48, v47, @"targetingExpressionId");

  v51 = objc_msgSend_startDate(self, v49, v50);
  objc_msgSend_encodeObject_forKey_(coderCopy, v52, v51, @"startDate");

  v55 = objc_msgSend_expirationDate(self, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v56, v55, @"expirationDate");

  objc_msgSend_impressionThreshold(self, v57, v58);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v59, @"impressionThreshold");
  objc_msgSend_impressionVisibilityThreshold(self, v60, v61);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v62, @"impressionVisiblityThreshold");
  v65 = objc_msgSend_serverUnfilledReason(self, v63, v64);
  objc_msgSend_encodeInt_forKey_(coderCopy, v66, v65, @"serverUnfilledReason");
  v69 = objc_msgSend_error(self, v67, v68);
  objc_msgSend_encodeObject_forKey_(coderCopy, v70, v69, @"error");

  v73 = objc_msgSend_installAttribution(self, v71, v72);
  objc_msgSend_encodeObject_forKey_(coderCopy, v74, v73, @"installAttribution");

  objc_msgSend_serverResponseReceivedTimestamp(self, v75, v76);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v77, @"serverResponseReceivedTimestamp");
  v80 = objc_msgSend_receivedReferenceTime(self, v78, v79);
  objc_msgSend_encodeObject_forKey_(coderCopy, v81, v80, @"receivedReferenceTime");

  isPAAvailableForAd = objc_msgSend_isPAAvailableForAd(self, v82, v83);
  objc_msgSend_encodeBool_forKey_(coderCopy, v85, isPAAvailableForAd, @"personalizedAdsEnabledKey");
  isLocationAvailableForAd = objc_msgSend_isLocationAvailableForAd(self, v86, v87);
  objc_msgSend_encodeBool_forKey_(coderCopy, v89, isLocationAvailableForAd, @"locationEnabledKey");
  v90 = APLogForCategory();
  if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
  {
    v93 = objc_msgSend_representations(self, v91, v92);
    v107 = 138412290;
    v108 = objc_opt_class();
    v94 = v108;
    _os_log_impl(&dword_1BAFC4000, v90, OS_LOG_TYPE_INFO, "Encoding apcontentdata with representations: %@", &v107, 0xCu);
  }

  v97 = objc_msgSend_representations(self, v95, v96);
  objc_msgSend_encodeObject_forKey_(coderCopy, v98, v97, @"representationsKey");

  v101 = objc_msgSend_adServerEnvironment(self, v99, v100);
  objc_msgSend_encodeObject_forKey_(coderCopy, v102, v101, @"adServerEnvironment");

  v105 = objc_msgSend_diagnosticCode(self, v103, v104);
  objc_msgSend_encodeInt_forKey_(coderCopy, v106, v105, @"diagnosticCode");
}

- (void)addRepresentation:(id)representation
{
  representations = self->_representations;
  representationCopy = representation;
  objc_msgSend_addObject_(representations, v6, representationCopy);
  v10 = objc_msgSend_identifier(self, v7, v8);
  objc_msgSend_setContentDataIdentifier_(representationCopy, v9, v10);
}

- (void)addRepresentations:(id)representations
{
  v16 = *MEMORY[0x1E69E9840];
  representationsCopy = representations;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(representationsCopy, v5, &v11, v15, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(representationsCopy);
        }

        objc_msgSend_addRepresentation_(self, v7, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(representationsCopy, v7, &v11, v15, 16);
    }

    while (v8);
  }
}

- (void)removeRepresentation:(id)representation
{
  representations = self->_representations;
  representationCopy = representation;
  objc_msgSend_removeObject_(representations, v4, representationCopy);
  objc_msgSend_setContentDataIdentifier_(representationCopy, v5, 0);
}

- (id)representationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1BAFCE738;
  v17 = sub_1BAFCE748;
  v18 = 0;
  representations = self->_representations;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1BAFCE750;
  v10[3] = &unk_1E7F20DB0;
  v6 = identifierCopy;
  v11 = v6;
  v12 = &v13;
  objc_msgSend_enumerateObjectsUsingBlock_(representations, v7, v10);
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

@end