@interface _BlastDoorLPLinkMetadata
+ (_BlastDoorLPLinkMetadata)metadataWithDataRepresentation:(id)representation;
- (BOOL)isEqual:(id)equal;
- (_BlastDoorLPLinkMetadata)init;
- (_BlastDoorLPLinkMetadata)initWithCoder:(id)coder;
- (id)_initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dataRepresentation;
- (unint64_t)_encodedSize;
- (void)_copyPropertiesFrom:(id)from onlyUpgradeFields:(BOOL)fields;
- (void)_copyPropertiesOnlyUpgradingFieldsFrom:(id)from;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _BlastDoorLPLinkMetadata

- (_BlastDoorLPLinkMetadata)init
{
  v7 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = _BlastDoorLPLinkMetadata;
  v2 = [(_BlastDoorLPLinkMetadata *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_version = 1;
    v4 = v2;
  }

  return v3;
}

- (id)_initWithDictionary:(id)dictionary
{
  v142 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [(_BlastDoorLPLinkMetadata *)self init];
  if (v5)
  {
    v6 = URLForKey(dictionaryCopy, @"LPMetadataURL");
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = stringForKey(dictionaryCopy, @"LPMetadataTitle");
    title = v5->_title;
    v5->_title = v8;

    v10 = stringForKey(dictionaryCopy, @"LPMetadataDescription");
    summary = v5->_summary;
    v5->_summary = v10;

    v12 = stringForKey(dictionaryCopy, @"LPMetadataSelectedText");
    selectedText = v5->_selectedText;
    v5->_selectedText = v12;

    v14 = stringForKey(dictionaryCopy, @"LPMetadataSiteName");
    siteName = v5->_siteName;
    v5->_siteName = v14;

    v16 = stringForKey(dictionaryCopy, @"LPMetadataItemType");
    itemType = v5->_itemType;
    v5->_itemType = v16;

    v18 = URLForKey(dictionaryCopy, @"LPMetadataRelatedURL");
    relatedURL = v5->_relatedURL;
    v5->_relatedURL = v18;

    v20 = stringForKey(dictionaryCopy, @"LPMetadataCreator");
    creator = v5->_creator;
    v5->_creator = v20;

    v22 = stringForKey(dictionaryCopy, @"LPMetadataCreatorFacebookProfile");
    creatorFacebookProfile = v5->_creatorFacebookProfile;
    v5->_creatorFacebookProfile = v22;

    v24 = stringForKey(dictionaryCopy, @"LPMetadataCreatorTwitterUsername");
    creatorTwitterUsername = v5->_creatorTwitterUsername;
    v5->_creatorTwitterUsername = v24;

    v26 = stringForKey(dictionaryCopy, @"LPMetadataTwitterCard");
    twitterCard = v5->_twitterCard;
    v5->_twitterCard = v26;

    v28 = numberForKey(dictionaryCopy, @"LPMetadataUsesActivityPub");
    v5->_usesActivityPub = [v28 BOOLValue];

    v29 = stringForKey(dictionaryCopy, @"LPMetadataAppleContentID");
    appleContentID = v5->_appleContentID;
    v5->_appleContentID = v29;

    v31 = stringForKey(dictionaryCopy, @"LPMetadataAppleDescription");
    appleSummary = v5->_appleSummary;
    v5->_appleSummary = v31;

    v33 = dictionaryCopy;
    v34 = [v33 objectForKey:@"LPMetadataIcons"];
    if (v34)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [_BlastDoorLPLinkMetadata _initWithDictionary:];
      }
    }

    objc_opt_class();
    p_isa = &v5->super.isa;
    v100 = dictionaryCopy;
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v34 count])
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v138 = 0u;
      v139 = 0u;
      v140 = 0u;
      v141 = 0u;
      v36 = v34;
      v37 = [v36 countByEnumeratingWithState:&v138 objects:v137 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v139;
        while (2)
        {
          v40 = v33;
          for (i = 0; i != v38; ++i)
          {
            if (*v139 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v42 = *(*(&v138 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              [_BlastDoorLPLinkMetadata _initWithDictionary:];
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v44 = 0;
              v33 = v40;
              goto LABEL_18;
            }

            v43 = truncatedStringAtMaximumMetadataLength(v42);
            [v35 addObject:v43];
          }

          v38 = [v36 countByEnumeratingWithState:&v138 objects:v137 count:16];
          v33 = v40;
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      v44 = v35;
LABEL_18:
    }

    else
    {
      v44 = 0;
    }

    v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    obj = v44;
    v46 = [obj countByEnumeratingWithState:&v133 objects:v132 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v134;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v134 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v50 = URLFromStringIfHTTPFamily(*(*(&v133 + 1) + 8 * j));
          if (v50)
          {
            v51 = [[_BlastDoorLPIconMetadata alloc] _initWithURL:v50];
            if (v51)
            {
              [v45 addObject:v51];
            }
          }
        }

        v47 = [obj countByEnumeratingWithState:&v133 objects:v132 count:16];
      }

      while (v47);
    }

    objc_storeStrong(&v5->_icons, v45);
    v52 = arrayOfDictionariesForKey(v33, @"LPMetadataARAssets");
    v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v104 = v52;
    v54 = [v104 countByEnumeratingWithState:&v128 objects:v127 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v129;
      do
      {
        for (k = 0; k != v55; ++k)
        {
          if (*v129 != v56)
          {
            objc_enumerationMutation(v104);
          }

          v58 = [[_BlastDoorLPARAssetMetadata alloc] _initWithDictionary:*(*(&v128 + 1) + 8 * k)];
          if (v58)
          {
            [v53 addObject:v58];
          }
        }

        v55 = [v104 countByEnumeratingWithState:&v128 objects:v127 count:16];
      }

      while (v55);
    }

    objc_storeStrong(&v5->_arAssets, v53);
    v59 = arrayOfDictionariesForKey(v33, @"LPMetadataImages");
    v106 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    v103 = v59;
    v60 = [v103 countByEnumeratingWithState:&v123 objects:v122 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v124;
      do
      {
        for (m = 0; m != v61; ++m)
        {
          if (*v124 != v62)
          {
            objc_enumerationMutation(v103);
          }

          v64 = [[_BlastDoorLPImageMetadata alloc] _initWithDictionary:*(*(&v123 + 1) + 8 * m)];
          if (v64)
          {
            [v106 addObject:v64];
          }
        }

        v61 = [v103 countByEnumeratingWithState:&v123 objects:v122 count:16];
      }

      while (v61);
    }

    v98 = v53;
    v99 = v45;

    objc_storeStrong(&v5->_images, v106);
    v65 = arrayOfDictionariesForKey(v33, @"LPMetadataVideos");
    v66 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v67 = v65;
    v68 = [v67 countByEnumeratingWithState:&v118 objects:v117 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v119;
      do
      {
        for (n = 0; n != v69; ++n)
        {
          if (*v119 != v70)
          {
            objc_enumerationMutation(v67);
          }

          v72 = [[_BlastDoorLPVideoMetadata alloc] _initWithDictionary:*(*(&v118 + 1) + 8 * n)];
          if (v72)
          {
            [v66 addObject:v72];
          }
        }

        v69 = [v67 countByEnumeratingWithState:&v118 objects:v117 count:16];
      }

      while (v69);
    }

    objc_storeStrong(&v5->_videos, v66);
    v101 = v33;
    v73 = arrayOfDictionariesForKey(v33, @"LPMetadataStreamingVideos");
    v74 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v75 = v73;
    v76 = [v75 countByEnumeratingWithState:&v113 objects:v112 count:16];
    if (v76)
    {
      v77 = v76;
      v78 = *v114;
      do
      {
        for (ii = 0; ii != v77; ++ii)
        {
          if (*v114 != v78)
          {
            objc_enumerationMutation(v75);
          }

          v80 = [[_BlastDoorLPVideoMetadata alloc] _initWithDictionary:*(*(&v113 + 1) + 8 * ii)];
          if (v80)
          {
            [v74 addObject:v80];
          }
        }

        v77 = [v75 countByEnumeratingWithState:&v113 objects:v112 count:16];
      }

      while (v77);
    }

    v97 = v67;

    objc_storeStrong(p_isa + 39, v74);
    v81 = arrayOfDictionariesForKey(v101, @"LPMetadataAudios");
    v82 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v83 = v81;
    v84 = [v83 countByEnumeratingWithState:&v108 objects:v107 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v109;
      do
      {
        for (jj = 0; jj != v85; ++jj)
        {
          if (*v109 != v86)
          {
            objc_enumerationMutation(v83);
          }

          v88 = [[_BlastDoorLPAudioMetadata alloc] _initWithDictionary:*(*(&v108 + 1) + 8 * jj), v97, v98, v99];
          if (v88)
          {
            [v82 addObject:v88];
          }
        }

        v85 = [v83 countByEnumeratingWithState:&v108 objects:v107 count:16];
      }

      while (v85);
    }

    v5 = p_isa;
    objc_storeStrong(p_isa + 40, v82);
    v89 = v101;
    v90 = [v89 objectForKey:@"LPMetadataAssociatedApplication"];
    if (v90)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [_BlastDoorLPLinkMetadata _initWithDictionary:];
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      dictionaryCopy = v100;
      if ([v90 count])
      {
        v91 = v90;
      }

      else
      {
        v91 = 0;
      }
    }

    else
    {
      v91 = 0;
      dictionaryCopy = v100;
    }

    if (v91)
    {
      v92 = objc_alloc_init(_BlastDoorLPAssociatedApplicationMetadata);
      v93 = p_isa[41];
      p_isa[41] = v92;

      v94 = stringForKey(v91, @"app-clip-bundle-id");
      [p_isa[41] setBundleIdentifier:v94];
    }

    v95 = p_isa;
  }

  return v5;
}

