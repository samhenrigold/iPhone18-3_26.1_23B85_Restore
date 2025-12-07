@interface TVIEIntentHandler
- (id)_handleCompletionResponseInternal:(id)internal intent:(id)intent;
- (void)_buildPlayUrlForIntent:(id)intent completion:(id)completion;
- (void)confirmPlayMedia:(id)media completion:(id)completion;
- (void)handlePlayMedia:(id)media completion:(id)completion;
@end

@implementation TVIEIntentHandler

- (void)confirmPlayMedia:(id)media completion:(id)completion
{
  completionCopy = completion;
  v6 = [[INPlayMediaIntentResponse alloc] initWithCode:1 userActivity:0];
  (*(completion + 2))(completionCopy, v6);

  v8 = sub_100001648(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_100005200();
  }
}

- (void)handlePlayMedia:(id)media completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001808;
  v7[3] = &unk_100008368;
  completionCopy = completion;
  v6 = completionCopy;
  [(TVIEIntentHandler *)self _buildPlayUrlForIntent:media completion:v7];
}

- (void)_buildPlayUrlForIntent:(id)intent completion:(id)completion
{
  intentCopy = intent;
  completionCopy = completion;
  if (_os_feature_enabled_impl())
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100001BC4;
    v17[3] = &unk_1000083B8;
    v19 = completionCopy;
    v17[4] = self;
    v18 = intentCopy;
    [_TtC18TVIntentsExtension26TVIEURLRequestFactoryProxy createRoute:@"shelves/uts.col.UpNext" completion:v17];

    v8 = v19;
  }

  else
  {
    v8 = objc_alloc_init(WLKContinueWatchingRequestOperation);
    objc_initWeak(&location, self);
    objc_initWeak(&from, v8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001E84;
    v10[3] = &unk_1000083E0;
    objc_copyWeak(&v13, &location);
    objc_copyWeak(&v14, &from);
    v11 = intentCopy;
    v12 = completionCopy;
    [v8 setCompletionBlock:v10];
    v9 = +[NSOperationQueue wlkDefaultQueue];
    [v9 addOperation:v8];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

- (id)_handleCompletionResponseInternal:(id)internal intent:(id)intent
{
  intentCopy = intent;
  v54 = intentCopy;
  if (!internal)
  {
    v37 = sub_100001648(intentCopy);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1000055CC();
    }

LABEL_51:
    contentTVAppDeeplinkURL3 = 0;
    goto LABEL_52;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [internal items];
  v6 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (!v6)
  {
LABEL_48:

LABEL_49:
    v37 = sub_100001648(v51);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100005590();
    }

    goto LABEL_51;
  }

  v7 = v6;
  v8 = *v56;
LABEL_4:
  v9 = 0;
  while (1)
  {
    if (*v56 != v8)
    {
      objc_enumerationMutation(obj);
    }

    v10 = *(*(&v55 + 1) + 8 * v9);
    movieOrShowContent = [v10 movieOrShowContent];
    contentType = [movieOrShowContent contentType];

    if (contentType != 4)
    {
      break;
    }

    movieOrShowContent2 = [v10 movieOrShowContent];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_22;
    }

    v25 = movieOrShowContent2;
    mediaContainer = [v54 mediaContainer];
    identifier = [mediaContainer identifier];
    canonicalShowID = [v25 canonicalShowID];

    v29 = [identifier isEqualToString:canonicalShowID];
    if (v29)
    {
      goto LABEL_16;
    }

LABEL_22:
    if (v7 == ++v9)
    {
      v7 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
      if (v7)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  if (contentType == 2)
  {
    mediaContainer2 = [v54 mediaContainer];
    identifier2 = [mediaContainer2 identifier];
    movieOrShowContent3 = [v10 movieOrShowContent];
    canonicalID = [movieOrShowContent3 canonicalID];
    v23 = [identifier2 isEqualToString:canonicalID];

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (contentType != 1)
    {
      goto LABEL_22;
    }

    mediaItems = [v54 mediaItems];
    firstObject = [mediaItems firstObject];
    identifier3 = [firstObject identifier];
    movieOrShowContent4 = [v10 movieOrShowContent];
    canonicalID2 = [movieOrShowContent4 canonicalID];
    v18 = [identifier3 isEqualToString:canonicalID2];

    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_16:
  playable = [v10 playable];
  playPunchoutURL = [playable playPunchoutURL];
  if (playPunchoutURL)
  {
    playable2 = playPunchoutURL;
    goto LABEL_30;
  }

  playable2 = [v10 playable];
  openPunchoutURL = [playable2 openPunchoutURL];
  if (openPunchoutURL)
  {
    goto LABEL_29;
  }

  playable3 = [v10 playable];
  tvAppDeeplinkURL = [playable3 tvAppDeeplinkURL];
  if (!tvAppDeeplinkURL)
  {
    contentTVAppDeeplinkURL = [v10 contentTVAppDeeplinkURL];

    if (contentTVAppDeeplinkURL)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

LABEL_29:
LABEL_30:

LABEL_31:
  playable4 = [v10 playable];
  playPunchoutURL2 = [playable4 playPunchoutURL];

  playable5 = [v10 playable];
  tvAppDeeplinkURL2 = [playable5 tvAppDeeplinkURL];

  if (tvAppDeeplinkURL2)
  {
    playable6 = [v10 playable];
    tvAppDeeplinkURL3 = [playable6 tvAppDeeplinkURL];
    contentTVAppDeeplinkURL3 = [WLKPlayableUtilities _punchoutURLForDirectPlayback:tvAppDeeplinkURL3 ignoreExtras:1];

    v46 = sub_100001648(v45);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1000053DC(contentTVAppDeeplinkURL3);
    }

    goto LABEL_44;
  }

  playable7 = [v10 playable];
  if (![playable7 isEntitled])
  {
LABEL_40:

    goto LABEL_41;
  }

  playable8 = [v10 playable];
  if (([playable8 isAppInstalled] & 1) == 0)
  {

    goto LABEL_40;
  }

  v49 = [playPunchoutURL2 length];

  if (v49)
  {
    contentTVAppDeeplinkURL3 = [NSURL URLWithString:playPunchoutURL2];
    v46 = sub_100001648(contentTVAppDeeplinkURL3);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_100005460();
    }

    goto LABEL_44;
  }

LABEL_41:
  contentTVAppDeeplinkURL2 = [v10 contentTVAppDeeplinkURL];

  if (!contentTVAppDeeplinkURL2)
  {

    goto LABEL_48;
  }

  contentTVAppDeeplinkURL3 = [v10 contentTVAppDeeplinkURL];
  v46 = sub_100001648(contentTVAppDeeplinkURL3);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    sub_1000054D0(contentTVAppDeeplinkURL3);
  }

LABEL_44:

  if (!contentTVAppDeeplinkURL3)
  {
    goto LABEL_49;
  }

  v37 = sub_100001648(v51);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_100005554();
  }

LABEL_52:

  return contentTVAppDeeplinkURL3;
}

@end