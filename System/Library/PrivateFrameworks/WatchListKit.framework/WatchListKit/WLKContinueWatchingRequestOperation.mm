@interface WLKContinueWatchingRequestOperation
+ (BOOL)isHeicFormatAllowed;
+ (void)donateMediaItems:(id)items;
- (WLKContinueWatchingRequestOperation)initWithQueryParameters:(id)parameters;
- (void)processResponse;
@end

@implementation WLKContinueWatchingRequestOperation

- (WLKContinueWatchingRequestOperation)initWithQueryParameters:(id)parameters
{
  parametersCopy = parameters;
  v6 = WLKIsTVApp(parametersCopy, v5);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = WLKIsTool(v6, v7) ^ 1;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:15.0];
  v10 = [WLKURLRequestProperties requestPropertiesWithEndpoint:@"shelves/uts.col.UpNext" queryParameters:parametersCopy httpMethod:0 headers:0 caller:0 timeout:v9 apiVersion:&unk_288222C08 options:v8];

  v13.receiver = self;
  v13.super_class = WLKContinueWatchingRequestOperation;
  v11 = [(WLKUTSNetworkRequestOperation *)&v13 initWithRequestProperties:v10];

  return v11;
}

+ (BOOL)isHeicFormatAllowed
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = WLKIsTVApp(v2, v3);
  }

  return v2;
}

- (void)processResponse
{
  v11 = objc_alloc_init(WLKDictionaryResponseProcessor);
  [(WLKDictionaryResponseProcessor *)v11 setObjectClass:objc_opt_class()];
  data = [(WLKNetworkRequestOperation *)self data];
  v4 = [(WLKDictionaryResponseProcessor *)v11 processResponseData:data error:0];
  [(WLKContinueWatchingRequestOperation *)self setResponse:v4];

  requestProperties = [(WLKUTSNetworkRequestOperation *)self requestProperties];
  queryParameters = [requestProperties queryParameters];

  if (![queryParameters count] && WLKIsTVApp(0, v7))
  {
    if ([(WLKNetworkRequestOperation *)self resourceFetchType]== 1)
    {
      defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
      [defaultCenter postNotificationName:@"WLKContinueWatchingRequestDidCompleteNotification" object:0];
    }

    v9 = objc_opt_class();
    items = [(WLKContinueWatchingResponse *)self->_response items];
    [v9 donateMediaItems:items];
  }
}