- (_BlastDoorLPLinkMetadata)initWithCoder:(id)coder
{
  v102 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v92.receiver = self;
  v92.super_class = _BlastDoorLPLinkMetadata;
  v5 = [(_BlastDoorLPLinkMetadata *)&v92 init];
  if (v5
    && (v5->_version = [coderCopy decodeInt32ForKey:@"version"],
        decodeURLForKey(coderCopy, @"originalURL"),
        v6 = objc_claimAutoreleasedReturnValue(),
        originalURL = v5->_originalURL,
        v5->_originalURL = v6,
        originalURL,
        decodeURLForKey(coderCopy, @"URL"),
        v8 = objc_claimAutoreleasedReturnValue(),
        URL = v5->_URL,
        v5->_URL = v8,
        URL,
        decodeStringForKey(coderCopy, @"title"),
        v10 = objc_claimAutoreleasedReturnValue(),
        title = v5->_title,
        v5->_title = v10,
        title,
        decodeStringForKey(coderCopy, @"summary"),
        v12 = objc_claimAutoreleasedReturnValue(),
        summary = v5->_summary,
        v5->_summary = v12,
        summary,
        decodeStringForKey(coderCopy, @"selection"),
        v14 = objc_claimAutoreleasedReturnValue(),
        selectedText = v5->_selectedText,
        v5->_selectedText = v14,
        selectedText,
        decodeStringForKey(coderCopy, @"siteName"),
        v16 = objc_claimAutoreleasedReturnValue(),
        siteName = v5->_siteName,
        v5->_siteName = v16,
        siteName,
        decodeStringForKey(coderCopy, @"itemType"),
        v18 = objc_claimAutoreleasedReturnValue(),
        itemType = v5->_itemType,
        v5->_itemType = v18,
        itemType,
        decodeURLForKey(coderCopy, @"relatedURL"),
        v20 = objc_claimAutoreleasedReturnValue(),
        relatedURL = v5->_relatedURL,
        v5->_relatedURL = v20,
        relatedURL,
        decodeStringForKey(coderCopy, @"creator"),
        v22 = objc_claimAutoreleasedReturnValue(),
        creator = v5->_creator,
        v5->_creator = v22,
        creator,
        decodeStringForKey(coderCopy, @"creatorFacebookProfile"),
        v24 = objc_claimAutoreleasedReturnValue(),
        creatorFacebookProfile = v5->_creatorFacebookProfile,
        v5->_creatorFacebookProfile = v24,
        creatorFacebookProfile,
        decodeStringForKey(coderCopy, @"creatorTwitterUsername"),
        v26 = objc_claimAutoreleasedReturnValue(),
        creatorTwitterUsername = v5->_creatorTwitterUsername,
        v5->_creatorTwitterUsername = v26,
        creatorTwitterUsername,
        decodeStringForKey(coderCopy, @"twitterCard"),
        v28 = objc_claimAutoreleasedReturnValue(),
        twitterCard = v5->_twitterCard,
        v5->_twitterCard = v28,
        twitterCard,
        v5->_usesActivityPub = [coderCopy decodeBoolForKey:@"usesActivityPub"],
        decodeStringForKey(coderCopy, @"appleContentID"),
        v30 = objc_claimAutoreleasedReturnValue(),
        appleContentID = v5->_appleContentID,
        v5->_appleContentID = v30,
        appleContentID,
        decodeStringForKey(coderCopy, @"appleSummary"),
        v32 = objc_claimAutoreleasedReturnValue(),
        appleSummary = v5->_appleSummary,
        v5->_appleSummary = v32,
        appleSummary,
        [coderCopy _bd_lp_strictlyDecodeColorForKey:@"themeColor"],
        v34 = objc_claimAutoreleasedReturnValue(),
        themeColor = v5->_themeColor,
        v5->_themeColor = v34,
        themeColor,
        [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"icon"],
        v36 = objc_claimAutoreleasedReturnValue(),
        [(_BlastDoorLPLinkMetadata *)v5 setIcon:v36],
        v36,
        [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"iconMetadata"],
        v37 = objc_claimAutoreleasedReturnValue(),
        iconMetadata = v5->_iconMetadata,
        v5->_iconMetadata = v37,
        iconMetadata,
        [coderCopy _bd_lp_strictlyDecodeLPImageForKey:@"image"],
        v39 = objc_claimAutoreleasedReturnValue(),
        [(_BlastDoorLPLinkMetadata *)v5 setImage:v39],
        v39,
        [coderCopy _bd_lp_strictlyDecodeArrayOfLPImagesForKey:@"alternateImages"],
        v40 = objc_claimAutoreleasedReturnValue(),
        [(_BlastDoorLPLinkMetadata *)v5 setAlternateImages:v40],
        v40,
        [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"imageMetadata"],
        v41 = objc_claimAutoreleasedReturnValue(),
        imageMetadata = v5->_imageMetadata,
        v5->_imageMetadata = v41,
        imageMetadata,
        [coderCopy _bd_lp_strictlyDecodeArrayOfLPImagesForKey:@"contentImages"],
        v43 = objc_claimAutoreleasedReturnValue(),
        [(_BlastDoorLPLinkMetadata *)v5 setContentImages:v43],
        v43,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"contentImagesMetadata"],
        v44 = objc_claimAutoreleasedReturnValue(),
        contentImagesMetadata = v5->_contentImagesMetadata,
        v5->_contentImagesMetadata = v44,
        contentImagesMetadata,
        [coderCopy _bd_lp_strictlyDecodeLPVideoForKey:@"video"],
        v46 = objc_claimAutoreleasedReturnValue(),
        [(_BlastDoorLPLinkMetadata *)v5 setVideo:v46],
        v46,
        [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"videoMetadata"],
        v47 = objc_claimAutoreleasedReturnValue(),
        videoMetadata = v5->_videoMetadata,
        v5->_videoMetadata = v47,
        videoMetadata,
        [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"audio"],
        v49 = objc_claimAutoreleasedReturnValue(),
        [(_BlastDoorLPLinkMetadata *)v5 setAudio:v49],
        v49,
        [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"audioMetadata"],
        v50 = objc_claimAutoreleasedReturnValue(),
        audioMetadata = v5->_audioMetadata,
        v5->_audioMetadata = v50,
        audioMetadata,
        [coderCopy _bd_lp_strictlyDecodeLPARAssetForKey:@"arAsset"],
        v52 = objc_claimAutoreleasedReturnValue(),
        [(_BlastDoorLPLinkMetadata *)v5 setArAsset:v52],
        v52,
        [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"arAssetMetadata"],
        v53 = objc_claimAutoreleasedReturnValue(),
        arAssetMetadata = v5->_arAssetMetadata,
        v5->_arAssetMetadata = v53,
        arAssetMetadata,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"icons"],
        v55 = objc_claimAutoreleasedReturnValue(),
        icons = v5->_icons,
        v5->_icons = v55,
        icons,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"images"],
        v57 = objc_claimAutoreleasedReturnValue(),
        images = v5->_images,
        v5->_images = v57,
        images,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"availableContentImages"],
        v59 = objc_claimAutoreleasedReturnValue(),
        availableContentImages = v5->_availableContentImages,
        v5->_availableContentImages = v59,
        availableContentImages,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"videos"],
        v61 = objc_claimAutoreleasedReturnValue(),
        videos = v5->_videos,
        v5->_videos = v61,
        videos,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"streamingVideos"],
        v63 = objc_claimAutoreleasedReturnValue(),
        streamingVideos = v5->_streamingVideos,
        v5->_streamingVideos = v63,
        streamingVideos,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"audios"],
        v65 = objc_claimAutoreleasedReturnValue(),
        audios = v5->_audios,
        v5->_audios = v65,
        audios,
        [coderCopy _bd_lp_strictlyDecodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"arAssets"],
        v67 = objc_claimAutoreleasedReturnValue(),
        arAssets = v5->_arAssets,
        v5->_arAssets = v67,
        arAssets,
        [coderCopy _bd_lp_strictlyDecodeObjectOfClass:objc_opt_class() forKey:@"associatedApplication"],
        v69 = objc_claimAutoreleasedReturnValue(),
        associatedApplication = v5->_associatedApplication,
        v5->_associatedApplication = v69,
        associatedApplication,
        [coderCopy error],
        v71 = objc_claimAutoreleasedReturnValue(),
        v71,
        !v71))
  {
    if ([coderCopy containsValueForKey:@"collaborationMetadata"])
    {
      v73 = MEMORY[0x277CBEB98];
      v98 = 0;
      v99 = &v98;
      v100 = 0x2050000000;
      v74 = get_SWCollaborationMetadataClass_softClass;
      v101 = get_SWCollaborationMetadataClass_softClass;
      if (!get_SWCollaborationMetadataClass_softClass)
      {
        v93 = MEMORY[0x277D85DD0];
        v94 = 3221225472;
        v95 = __get_SWCollaborationMetadataClass_block_invoke;
        v96 = &unk_2781764E8;
        v97 = &v98;
        __get_SWCollaborationMetadataClass_block_invoke(&v93);
        v74 = v99[3];
      }

      v75 = v74;
      _Block_object_dispose(&v98, 8);
      v98 = 0;
      v99 = &v98;
      v100 = 0x2050000000;
      v76 = get_SWMutableCollaborationMetadataClass_softClass;
      v101 = get_SWMutableCollaborationMetadataClass_softClass;
      if (!get_SWMutableCollaborationMetadataClass_softClass)
      {
        v93 = MEMORY[0x277D85DD0];
        v94 = 3221225472;
        v95 = __get_SWMutableCollaborationMetadataClass_block_invoke;
        v96 = &unk_2781764E8;
        v97 = &v98;
        __get_SWMutableCollaborationMetadataClass_block_invoke(&v93);
        v76 = v99[3];
      }

      v77 = v76;
      _Block_object_dispose(&v98, 8);
      v78 = [v73 setWithObjects:{v74, v76, 0}];
      v79 = [coderCopy _bd_lp_strictlyDecodeObjectOfClasses:v78 forKey:@"collaborationMetadata"];
      collaborationMetadata = v5->_collaborationMetadata;
      v5->_collaborationMetadata = v79;
    }

    if ([coderCopy containsValueForKey:@"specialization2"])
    {
      v81 = allKnownSpecializationClasses();
      v91 = 0;
      v82 = [coderCopy _bd_lp_strictlyDecodeTopLevelObjectOfClasses:v81 forKey:@"specialization2" error:&v91];
      v83 = v91;
      specialization = v5->_specialization;
      v5->_specialization = v82;
    }

    if (!v5->_specialization && [coderCopy containsValueForKey:@"specialization"])
    {
      v85 = allKnownSpecializationClasses();
      v90 = 0;
      v86 = [coderCopy _bd_lp_strictlyDecodeTopLevelObjectOfClasses:v85 forKey:@"specialization" error:&v90];
      v87 = v90;
      v88 = v5->_specialization;
      v5->_specialization = v86;
    }

    v72 = v5;
  }

  else
  {
    v72 = 0;
  }

  return v72;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_BlastDoorLPLinkMetadata allocWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [(_BlastDoorLPLinkMetadata *)v4 _copyPropertiesFrom:self onlyUpgradeFields:0];
    v6 = v5;
  }

  return v5;
}

