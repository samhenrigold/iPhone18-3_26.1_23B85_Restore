@interface MPRecentsContactHeaderViewController
- (MPRecentsContactHeaderViewController)init;
- (id)generateDetailsView;
- (id)rttConversationForUUID:(id)d;
- (int64_t)recentCallTTYType;
- (void)loadLayoutConstraints;
- (void)loadRTTConversations;
- (void)loadView;
- (void)presentConversationForUUID:(id)d;
@end

@implementation MPRecentsContactHeaderViewController

- (MPRecentsContactHeaderViewController)init
{
  v7.receiver = self;
  v7.super_class = MPRecentsContactHeaderViewController;
  v2 = [(MPRecentsContactHeaderViewController *)&v7 initWithNibName:0 bundle:0];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.mobilephone.rttConversations", v3);
    rttConversationsQueue = v2->_rttConversationsQueue;
    v2->_rttConversationsQueue = v4;
  }

  return v2;
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = MPRecentsContactHeaderViewController;
  [(MPRecentsContactHeaderViewController *)&v5 loadView];
  [(MPRecentsContactHeaderViewController *)self loadRTTConversations];
  view = [(MPRecentsContactHeaderViewController *)self view];
  generateDetailsView = [(MPRecentsContactHeaderViewController *)self generateDetailsView];
  [generateDetailsView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:generateDetailsView];
  [(MPRecentsContactHeaderViewController *)self setDetailsView:generateDetailsView];
  [(MPRecentsContactHeaderViewController *)self loadLayoutConstraints];
}

- (void)loadLayoutConstraints
{
  detailsView = [(MPRecentsContactHeaderViewController *)self detailsView];
  view = [(MPRecentsContactHeaderViewController *)self view];
  widthAnchor = [detailsView widthAnchor];
  widthAnchor2 = [view widthAnchor];
  v6 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v6 setActive:1];

  topAnchor = [detailsView topAnchor];
  topAnchor2 = [view topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  bottomAnchor = [detailsView bottomAnchor];
  bottomAnchor2 = [view bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v12 setActive:1];
}

- (id)generateDetailsView
{
  v3 = [[PHRecentCallDetailsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(PHRecentCallDetailsView *)v3 setDelegate:self];
  recentCall = [(MPRecentsContactHeaderViewController *)self recentCall];
  [(PHRecentCallDetailsView *)v3 setRecentCall:recentCall];

  return v3;
}

- (void)loadRTTConversations
{
  v3 = PHDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting loadRTTConversations", buf, 2u);
  }

  v5 = RTTUIUtilitiesClass(v4);
  if (v5)
  {
    v6 = v5;
    objc_initWeak(buf, self);
    rttConversationsQueue = self->_rttConversationsQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke;
    v9[3] = &unk_100285198;
    objc_copyWeak(v10, buf);
    v10[1] = v6;
    dispatch_async(rttConversationsQueue, v9);
    objc_destroyWeak(v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = PHDefaultLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because we could not find RTTUIUtilities", buf, 2u);
    }
  }
}

void __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  v2 = v1 == 0;

  if (v2)
  {
    v7 = PHDefaultLog(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because MPRecentsContactHeaderViewController was deallocated before starting", buf, 2u);
    }
  }

  else
  {
    v17 = +[NSMutableDictionary dictionary];
    v4 = objc_loadWeakRetained(&to);
    v5 = [v4 recentCall];
    v6 = [v5 callOccurrences];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v8)
    {
      v9 = *v23;
      v10 = kCHCallOccurrenceUniqueIdKey;
      do
      {
        v11 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v22 + 1) + 8 * v11) objectForKeyedSubscript:{v10, v17}];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [*(a1 + 40) sharedUtilityProvider];
            v15 = [v14 conversationForCallUID:v13];

            if (v15)
            {
              [v17 setObject:v15 forKeyedSubscript:v13];
            }
          }

          v11 = v11 + 1;
        }

        while (v8 != v11);
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v8);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke_63;
    block[3] = &unk_100285170;
    objc_copyWeak(&v21, (a1 + 32));
    v20 = v17;
    v16 = v17;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&to);
}

void __60__MPRecentsContactHeaderViewController_loadRTTConversations__block_invoke_63(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = PHDefaultLog([WeakRetained setRttConversations:*(a1 + 32)]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successfully finished loadRTTConversations", buf, 2u);
    }

    v6 = PHDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Reloading conversation list", v9, 2u);
    }

    v7 = [v3 detailsView];
    [v7 reloadCallOccurences];
  }

  else
  {
    v7 = PHDefaultLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Stopped loadRTTConversations because MPRecentsContactHeaderViewController was deallocated when trying to write rttConversations", v8, 2u);
    }
  }
}

- (int64_t)recentCallTTYType
{
  recentCall = [(MPRecentsContactHeaderViewController *)self recentCall];
  ttyType = [recentCall ttyType];

  return ttyType;
}

- (id)rttConversationForUUID:(id)d
{
  dCopy = d;
  rttConversations = [(MPRecentsContactHeaderViewController *)self rttConversations];
  v6 = [rttConversations objectForKey:dCopy];

  return v6;
}

- (void)presentConversationForUUID:(id)d
{
  dCopy = d;
  v5 = RTTUIConversationViewControllerClass(dCopy);
  if (v5)
  {
    v6 = v5;
    v7 = [(MPRecentsContactHeaderViewController *)self rttConversationForUUID:dCopy];
    if (v7)
    {
      v8 = [v6 viewControllerForConversation:v7];
      navigationController = [(MPRecentsContactHeaderViewController *)self navigationController];
      [navigationController pushViewController:v8 animated:1];
    }

    else
    {
      v10 = PHDefaultLog(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [MPRecentsContactHeaderViewController presentConversationForUUID:v10];
      }
    }
  }
}

@end