+ (void)donateMediaItems:(id)items
{
  v140 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v101 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v4 = MGGetFloat32Answer();
  v6 = v5;
  v7 = WLKSiriActionsLogObject(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
    *buf = 138412290;
    v136 = v8;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - UpNext items: %@", buf, 0xCu);
  }

  v131 = 0u;
  v132 = 0u;
  v129 = 0u;
  v130 = 0u;
  obj = itemsCopy;
  v9 = [obj countByEnumeratingWithState:&v129 objects:v139 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = v6 * 60.0;
    v114 = *v130;
    do
    {
      v12 = 0;
      v106 = v10;
      do
      {
        if (*v130 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v121 = *(*(&v129 + 1) + 8 * v12);
        movieOrShowContent = [v121 movieOrShowContent];
        contentType = [movieOrShowContent contentType];
        canonicalID = [movieOrShowContent canonicalID];
        title = [movieOrShowContent title];
        images = [movieOrShowContent images];
        v18 = [images artworkVariantOfType:26];
        v19 = v18;
        v124 = title;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          [movieOrShowContent images];
          v118 = v12;
          v21 = canonicalID;
          v23 = v22 = movieOrShowContent;
          v20 = [v23 artworkVariantOfType:4];

          movieOrShowContent = v22;
          canonicalID = v21;
          v12 = v118;
        }

        switch(contentType)
        {
          case 1:
            v123 = canonicalID;
            v115 = movieOrShowContent;
            v32 = 0;
            canonicalShowID = 0;
            showTitle = 0;
            v35 = 0;
            v119 = 11;
            goto LABEL_29;
          case 4:
            objc_opt_class();
            v123 = canonicalID;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v35 = 0;
              showTitle = 0;
              canonicalShowID = 0;
              v36 = 13;
              goto LABEL_26;
            }

            movieOrShowContent2 = movieOrShowContent;
            images2 = [movieOrShowContent2 images];
            v30 = [images2 artworkVariantOfType:26];
            v31 = v30;
            v108 = v20;
            if (v30)
            {
              v28 = v30;
            }

            else
            {
              [movieOrShowContent2 images];
              v40 = v39 = movieOrShowContent;
              v28 = [v40 artworkVariantOfType:17];

              movieOrShowContent = v39;
            }

            canonicalShowID = [movieOrShowContent2 canonicalShowID];
            showTitle = [movieOrShowContent2 showTitle];
            v36 = 13;
            break;
          case 2:
            v108 = v20;
            movieOrShowContent2 = [v121 movieOrShowContent];
            images3 = [movieOrShowContent2 images];
            v26 = [images3 artworkVariantOfType:26];
            v27 = v26;
            v123 = canonicalID;
            if (v26)
            {
              v28 = v26;
            }

            else
            {
              [v121 movieOrShowContent];
              v37 = v116 = movieOrShowContent;
              images4 = [v37 images];
              v28 = [images4 artworkVariantOfType:4];

              movieOrShowContent = v116;
            }

            showTitle = 0;
            canonicalShowID = 0;
            v36 = 12;
            break;
          default:
            goto LABEL_65;
        }

        v35 = v28;
        v20 = v108;
        v10 = v106;
LABEL_26:
        v41 = [canonicalShowID length];
        if (!v41 || (v41 = [showTitle length]) == 0)
        {
          v44 = WLKSiriActionsLogObject(v41);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v136 = canonicalShowID;
            v137 = 2112;
            v138 = showTitle;
            _os_log_impl(&dword_272A0F000, v44, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - Skipping donation, missing media container info. mediaContainerCanonicalId: %@, mediaContainerItemTitle: %@", buf, 0x16u);
          }

          goto LABEL_64;
        }

        v119 = v36;
        v115 = movieOrShowContent;
        v32 = 1;
LABEL_29:
        v42 = +[WLKContinueWatchingRequestOperation isHeicFormatAllowed];
        v43 = @"jpeg";
        if (v42)
        {
          v43 = @"heic";
        }

        v44 = v43;
        v112 = v35;
        v113 = canonicalShowID;
        v109 = v32;
        if (v32)
        {
          [v35 artworkSize];
          v46 = v45;
          [v35 artworkSize];
          v48 = v46 / v47;
          v49 = v20;
          v50 = v10;
          v51 = showTitle;
          v52 = canonicalShowID;
          v53 = MEMORY[0x277CD3D10];
          v54 = [v35 artworkURLForSize:v44 format:{v11, v11 * v48}];
          v55 = [v53 imageWithURL:v54 width:60.0 height:v48 * 60.0];

          v56 = objc_alloc(MEMORY[0x277CD3DB8]);
          v57 = v52;
          showTitle = v51;
          v10 = v50;
          v20 = v49;
          v58 = [v56 initWithIdentifier:v57 title:showTitle type:v119 artwork:v55];
          v59 = 0;
LABEL_38:

          canonicalShowID = v113;
          goto LABEL_40;
        }

        v60 = [v123 length];
        if (v60)
        {
          v60 = [v124 length];
          if (v60)
          {
            [v20 artworkSize];
            v62 = v61;
            [v20 artworkSize];
            v64 = v62 / v63;
            v65 = MEMORY[0x277CD3D10];
            v66 = [v20 artworkURLForSize:v44 format:{v11, v11 * v64}];
            v55 = [v65 imageWithURL:v66 width:60.0 height:v64 * 60.0];

            v59 = [objc_alloc(MEMORY[0x277CD3DB8]) initWithIdentifier:v123 title:v124 type:v119 artwork:v55];
            v58 = 0;
            goto LABEL_38;
          }
        }

        v59 = 0;
        v58 = 0;
LABEL_40:
        v117 = v58;
        v111 = v59;
        if (!(v59 | v58))
        {
          v91 = WLKSiriActionsLogObject(v60);
          v35 = v112;
          v110 = v91;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v136 = v121;
            _os_log_impl(&dword_272A0F000, v91, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - Skipping donation, no mediaItem or container %@", buf, 0xCu);
          }

          movieOrShowContent = v115;
          goto LABEL_63;
        }

        v67 = 0;
        v103 = v44;
        if (v59 && v109 != 1)
        {
          v134 = v59;
          v67 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
        }

        v104 = showTitle;
        v68 = objc_alloc(MEMORY[0x277CD3EC0]);
        playable = [v121 playable];
        playEvent = [playable playEvent];
        if (playEvent)
        {
          v71 = MEMORY[0x277CBEC38];
        }

        else
        {
          v71 = MEMORY[0x277CBEC28];
        }

        v110 = v67;
        v72 = [v68 initWithMediaItems:v67 mediaContainer:v117 playShuffled:MEMORY[0x277CBEC28] playbackRepeatMode:1 resumePlayback:v71 playbackQueueLocation:1 playbackSpeed:&unk_288222C20 mediaSearch:0];

        siriActionsExpirationEpochMillis = [v121 siriActionsExpirationEpochMillis];
        [siriActionsExpirationEpochMillis floatValue];
        v75 = v74 / 1000.0;

        [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v75];
        v102 = v107 = v72;
        [v72 setExpirationDate:?];
        siriActionsCategories = [v121 siriActionsCategories];
        v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v78 = siriActionsCategories;
        v79 = [v78 countByEnumeratingWithState:&v125 objects:v133 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v126;
          do
          {
            for (i = 0; i != v80; ++i)
            {
              if (*v126 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v83 = [objc_alloc(MEMORY[0x277CD4188]) initWithVocabularyIdentifier:*(*(&v125 + 1) + 8 * i) spokenPhrase:@"TV" pronunciationHint:@"TV"];
              [v77 addObject:v83];
            }

            v80 = [v78 countByEnumeratingWithState:&v125 objects:v133 count:16];
          }

          while (v80);
        }

        v120 = v12;
        v84 = v20;

        [v107 setBuckets:v77];
        v85 = WLKTVAppBundleID();
        [v107 _setLaunchId:v85];
        [v107 _setExtensionBundleId:0];
        playable2 = [v121 playable];
        channelDetails = [playable2 channelDetails];
        appBundleIDs = [channelDetails appBundleIDs];
        firstObject = [appBundleIDs firstObject];

        if (![firstObject length])
        {
          goto LABEL_61;
        }

        channelDetails2 = [playable2 channelDetails];
        if ([channelDetails2 isiTunes])
        {

LABEL_61:
          v93 = v85;

          firstObject = v93;
          goto LABEL_62;
        }

        channelDetails3 = [playable2 channelDetails];
        isFirstParty = [channelDetails3 isFirstParty];

        if (isFirstParty)
        {
          goto LABEL_61;
        }

LABEL_62:
        v20 = v84;
        [v107 setProxiedBundleIdentifier:firstObject];
        [v101 addObject:v107];

        v10 = v106;
        movieOrShowContent = v115;
        v12 = v120;
        v35 = v112;
        canonicalShowID = v113;
        v44 = v103;
        showTitle = v104;
LABEL_63:

LABEL_64:
        canonicalID = v123;
LABEL_65:

        ++v12;
      }

      while (v12 != v10);
      v10 = [obj countByEnumeratingWithState:&v129 objects:v139 count:16];
    }

    while (v10);
  }

  mEMORY[0x277CD42A0] = [MEMORY[0x277CD42A0] sharedManager];
  [mEMORY[0x277CD42A0] setPredictionMode:1 forType:12];

  mEMORY[0x277CD42A0]2 = [MEMORY[0x277CD42A0] sharedManager];
  [mEMORY[0x277CD42A0]2 setPredictionMode:1 forType:13];

  mEMORY[0x277CD42A0]3 = [MEMORY[0x277CD42A0] sharedManager];
  [mEMORY[0x277CD42A0]3 setPredictionMode:1 forType:11];

  mEMORY[0x277CD42A0]4 = [MEMORY[0x277CD42A0] sharedManager];
  v98 = [v101 copy];
  [mEMORY[0x277CD42A0]4 setSuggestedMediaIntents:v98];

  v100 = WLKSiriActionsLogObject(v99);
  if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v136 = v101;
    _os_log_impl(&dword_272A0F000, v100, OS_LOG_TYPE_DEFAULT, "WLKContinueWatchingResponse - Donated media intents: %@", buf, 0xCu);
  }
}

@end