- (void)_copyPropertiesOnlyUpgradingFieldsFrom:(id)from
{
  fromCopy = from;
  self->_version = [fromCopy version];
  originalURL = [(_BlastDoorLPLinkMetadata *)self originalURL];
  if (!originalURL || (v5 = originalURL, [fromCopy originalURL], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v6))
  {
    originalURL2 = [fromCopy originalURL];
    [(_BlastDoorLPLinkMetadata *)self setOriginalURL:originalURL2];
  }

  v8 = [(_BlastDoorLPLinkMetadata *)self URL];
  if (!v8 || (v9 = v8, [fromCopy URL], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
  {
    v11 = [fromCopy URL];
    [(_BlastDoorLPLinkMetadata *)self setURL:v11];
  }

  title = [(_BlastDoorLPLinkMetadata *)self title];
  if (!title || (v13 = title, [fromCopy title], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
  {
    title2 = [fromCopy title];
    v16 = [title2 copy];
    [(_BlastDoorLPLinkMetadata *)self setTitle:v16];
  }

  summary = [(_BlastDoorLPLinkMetadata *)self summary];
  if (!summary || (v18 = summary, [fromCopy summary], v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v19))
  {
    summary2 = [fromCopy summary];
    v21 = [summary2 copy];
    [(_BlastDoorLPLinkMetadata *)self setSummary:v21];
  }

  selectedText = [(_BlastDoorLPLinkMetadata *)self selectedText];
  if (!selectedText || (v23 = selectedText, [fromCopy selectedText], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v24))
  {
    selectedText2 = [fromCopy selectedText];
    v26 = [selectedText2 copy];
    [(_BlastDoorLPLinkMetadata *)self setSelectedText:v26];
  }

  siteName = [(_BlastDoorLPLinkMetadata *)self siteName];
  if (!siteName || (v28 = siteName, [fromCopy siteName], v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v29))
  {
    siteName2 = [fromCopy siteName];
    v31 = [siteName2 copy];
    [(_BlastDoorLPLinkMetadata *)self setSiteName:v31];
  }

  itemType = [(_BlastDoorLPLinkMetadata *)self itemType];
  if (!itemType || (v33 = itemType, [fromCopy itemType], v34 = objc_claimAutoreleasedReturnValue(), v34, v33, v34))
  {
    itemType2 = [fromCopy itemType];
    v36 = [itemType2 copy];
    [(_BlastDoorLPLinkMetadata *)self setItemType:v36];
  }

  relatedURL = [(_BlastDoorLPLinkMetadata *)self relatedURL];
  if (!relatedURL || (v38 = relatedURL, [fromCopy relatedURL], v39 = objc_claimAutoreleasedReturnValue(), v39, v38, v39))
  {
    relatedURL2 = [fromCopy relatedURL];
    [(_BlastDoorLPLinkMetadata *)self setRelatedURL:relatedURL2];
  }

  creator = [(_BlastDoorLPLinkMetadata *)self creator];
  if (!creator || (v42 = creator, [fromCopy creator], v43 = objc_claimAutoreleasedReturnValue(), v43, v42, v43))
  {
    creator2 = [fromCopy creator];
    v45 = [creator2 copy];
    [(_BlastDoorLPLinkMetadata *)self setCreator:v45];
  }

  creatorFacebookProfile = [(_BlastDoorLPLinkMetadata *)self creatorFacebookProfile];
  if (!creatorFacebookProfile || (v47 = creatorFacebookProfile, [fromCopy creatorFacebookProfile], v48 = objc_claimAutoreleasedReturnValue(), v48, v47, v48))
  {
    creatorFacebookProfile2 = [fromCopy creatorFacebookProfile];
    v50 = [creatorFacebookProfile2 copy];
    [(_BlastDoorLPLinkMetadata *)self setCreatorFacebookProfile:v50];
  }

  creatorTwitterUsername = [(_BlastDoorLPLinkMetadata *)self creatorTwitterUsername];
  if (!creatorTwitterUsername || (v52 = creatorTwitterUsername, [fromCopy creatorTwitterUsername], v53 = objc_claimAutoreleasedReturnValue(), v53, v52, v53))
  {
    creatorTwitterUsername2 = [fromCopy creatorTwitterUsername];
    v55 = [creatorTwitterUsername2 copy];
    [(_BlastDoorLPLinkMetadata *)self setCreatorTwitterUsername:v55];
  }

  twitterCard = [(_BlastDoorLPLinkMetadata *)self twitterCard];
  if (!twitterCard || (v57 = twitterCard, [fromCopy twitterCard], v58 = objc_claimAutoreleasedReturnValue(), v58, v57, v58))
  {
    twitterCard2 = [fromCopy twitterCard];
    v60 = [twitterCard2 copy];
    [(_BlastDoorLPLinkMetadata *)self setTwitterCard:v60];
  }

  if ([(_BlastDoorLPLinkMetadata *)self usesActivityPub])
  {
    usesActivityPub = 1;
  }

  else
  {
    usesActivityPub = [fromCopy usesActivityPub];
  }

  [(_BlastDoorLPLinkMetadata *)self setUsesActivityPub:usesActivityPub];
  appleContentID = [(_BlastDoorLPLinkMetadata *)self appleContentID];
  if (!appleContentID || (v63 = appleContentID, [fromCopy appleContentID], v64 = objc_claimAutoreleasedReturnValue(), v64, v63, v64))
  {
    appleContentID2 = [fromCopy appleContentID];
    v66 = [appleContentID2 copy];
    [(_BlastDoorLPLinkMetadata *)self setAppleContentID:v66];
  }

  appleSummary = [(_BlastDoorLPLinkMetadata *)self appleSummary];
  if (!appleSummary || (v68 = appleSummary, [fromCopy appleSummary], v69 = objc_claimAutoreleasedReturnValue(), v69, v68, v69))
  {
    appleSummary2 = [fromCopy appleSummary];
    v71 = [appleSummary2 copy];
    [(_BlastDoorLPLinkMetadata *)self setAppleSummary:v71];
  }

  themeColor = [(_BlastDoorLPLinkMetadata *)self themeColor];
  if (!themeColor || (v73 = themeColor, [fromCopy themeColor], v74 = objc_claimAutoreleasedReturnValue(), v74, v73, v74))
  {
    themeColor2 = [fromCopy themeColor];
    v76 = [themeColor2 copy];
    [(_BlastDoorLPLinkMetadata *)self setThemeColor:v76];
  }

  icon = [(_BlastDoorLPLinkMetadata *)self icon];
  if (!icon || (v78 = icon, [fromCopy icon], v79 = objc_claimAutoreleasedReturnValue(), v79, v78, v79))
  {
    icon2 = [fromCopy icon];
    [(_BlastDoorLPLinkMetadata *)self setIcon:icon2];
  }

  iconMetadata = [(_BlastDoorLPLinkMetadata *)self iconMetadata];
  if (!iconMetadata || (v82 = iconMetadata, [fromCopy iconMetadata], v83 = objc_claimAutoreleasedReturnValue(), v83, v82, v83))
  {
    iconMetadata2 = [fromCopy iconMetadata];
    [(_BlastDoorLPLinkMetadata *)self setIconMetadata:iconMetadata2];
  }

  arAsset = [(_BlastDoorLPLinkMetadata *)self arAsset];
  if (!arAsset || (v86 = arAsset, [fromCopy arAsset], v87 = objc_claimAutoreleasedReturnValue(), v87, v86, v87))
  {
    arAsset2 = [fromCopy arAsset];
    [(_BlastDoorLPLinkMetadata *)self setArAsset:arAsset2];
  }

  arAssetMetadata = [(_BlastDoorLPLinkMetadata *)self arAssetMetadata];
  if (!arAssetMetadata || (v90 = arAssetMetadata, [fromCopy arAssetMetadata], v91 = objc_claimAutoreleasedReturnValue(), v91, v90, v91))
  {
    arAssetMetadata2 = [fromCopy arAssetMetadata];
    [(_BlastDoorLPLinkMetadata *)self setArAssetMetadata:arAssetMetadata2];
  }

  arAsset3 = [(_BlastDoorLPLinkMetadata *)self arAsset];
  if (!arAsset3 || (v94 = arAsset3, [fromCopy arAsset], v95 = objc_claimAutoreleasedReturnValue(), v95, v94, v95))
  {
    image = [fromCopy image];
    [(_BlastDoorLPLinkMetadata *)self setImage:image];
  }

  imageMetadata = [(_BlastDoorLPLinkMetadata *)self imageMetadata];
  if (!imageMetadata || (v98 = imageMetadata, [fromCopy imageMetadata], v99 = objc_claimAutoreleasedReturnValue(), v99, v98, v99))
  {
    imageMetadata2 = [fromCopy imageMetadata];
    [(_BlastDoorLPLinkMetadata *)self setImageMetadata:imageMetadata2];
  }

  contentImages = [(_BlastDoorLPLinkMetadata *)self contentImages];
  if (!contentImages || (v102 = contentImages, [fromCopy contentImages], v103 = objc_claimAutoreleasedReturnValue(), v103, v102, v103))
  {
    contentImages2 = [fromCopy contentImages];
    [(_BlastDoorLPLinkMetadata *)self setContentImages:contentImages2];
  }

  contentImagesMetadata = [(_BlastDoorLPLinkMetadata *)self contentImagesMetadata];
  if (!contentImagesMetadata || (v106 = contentImagesMetadata, [fromCopy contentImagesMetadata], v107 = objc_claimAutoreleasedReturnValue(), v107, v106, v107))
  {
    contentImagesMetadata2 = [fromCopy contentImagesMetadata];
    [(_BlastDoorLPLinkMetadata *)self setContentImagesMetadata:contentImagesMetadata2];
  }

  video = [(_BlastDoorLPLinkMetadata *)self video];
  if (!video || (v110 = video, [fromCopy video], v111 = objc_claimAutoreleasedReturnValue(), v111, v110, v111))
  {
    video2 = [fromCopy video];
    [(_BlastDoorLPLinkMetadata *)self setVideo:video2];
  }

  videoMetadata = [(_BlastDoorLPLinkMetadata *)self videoMetadata];
  if (!videoMetadata || (v114 = videoMetadata, [fromCopy videoMetadata], v115 = objc_claimAutoreleasedReturnValue(), v115, v114, v115))
  {
    videoMetadata2 = [fromCopy videoMetadata];
    [(_BlastDoorLPLinkMetadata *)self setVideoMetadata:videoMetadata2];
  }

  audio = [(_BlastDoorLPLinkMetadata *)self audio];
  if (!audio || (v118 = audio, [fromCopy audio], v119 = objc_claimAutoreleasedReturnValue(), v119, v118, v119))
  {
    audio2 = [fromCopy audio];
    [(_BlastDoorLPLinkMetadata *)self setAudio:audio2];
  }

  audioMetadata = [(_BlastDoorLPLinkMetadata *)self audioMetadata];
  if (!audioMetadata || (v122 = audioMetadata, [fromCopy audioMetadata], v123 = objc_claimAutoreleasedReturnValue(), v123, v122, v123))
  {
    audioMetadata2 = [fromCopy audioMetadata];
    [(_BlastDoorLPLinkMetadata *)self setAudioMetadata:audioMetadata2];
  }

  icons = [(_BlastDoorLPLinkMetadata *)self icons];
  if (!icons || (v126 = icons, [fromCopy icons], v127 = objc_claimAutoreleasedReturnValue(), v127, v126, v127))
  {
    icons2 = [fromCopy icons];
    v129 = [icons2 copy];
    [(_BlastDoorLPLinkMetadata *)self setIcons:v129];
  }

  arAssets = [(_BlastDoorLPLinkMetadata *)self arAssets];
  if (!arAssets || (v131 = arAssets, [fromCopy arAssets], v132 = objc_claimAutoreleasedReturnValue(), v132, v131, v132))
  {
    arAssets2 = [fromCopy arAssets];
    v134 = [arAssets2 copy];
    [(_BlastDoorLPLinkMetadata *)self setArAssets:v134];
  }

  images = [(_BlastDoorLPLinkMetadata *)self images];
  if (!images || (v136 = images, [fromCopy images], v137 = objc_claimAutoreleasedReturnValue(), v137, v136, v137))
  {
    images2 = [fromCopy images];
    v139 = [images2 copy];
    [(_BlastDoorLPLinkMetadata *)self setImages:v139];
  }

  alternateImages = [(_BlastDoorLPLinkMetadata *)self alternateImages];
  if (!alternateImages || (v141 = alternateImages, [fromCopy alternateImages], v142 = objc_claimAutoreleasedReturnValue(), v142, v141, v142))
  {
    alternateImages2 = [fromCopy alternateImages];
    v144 = [alternateImages2 copy];
    [(_BlastDoorLPLinkMetadata *)self setAlternateImages:v144];
  }

  availableContentImages = [(_BlastDoorLPLinkMetadata *)self availableContentImages];
  if (!availableContentImages || (v146 = availableContentImages, [fromCopy availableContentImages], v147 = objc_claimAutoreleasedReturnValue(), v147, v146, v147))
  {
    availableContentImages2 = [fromCopy availableContentImages];
    v149 = [availableContentImages2 copy];
    [(_BlastDoorLPLinkMetadata *)self setAvailableContentImages:v149];
  }

  videos = [(_BlastDoorLPLinkMetadata *)self videos];
  if (!videos || (v151 = videos, [fromCopy videos], v152 = objc_claimAutoreleasedReturnValue(), v152, v151, v152))
  {
    videos2 = [fromCopy videos];
    v154 = [videos2 copy];
    [(_BlastDoorLPLinkMetadata *)self setVideos:v154];
  }

  streamingVideos = [(_BlastDoorLPLinkMetadata *)self streamingVideos];
  if (!streamingVideos || (v156 = streamingVideos, [fromCopy streamingVideos], v157 = objc_claimAutoreleasedReturnValue(), v157, v156, v157))
  {
    streamingVideos2 = [fromCopy streamingVideos];
    v159 = [streamingVideos2 copy];
    [(_BlastDoorLPLinkMetadata *)self setStreamingVideos:v159];
  }

  audios = [(_BlastDoorLPLinkMetadata *)self audios];
  if (!audios || (v161 = audios, [fromCopy audios], v162 = objc_claimAutoreleasedReturnValue(), v162, v161, v162))
  {
    audios2 = [fromCopy audios];
    v164 = [audios2 copy];
    [(_BlastDoorLPLinkMetadata *)self setAudios:v164];
  }

  associatedApplication = [(_BlastDoorLPLinkMetadata *)self associatedApplication];
  if (!associatedApplication || (v166 = associatedApplication, [fromCopy associatedApplication], v167 = objc_claimAutoreleasedReturnValue(), v167, v166, v167))
  {
    associatedApplication2 = [fromCopy associatedApplication];
    v169 = [associatedApplication2 copy];
    [(_BlastDoorLPLinkMetadata *)self setAssociatedApplication:v169];
  }

  collaborationMetadata = [(_BlastDoorLPLinkMetadata *)self collaborationMetadata];
  if (!collaborationMetadata || (v171 = collaborationMetadata, [fromCopy collaborationMetadata], v172 = objc_claimAutoreleasedReturnValue(), v172, v171, v172))
  {
    collaborationMetadata2 = [fromCopy collaborationMetadata];
    v174 = [collaborationMetadata2 copy];
    [(_BlastDoorLPLinkMetadata *)self setCollaborationMetadata:v174];
  }

  specialization = [(_BlastDoorLPLinkMetadata *)self specialization];
  if (!specialization || (v176 = specialization, [fromCopy specialization], v177 = objc_claimAutoreleasedReturnValue(), v177, v176, v178 = fromCopy, v177))
  {
    specialization2 = [fromCopy specialization];
    v180 = [specialization2 copy];
    [(_BlastDoorLPLinkMetadata *)self setSpecialization:v180];

    v178 = fromCopy;
  }
}

- (void)_copyPropertiesFrom:(id)from onlyUpgradeFields:(BOOL)fields
{
  fieldsCopy = fields;
  fromCopy = from;
  v69 = fromCopy;
  if (fieldsCopy)
  {
    [(_BlastDoorLPLinkMetadata *)self _copyPropertiesOnlyUpgradingFieldsFrom:fromCopy];
    v7 = v69;
  }

  else
  {
    self->_version = [fromCopy version];
    originalURL = [v69 originalURL];
    [(_BlastDoorLPLinkMetadata *)self setOriginalURL:originalURL];

    v9 = [v69 URL];
    [(_BlastDoorLPLinkMetadata *)self setURL:v9];

    title = [v69 title];
    v11 = [title copy];
    [(_BlastDoorLPLinkMetadata *)self setTitle:v11];

    summary = [v69 summary];
    v13 = [summary copy];
    [(_BlastDoorLPLinkMetadata *)self setSummary:v13];

    selectedText = [v69 selectedText];
    v15 = [selectedText copy];
    [(_BlastDoorLPLinkMetadata *)self setSelectedText:v15];

    siteName = [v69 siteName];
    v17 = [siteName copy];
    [(_BlastDoorLPLinkMetadata *)self setSiteName:v17];

    itemType = [v69 itemType];
    v19 = [itemType copy];
    [(_BlastDoorLPLinkMetadata *)self setItemType:v19];

    relatedURL = [v69 relatedURL];
    [(_BlastDoorLPLinkMetadata *)self setRelatedURL:relatedURL];

    creator = [v69 creator];
    v22 = [creator copy];
    [(_BlastDoorLPLinkMetadata *)self setCreator:v22];

    creatorFacebookProfile = [v69 creatorFacebookProfile];
    v24 = [creatorFacebookProfile copy];
    [(_BlastDoorLPLinkMetadata *)self setCreatorFacebookProfile:v24];

    creatorTwitterUsername = [v69 creatorTwitterUsername];
    v26 = [creatorTwitterUsername copy];
    [(_BlastDoorLPLinkMetadata *)self setCreatorTwitterUsername:v26];

    twitterCard = [v69 twitterCard];
    v28 = [twitterCard copy];
    [(_BlastDoorLPLinkMetadata *)self setTwitterCard:v28];

    -[_BlastDoorLPLinkMetadata setUsesActivityPub:](self, "setUsesActivityPub:", [v69 usesActivityPub]);
    appleContentID = [v69 appleContentID];
    v30 = [appleContentID copy];
    [(_BlastDoorLPLinkMetadata *)self setAppleContentID:v30];

    appleSummary = [v69 appleSummary];
    v32 = [appleSummary copy];
    [(_BlastDoorLPLinkMetadata *)self setAppleSummary:v32];

    themeColor = [v69 themeColor];
    v34 = [themeColor copy];
    [(_BlastDoorLPLinkMetadata *)self setThemeColor:v34];

    icon = [v69 icon];
    [(_BlastDoorLPLinkMetadata *)self setIcon:icon];

    iconMetadata = [v69 iconMetadata];
    [(_BlastDoorLPLinkMetadata *)self setIconMetadata:iconMetadata];

    arAsset = [v69 arAsset];
    [(_BlastDoorLPLinkMetadata *)self setArAsset:arAsset];

    arAssetMetadata = [v69 arAssetMetadata];
    [(_BlastDoorLPLinkMetadata *)self setArAssetMetadata:arAssetMetadata];

    image = [v69 image];
    [(_BlastDoorLPLinkMetadata *)self setImage:image];

    imageMetadata = [v69 imageMetadata];
    [(_BlastDoorLPLinkMetadata *)self setImageMetadata:imageMetadata];

    contentImages = [v69 contentImages];
    [(_BlastDoorLPLinkMetadata *)self setContentImages:contentImages];

    contentImagesMetadata = [v69 contentImagesMetadata];
    [(_BlastDoorLPLinkMetadata *)self setContentImagesMetadata:contentImagesMetadata];

    video = [v69 video];
    [(_BlastDoorLPLinkMetadata *)self setVideo:video];

    videoMetadata = [v69 videoMetadata];
    [(_BlastDoorLPLinkMetadata *)self setVideoMetadata:videoMetadata];

    audio = [v69 audio];
    [(_BlastDoorLPLinkMetadata *)self setAudio:audio];

    audioMetadata = [v69 audioMetadata];
    [(_BlastDoorLPLinkMetadata *)self setAudioMetadata:audioMetadata];

    icons = [v69 icons];
    v48 = [icons copy];
    [(_BlastDoorLPLinkMetadata *)self setIcons:v48];

    arAssets = [v69 arAssets];
    v50 = [arAssets copy];
    [(_BlastDoorLPLinkMetadata *)self setArAssets:v50];

    images = [v69 images];
    v52 = [images copy];
    [(_BlastDoorLPLinkMetadata *)self setImages:v52];

    alternateImages = [v69 alternateImages];
    v54 = [alternateImages copy];
    [(_BlastDoorLPLinkMetadata *)self setAlternateImages:v54];

    availableContentImages = [v69 availableContentImages];
    v56 = [availableContentImages copy];
    [(_BlastDoorLPLinkMetadata *)self setAvailableContentImages:v56];

    videos = [v69 videos];
    v58 = [videos copy];
    [(_BlastDoorLPLinkMetadata *)self setVideos:v58];

    streamingVideos = [v69 streamingVideos];
    v60 = [streamingVideos copy];
    [(_BlastDoorLPLinkMetadata *)self setStreamingVideos:v60];

    audios = [v69 audios];
    v62 = [audios copy];
    [(_BlastDoorLPLinkMetadata *)self setAudios:v62];

    associatedApplication = [v69 associatedApplication];
    v64 = [associatedApplication copy];
    [(_BlastDoorLPLinkMetadata *)self setAssociatedApplication:v64];

    collaborationMetadata = [v69 collaborationMetadata];
    v66 = [collaborationMetadata copy];
    [(_BlastDoorLPLinkMetadata *)self setCollaborationMetadata:v66];

    specialization = [v69 specialization];

    v68 = [specialization copy];
    [(_BlastDoorLPLinkMetadata *)self setSpecialization:v68];

    v7 = specialization;
  }
}

- (void)encodeWithCoder:(id)coder
{
  v17[11] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeInt32:self->_version forKey:@"version"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_originalURL forKey:@"originalURL"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_URL forKey:@"URL"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_title forKey:@"title"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_summary forKey:@"summary"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_selectedText forKey:@"selection"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_siteName forKey:@"siteName"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_itemType forKey:@"itemType"];
  [coderCopy _bd_lp_encodeURLIfNotNilOrLocalFile:self->_relatedURL forKey:@"relatedURL"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_creator forKey:@"creator"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_creatorFacebookProfile forKey:@"creatorFacebookProfile"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_creatorTwitterUsername forKey:@"creatorTwitterUsername"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_twitterCard forKey:@"twitterCard"];
  [coderCopy encodeBool:self->_usesActivityPub forKey:@"usesActivityPub"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_appleContentID forKey:@"appleContentID"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_appleSummary forKey:@"appleSummary"];
  [coderCopy _bd_lp_encodeColorIfNotNil:self->_themeColor forKey:@"themeColor"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_icon forKey:@"icon"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_iconMetadata forKey:@"iconMetadata"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_arAsset forKey:@"arAsset"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_arAssetMetadata forKey:@"arAssetMetadata"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_image forKey:@"image"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_alternateImages forKey:@"alternateImages"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_contentImages forKey:@"contentImages"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_contentImagesMetadata forKey:@"contentImagesMetadata"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_imageMetadata forKey:@"imageMetadata"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_video forKey:@"video"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_videoMetadata forKey:@"videoMetadata"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_audio forKey:@"audio"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_audioMetadata forKey:@"audioMetadata"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_icons forKey:@"icons"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_images forKey:@"images"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_availableContentImages forKey:@"availableContentImages"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_videos forKey:@"videos"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_streamingVideos forKey:@"streamingVideos"];
  [coderCopy _bd_lp_encodeArrayIfNotEmpty:self->_audios forKey:@"audios"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_associatedApplication forKey:@"associatedApplication"];
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_collaborationMetadata forKey:@"collaborationMetadata"];
  v5 = self->_specialization;
  v17[0] = objc_opt_class();
  v17[1] = objc_opt_class();
  v17[2] = objc_opt_class();
  v17[3] = objc_opt_class();
  v17[4] = objc_opt_class();
  v17[5] = objc_opt_class();
  v17[6] = objc_opt_class();
  v17[7] = objc_opt_class();
  v17[8] = objc_opt_class();
  v17[9] = objc_opt_class();
  v17[10] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:11];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (objc_opt_isKindOfClass())
        {

          v11 = @"specialization";
          goto LABEL_11;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = @"specialization2";
LABEL_11:
  [coderCopy _bd_lp_encodeObjectIfNotNil:self->_specialization forKey:v11];
}

- (BOOL)isEqual:(id)equal
{
  v48 = *MEMORY[0x277D85DE8];
  equalCopy = equal;
  v47.receiver = self;
  v47.super_class = _BlastDoorLPLinkMetadata;
  if ([(_BlastDoorLPLinkMetadata *)&v47 isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      if (*(v6 + 3) == self->_version && ((v8 = v6[20], !(v8 | self->_themeColor)) || [v8 isEqual:?]) && ((v9 = v7[2], !(v9 | self->_originalURL)) || objc_msgSend(v9, "isEqual:")) && ((v10 = v7[3], !(v10 | self->_URL)) || objc_msgSend(v10, "isEqual:")) && ((v11 = v7[4], !(v11 | self->_title)) || objc_msgSend(v11, "isEqual:")) && ((v12 = v7[9], !(v12 | self->_summary)) || objc_msgSend(v12, "isEqual:")) && ((v13 = v7[10], !(v13 | self->_selectedText)) || objc_msgSend(v13, "isEqual:")) && ((v14 = v7[11], !(v14 | self->_siteName)) || objc_msgSend(v14, "isEqual:")) && ((v15 = v7[12], !(v15 | self->_itemType)) || objc_msgSend(v15, "isEqual:")) && ((v16 = v7[13], !(v16 | self->_relatedURL)) || objc_msgSend(v16, "isEqual:")) && ((v17 = v7[14], !(v17 | self->_creator)) || objc_msgSend(v17, "isEqual:")) && ((v18 = v7[15], !(v18 | self->_creatorFacebookProfile)) || objc_msgSend(v18, "isEqual:")) && ((v19 = v7[16], !(v19 | self->_creatorTwitterUsername)) || objc_msgSend(v19, "isEqual:")) && ((v20 = v7[17], !(v20 | self->_twitterCard)) || objc_msgSend(v20, "isEqual:")) && *(v7 + 8) == self->_usesActivityPub && ((v21 = v7[18], !(v21 | self->_appleContentID)) || objc_msgSend(v21, "isEqual:")) && ((v22 = v7[19], !(v22 | self->_appleSummary)) || objc_msgSend(v22, "isEqual:")) && ((v23 = v7[23], !(v23 | self->_icon)) || objc_msgSend(v23, "isEqual:")) && ((v24 = v7[24], !(v24 | self->_iconMetadata)) || objc_msgSend(v24, "isEqual:")) && ((v25 = v7[21], !(v25 | self->_arAsset)) || objc_msgSend(v25, "isEqual:")) && ((v26 = v7[22], !(v26 | self->_arAssetMetadata)) || objc_msgSend(v26, "isEqual:")) && ((v27 = v7[25], !(v27 | self->_image)) || objc_msgSend(v27, "isEqual:")) && ((v28 = v7[29], !(v28 | self->_imageMetadata)) || objc_msgSend(v28, "isEqual:")) && ((v29 = v7[27], !(v29 | self->_contentImages)) || objc_msgSend(v29, "isEqual:")) && ((v30 = v7[28], !(v30 | self->_contentImagesMetadata)) || objc_msgSend(v30, "isEqual:")) && ((v31 = v7[30], !(v31 | self->_video)) || objc_msgSend(v31, "isEqual:")) && ((v32 = v7[31], !(v32 | self->_videoMetadata)) || objc_msgSend(v32, "isEqual:")) && ((v33 = v7[32], !(v33 | self->_audio)) || objc_msgSend(v33, "isEqual:")) && ((v34 = v7[33], !(v34 | self->_audioMetadata)) || objc_msgSend(v34, "isEqual:")) && ((v35 = v7[35], !(v35 | self->_icons)) || objc_msgSend(v35, "isEqual:")) && ((v36 = v7[34], !(v36 | self->_arAssets)) || objc_msgSend(v36, "isEqual:")) && ((v37 = v7[36], !(v37 | self->_images)) || objc_msgSend(v37, "isEqual:")) && ((v38 = v7[26], !(v38 | self->_alternateImages)) || objc_msgSend(v38, "isEqual:")) && ((v39 = v7[37], !(v39 | self->_availableContentImages)) || objc_msgSend(v39, "isEqual:")) && ((v40 = v7[38], !(v40 | self->_videos)) || objc_msgSend(v40, "isEqual:")) && ((v41 = v7[39], !(v41 | self->_streamingVideos)) || objc_msgSend(v41, "isEqual:")) && ((v42 = v7[40], !(v42 | self->_audios)) || objc_msgSend(v42, "isEqual:")) && ((v43 = v7[41], !(v43 | self->_associatedApplication)) || objc_msgSend(v43, "isEqual:")) && ((v44 = v7[42], !(v44 | self->_collaborationMetadata)) || objc_msgSend(v44, "isEqual:")))
      {
        v45 = v7[43];
        if (v45 | self->_specialization)
        {
          v5 = [v45 isEqual:?];
        }

        else
        {
          v5 = 1;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

+ (_BlastDoorLPLinkMetadata)metadataWithDataRepresentation:(id)representation
{
  v11[1] = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  if ([representationCopy length] <= 0xA00000)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:representationCopy error:0];
    [v5 _enableStrictSecureDecodingMode];
    [v5 setDecodingFailurePolicy:1];
    v6 = objc_opt_class();
    v7 = *MEMORY[0x277CCA308];
    v11[0] = 0;
    v8 = [v5 _bd_lp_strictlyDecodeTopLevelObjectOfClass:v6 forKey:v7 error:v11];
    v9 = v11[0];
    [v5 finishDecoding];
    if (v9)
    {
      v4 = 0;
    }

    else
    {
      v4 = v8;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x277CCA308]];
  encodedData = [v3 encodedData];

  return encodedData;
}

- (unint64_t)_encodedSize
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_alternateImages;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v14 + 1) + 8 * i) _encodedSize];
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  _encodedSize = [(_BlastDoorLPImage *)self->_icon _encodedSize];
  _encodedSize2 = [(_BlastDoorLPImage *)self->_image _encodedSize];
  _encodedSize3 = [(_BlastDoorLPVideo *)self->_video _encodedSize];
  return _encodedSize + v6 + _encodedSize2 + _encodedSize3 + [(_BlastDoorLPAudio *)self->_audio _encodedSize];
}

@end