@interface APRepresentationData
+ (id)mockRepresentationWithType:(int64_t)type contentData:(id)data;
- ($F24F406B2B787EFB06265DBA3D28CBD5)size;
- (APRepresentationData)init;
- (APRepresentationData)initWithCoder:(id)coder;
- (void)_correctNonNullableFields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APRepresentationData

+ (id)mockRepresentationWithType:(int64_t)type contentData:(id)data
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v6 = objc_alloc_init(APRepresentationData);
  objc_msgSend_setPlacementType_(v6, v7, type);
  v10 = objc_msgSend_identifier(dataCopy, v8, v9);

  objc_msgSend_setContentDataIdentifier_(v6, v11, v10);
  objc_msgSend_setArticleID_(v6, v12, @"A0_OxJ7ViSeCggU0zJdY4Xw");
  objc_msgSend_setArticleTitle_(v6, v13, @"Bahamas missing plane: Debris from aircraft apparently found");
  objc_msgSend_setAdvertiserName_(v6, v14, @"Fox News");
  objc_msgSend_setCampaignData_(v6, v15, @"C15112882:L15115783:A10061684");
  objc_msgSend_setAdTag_(v6, v16, @"<html><head><meta http-equiv=Content-type content=text/html; charset=utf-8><meta name=viewport content=width=device-width, minimum-scale=1.0, maximum-scale=1.0><style>html {width:100%;height:100%;}body {top: 0;left: 0;margin: 0;padding: 0;width: 100%;height: 100%;overflow: hidden;}.ad {background-image: url(http://iad2v2-iadctest.iad.apple.com/adunits/f2/e7/68/00048f30-44e1-4f00-9eda-0022ed2dc67a/1.ad/video//asset_large-image-ipad-portrait.jpg);height: 100%;width: 100%; }.ad--iphone {background-size: cover; }.ad--ipad {background-size: contain; }.ad--landscape {background-image: url(http://iad2v2-iadctest.iad.apple.com/adunits/f2/e7/68/00048f30-44e1-4f00-9eda-0022ed2dc67a/1.ad/video//); }.ad {display: flex;align-items: center;justify-content: center;background-position: center center;background-repeat: no-repeat;}.ad--iphone.ad--htmlinterstitial {background-position: top center;}</style><script src=mraid.js></script></head><body><article onClick=mraid.open('https://apple.news/subscription') id=ad-content class=ad ad--ipad ad--large></article><script>function changeClass() {var obj = document.getElementById('ad-content');if ( Math.abs(window.orientation) === 90) {obj.classList.remove('ad--portrait');obj.classList.add('ad--landscape');} else {obj.classList.remove('ad--landscape');obj.classList.add('ad--portrait');}}if ('large' === 'htmlinterstitial' && 'ipad' === 'iphone') {window.addEventListener('orientationchange', changeClass);window.addEventListener('resize', changeClass);window.addEventListener('load', changeClass);}</script></body></html>");
  if (type == 3)
  {
    v17 = objc_alloc(MEMORY[0x1E695DFF8]);
    v19 = objc_msgSend_initWithString_(v17, v18, @"https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_4x3/bipbop_4x3_variant.m3u8");
    objc_msgSend_setVideoURL_(v6, v20, v19);

    objc_msgSend_setBitrate_(v6, v21, v22, 100.0);
    objc_msgSend_setSignalStrength_(v6, v23, 20);
    objc_msgSend_setConnectionType_(v6, v24, 1);
  }

  v25 = APLogForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v27 = 138412290;
    v28 = v6;
    _os_log_impl(&dword_1BAFC4000, v25, OS_LOG_TYPE_INFO, "Returning mocked rep data %@", &v27, 0xCu);
  }

  return v6;
}

- (APRepresentationData)init
{
  v7.receiver = self;
  v7.super_class = APRepresentationData;
  v2 = [(APRepresentationData *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend__correctNonNullableFields(v2, v3, v4);
  }

  return v5;
}

- (void)_correctNonNullableFields
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self->_identifier)
  {
    v4 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, v2);
    identifier = self->_identifier;
    self->_identifier = v4;
  }

  if (!self->_adamID)
  {
    self->_adamID = &stru_1F390F850;
  }

  if (!self->_iAdID)
  {
    v17 = 0;
    v18 = 0;
    v6 = objc_alloc(MEMORY[0x1E696AFB0]);
    v8 = objc_msgSend_initWithUUIDBytes_(v6, v7, &v17);
    iAdID = self->_iAdID;
    self->_iAdID = v8;
  }

  if (!self->_clientRequestID)
  {
    v17 = 0;
    v18 = 0;
    v10 = objc_alloc(MEMORY[0x1E696AFB0]);
    v12 = objc_msgSend_initWithUUIDBytes_(v10, v11, &v17);
    v15 = objc_msgSend_UUIDString(v12, v13, v14);
    clientRequestID = self->_clientRequestID;
    self->_clientRequestID = v15;
  }

  if (!self->_storeFront)
  {
    self->_storeFront = &stru_1F390F850;
  }

  if (!self->_storeFrontLocale)
  {
    self->_storeFrontLocale = &stru_1F390F850;
  }
}

- (APRepresentationData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v180.receiver = self;
  v180.super_class = APRepresentationData;
  v5 = [(APRepresentationData *)&v180 init];
  if (v5)
  {
    context = objc_autoreleasePoolPush();
    v6 = objc_opt_class();
    v8 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v6, @"frequencyCapData");
    frequencyCapData = v5->_frequencyCapData;
    v5->_frequencyCapData = v8;

    v10 = objc_opt_class();
    v12 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v11, v10, @"policyData");
    policyData = v5->_policyData;
    v5->_policyData = v12;

    v14 = objc_opt_class();
    v16 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v15, v14, @"targetingDimensionsKey");
    targetingDimensions = v5->_targetingDimensions;
    v5->_targetingDimensions = v16;

    v18 = objc_opt_class();
    v20 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v19, v18, @"tapAction");
    tapAction = v5->_tapAction;
    v5->_tapAction = v20;

    v5->_privacyMarkerPosition = objc_msgSend_decodeIntForKey_(coderCopy, v22, @"privacyMarkerPositionKey");
    v5->_privacyMarkerType = objc_msgSend_decodeIntForKey_(coderCopy, v23, @"privacyMarkerTypeKey");
    v5->_placementType = objc_msgSend_decodeIntForKey_(coderCopy, v24, @"placementType");
    v25 = objc_opt_class();
    v27 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v26, v25, @"rawAdType");
    rawAdType = v5->_rawAdType;
    v5->_rawAdType = v27;

    v29 = objc_opt_class();
    v31 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v30, v29, @"rawAdFormatType");
    rawAdFormatType = v5->_rawAdFormatType;
    v5->_rawAdFormatType = v31;

    v5->_desiredPosition = objc_msgSend_decodeIntForKey_(coderCopy, v33, @"desiredPosition");
    v5->_size.width = objc_msgSend_decodeIntForKey_(coderCopy, v34, @"width");
    v5->_size.height = objc_msgSend_decodeIntForKey_(coderCopy, v35, @"height");
    if (objc_msgSend_containsValueForKey_(coderCopy, v36, @"adTag"))
    {
      v37 = objc_opt_class();
      v39 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v38, v37, @"adTag");
      adTag = v5->_adTag;
      v5->_adTag = v39;
    }

    v41 = objc_opt_class();
    v43 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v42, v41, @"videoURL");
    videoURL = v5->_videoURL;
    v5->_videoURL = v43;

    objc_msgSend_decodeDoubleForKey_(coderCopy, v45, @"duration");
    v5->_duration = v46;
    objc_msgSend_decodeDoubleForKey_(coderCopy, v47, @"skipThreshold");
    v5->_skipThreshold = v48;
    v5->_skipEnabled = objc_msgSend_decodeBoolForKey_(coderCopy, v49, @"skipEnabled");
    v5->_unbranded = objc_msgSend_decodeBoolForKey_(coderCopy, v50, @"unbranded");
    objc_msgSend_decodeDoubleForKey_(coderCopy, v51, @"bitrate");
    v5->_bitrate = v52;
    v5->_signalStrength = objc_msgSend_decodeIntegerForKey_(coderCopy, v53, @"signalStrengthKey");
    v5->_connectionType = objc_msgSend_decodeIntegerForKey_(coderCopy, v54, @"connectionTypeKey");
    v55 = objc_opt_class();
    v57 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v56, v55, @"articleID");
    articleID = v5->_articleID;
    v5->_articleID = v57;

    v59 = objc_opt_class();
    v61 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v60, v59, @"articleTitle");
    articleTitle = v5->_articleTitle;
    v5->_articleTitle = v61;

    v63 = objc_opt_class();
    v65 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v64, v63, @"advertiserName");
    advertiserName = v5->_advertiserName;
    v5->_advertiserName = v65;

    v67 = objc_opt_class();
    v69 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v68, v67, @"campaignData");
    campaignData = v5->_campaignData;
    v5->_campaignData = v69;

    v71 = objc_opt_class();
    v73 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v72, v71, @"contentDataIdentifier");
    contentDataIdentifier = v5->_contentDataIdentifier;
    v5->_contentDataIdentifier = v73;

    v75 = objc_opt_class();
    v77 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v76, v75, @"identifier");
    identifier = v5->_identifier;
    v5->_identifier = v77;

    v79 = objc_opt_class();
    v81 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v80, v79, @"adamID");
    adamID = v5->_adamID;
    v5->_adamID = v81;

    v83 = objc_opt_class();
    v85 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v84, v83, @"metadata");
    metadata = v5->_metadata;
    v5->_metadata = v85;

    v87 = objc_opt_class();
    v89 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v88, v87, @"journeyRelayAdGroupId");
    journeyRelayAdGroupId = v5->_journeyRelayAdGroupId;
    v5->_journeyRelayAdGroupId = v89;

    v91 = objc_opt_class();
    v93 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v92, v91, @"journeyRelayCampaignId");
    journeyRelayCampaignId = v5->_journeyRelayCampaignId;
    v5->_journeyRelayCampaignId = v93;

    v95 = objc_opt_class();
    v97 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v96, v95, @"journeyRelayLineId");
    journeyRelayLineId = v5->_journeyRelayLineId;
    v5->_journeyRelayLineId = v97;

    v5->_parentAppCheckEnabled = objc_msgSend_decodeBoolForKey_(coderCopy, v99, @"parentAppCheckEnabled");
    v102 = objc_msgSend_classes(MEMORY[0x1E69861B8], v100, v101);
    v104 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v103, v102, @"installAttribution");
    installAttribution = v5->_installAttribution;
    v5->_installAttribution = v104;

    v5->_rank = objc_msgSend_decodeIntegerForKey_(coderCopy, v106, @"rank");
    v5->_timeToDisplay = objc_msgSend_decodeIntegerForKey_(coderCopy, v107, @"timeToDisplay");
    v108 = objc_opt_class();
    v110 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v109, v108, @"iAdID");
    iAdID = v5->_iAdID;
    v5->_iAdID = v110;

    v112 = objc_opt_class();
    v114 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v113, v112, @"storefront");
    storeFront = v5->_storeFront;
    v5->_storeFront = v114;

    v116 = objc_opt_class();
    v118 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v117, v116, @"storefrontLocale");
    storeFrontLocale = v5->_storeFrontLocale;
    v5->_storeFrontLocale = v118;

    v120 = objc_opt_class();
    v122 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v121, v120, @"clientRequestID");
    clientRequestID = v5->_clientRequestID;
    v5->_clientRequestID = v122;

    v124 = MEMORY[0x1E695DFD8];
    v125 = objc_opt_class();
    v127 = objc_msgSend_setWithObjects_(v124, v126, v125, 0);
    v128 = MEMORY[0x1E695DFD8];
    v129 = objc_opt_class();
    v130 = objc_opt_class();
    v132 = objc_msgSend_setWithObjects_(v128, v131, v129, v130, 0);
    v134 = objc_msgSend_decodeDictionaryWithKeysOfClasses_objectsOfClasses_forKey_(coderCopy, v133, v127, v132, @"positionInformation");
    positionInformation = v5->_positionInformation;
    v5->_positionInformation = v134;

    v5->_slotNumber = objc_msgSend_decodeIntegerForKey_(coderCopy, v136, @"slotNumber");
    v137 = objc_opt_class();
    v139 = objc_msgSend_decodeArrayOfObjectsOfClass_forKey_(coderCopy, v138, v137, @"cppIds");
    cppIds = v5->_cppIds;
    v5->_cppIds = v139;

    v141 = MEMORY[0x1E695DFD8];
    v142 = objc_opt_class();
    v143 = objc_opt_class();
    v144 = objc_opt_class();
    v145 = objc_opt_class();
    v147 = objc_msgSend_setWithObjects_(v141, v146, v142, v143, v144, v145, 0);
    v149 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v148, v147, @"appMetadata");
    appMetadata = v5->_appMetadata;
    v5->_appMetadata = v149;

    v5->_odmlSuccess = objc_msgSend_decodeBoolForKey_(coderCopy, v151, @"odmlSuccess");
    v152 = objc_opt_class();
    v154 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v153, v152, @"treatmentId");
    treatmentId = v5->_treatmentId;
    v5->_treatmentId = v154;

    v156 = objc_opt_class();
    v158 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v157, v156, @"deploymentId");
    deploymentId = v5->_deploymentId;
    v5->_deploymentId = v158;

    v160 = objc_opt_class();
    v162 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v161, v160, @"experimentId");
    experimentId = v5->_experimentId;
    v5->_experimentId = v162;

    v164 = MEMORY[0x1E695DFD8];
    v165 = objc_opt_class();
    v166 = objc_opt_class();
    v167 = objc_opt_class();
    v169 = objc_msgSend_setWithObjects_(v164, v168, v165, v166, v167, 0);
    v171 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v170, v169, @"triggers");
    triggers = v5->_triggers;
    v5->_triggers = v171;

    v174 = objc_msgSend_decodeObjectOfClasses_forKey_(coderCopy, v173, v147, @"creativeDetails");
    creativeDetails = v5->_creativeDetails;
    v5->_creativeDetails = v174;

    objc_msgSend__correctNonNullableFields(v5, v176, v177);
    objc_autoreleasePoolPop(context);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = objc_msgSend_frequencyCapData(self, v5, v6);
  objc_msgSend_encodeObject_forKey_(coderCopy, v8, v7, @"frequencyCapData");

  v11 = objc_msgSend_policyData(self, v9, v10);
  objc_msgSend_encodeObject_forKey_(coderCopy, v12, v11, @"policyData");

  v15 = objc_msgSend_targetingDimensions(self, v13, v14);
  objc_msgSend_encodeObject_forKey_(coderCopy, v16, v15, @"targetingDimensionsKey");

  v19 = objc_msgSend_tapAction(self, v17, v18);
  objc_msgSend_encodeObject_forKey_(coderCopy, v20, v19, @"tapAction");

  v23 = objc_msgSend_privacyMarkerPosition(self, v21, v22);
  objc_msgSend_encodeInt_forKey_(coderCopy, v24, v23, @"privacyMarkerPositionKey");
  v27 = objc_msgSend_privacyMarkerType(self, v25, v26);
  objc_msgSend_encodeInt_forKey_(coderCopy, v28, v27, @"privacyMarkerTypeKey");
  v31 = objc_msgSend_placementType(self, v29, v30);
  objc_msgSend_encodeInt_forKey_(coderCopy, v32, v31, @"placementType");
  v35 = objc_msgSend_rawAdType(self, v33, v34);
  objc_msgSend_encodeObject_forKey_(coderCopy, v36, v35, @"rawAdType");

  v39 = objc_msgSend_rawAdFormatType(self, v37, v38);
  objc_msgSend_encodeObject_forKey_(coderCopy, v40, v39, @"rawAdFormatType");

  v43 = objc_msgSend_desiredPosition(self, v41, v42);
  objc_msgSend_encodeInt_forKey_(coderCopy, v44, v43, @"desiredPosition");
  objc_msgSend_size(self, v45, v46);
  objc_msgSend_encodeInt_forKey_(coderCopy, v48, v47, @"width");
  objc_msgSend_size(self, v49, v50);
  objc_msgSend_encodeInt_forKey_(coderCopy, v52, v51, @"height");
  v55 = objc_msgSend_adTag(self, v53, v54);
  objc_msgSend_encodeObject_forKey_(coderCopy, v56, v55, @"adTag");

  v59 = objc_msgSend_videoURL(self, v57, v58);
  objc_msgSend_encodeObject_forKey_(coderCopy, v60, v59, @"videoURL");

  objc_msgSend_duration(self, v61, v62);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v63, @"duration");
  objc_msgSend_skipThreshold(self, v64, v65);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v66, @"skipThreshold");
  v69 = objc_msgSend_skipEnabled(self, v67, v68);
  objc_msgSend_encodeBool_forKey_(coderCopy, v70, v69, @"skipEnabled");
  v73 = objc_msgSend_unbranded(self, v71, v72);
  objc_msgSend_encodeBool_forKey_(coderCopy, v74, v73, @"unbranded");
  objc_msgSend_bitrate(self, v75, v76);
  objc_msgSend_encodeDouble_forKey_(coderCopy, v77, @"bitrate");
  v80 = objc_msgSend_signalStrength(self, v78, v79);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v81, v80, @"signalStrengthKey");
  v84 = objc_msgSend_connectionType(self, v82, v83);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v85, v84, @"connectionTypeKey");
  v88 = objc_msgSend_articleID(self, v86, v87);
  objc_msgSend_encodeObject_forKey_(coderCopy, v89, v88, @"articleID");

  v92 = objc_msgSend_articleTitle(self, v90, v91);
  objc_msgSend_encodeObject_forKey_(coderCopy, v93, v92, @"articleTitle");

  v96 = objc_msgSend_advertiserName(self, v94, v95);
  objc_msgSend_encodeObject_forKey_(coderCopy, v97, v96, @"advertiserName");

  v100 = objc_msgSend_campaignData(self, v98, v99);
  objc_msgSend_encodeObject_forKey_(coderCopy, v101, v100, @"campaignData");

  v104 = objc_msgSend_contentDataIdentifier(self, v102, v103);
  objc_msgSend_encodeObject_forKey_(coderCopy, v105, v104, @"contentDataIdentifier");

  v108 = objc_msgSend_identifier(self, v106, v107);
  objc_msgSend_encodeObject_forKey_(coderCopy, v109, v108, @"identifier");

  v112 = objc_msgSend_adamID(self, v110, v111);
  objc_msgSend_encodeObject_forKey_(coderCopy, v113, v112, @"adamID");

  v116 = objc_msgSend_metadata(self, v114, v115);
  objc_msgSend_encodeObject_forKey_(coderCopy, v117, v116, @"metadata");

  v120 = objc_msgSend_journeyRelayAdGroupId(self, v118, v119);
  objc_msgSend_encodeObject_forKey_(coderCopy, v121, v120, @"journeyRelayAdGroupId");

  v124 = objc_msgSend_journeyRelayCampaignId(self, v122, v123);
  objc_msgSend_encodeObject_forKey_(coderCopy, v125, v124, @"journeyRelayCampaignId");

  v128 = objc_msgSend_journeyRelayLineId(self, v126, v127);
  objc_msgSend_encodeObject_forKey_(coderCopy, v129, v128, @"journeyRelayLineId");

  v132 = objc_msgSend_parentAppCheckEnabled(self, v130, v131);
  objc_msgSend_encodeBool_forKey_(coderCopy, v133, v132, @"parentAppCheckEnabled");
  v136 = objc_msgSend_installAttribution(self, v134, v135);
  objc_msgSend_encodeObject_forKey_(coderCopy, v137, v136, @"installAttribution");

  v140 = objc_msgSend_rank(self, v138, v139);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v141, v140, @"rank");
  v144 = objc_msgSend_timeToDisplay(self, v142, v143);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v145, v144, @"timeToDisplay");
  v148 = objc_msgSend_iAdID(self, v146, v147);
  objc_msgSend_encodeObject_forKey_(coderCopy, v149, v148, @"iAdID");

  v152 = objc_msgSend_storeFront(self, v150, v151);
  objc_msgSend_encodeObject_forKey_(coderCopy, v153, v152, @"storefront");

  v156 = objc_msgSend_storeFrontLocale(self, v154, v155);
  objc_msgSend_encodeObject_forKey_(coderCopy, v157, v156, @"storefrontLocale");

  v160 = objc_msgSend_clientRequestID(self, v158, v159);
  objc_msgSend_encodeObject_forKey_(coderCopy, v161, v160, @"clientRequestID");

  v164 = objc_msgSend_positionInformation(self, v162, v163);
  objc_msgSend_encodeObject_forKey_(coderCopy, v165, v164, @"positionInformation");

  v168 = objc_msgSend_slotNumber(self, v166, v167);
  objc_msgSend_encodeInteger_forKey_(coderCopy, v169, v168, @"slotNumber");
  v172 = objc_msgSend_cppIds(self, v170, v171);
  objc_msgSend_encodeObject_forKey_(coderCopy, v173, v172, @"cppIds");

  v176 = objc_msgSend_appMetadata(self, v174, v175);
  objc_msgSend_encodeObject_forKey_(coderCopy, v177, v176, @"appMetadata");

  v180 = objc_msgSend_odmlSuccess(self, v178, v179);
  objc_msgSend_encodeBool_forKey_(coderCopy, v181, v180, @"odmlSuccess");
  v184 = objc_msgSend_treatmentId(self, v182, v183);
  objc_msgSend_encodeObject_forKey_(coderCopy, v185, v184, @"treatmentId");

  v188 = objc_msgSend_deploymentId(self, v186, v187);
  objc_msgSend_encodeObject_forKey_(coderCopy, v189, v188, @"deploymentId");

  v192 = objc_msgSend_experimentId(self, v190, v191);
  objc_msgSend_encodeObject_forKey_(coderCopy, v193, v192, @"experimentId");

  v196 = objc_msgSend_triggers(self, v194, v195);
  objc_msgSend_encodeObject_forKey_(coderCopy, v197, v196, @"triggers");

  v201 = objc_msgSend_creativeDetails(self, v198, v199);
  objc_msgSend_encodeObject_forKey_(coderCopy, v200, v201, @"creativeDetails");
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

@end