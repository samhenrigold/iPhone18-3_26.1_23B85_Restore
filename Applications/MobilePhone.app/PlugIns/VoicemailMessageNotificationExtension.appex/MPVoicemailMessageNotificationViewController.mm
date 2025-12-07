@interface MPVoicemailMessageNotificationViewController
- (CGRect)mediaPlayPauseButtonFrame;
- (MPVoicemailMessageNotificationViewController)init;
- (id)listenForVoicemailChangesWithBlock:(id)block;
- (id)playerControlsView;
- (void)dealloc;
- (void)didReceiveNotification:(id)notification;
- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler;
- (void)mediaPause;
- (void)mediaPlay;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playerController:(id)controller didChangeToCurrentTime:(float)time;
- (void)setPlaybackMessageWithID:(id)d;
- (void)viewDidLoad;
@end

@implementation MPVoicemailMessageNotificationViewController

- (MPVoicemailMessageNotificationViewController)init
{
  v3 = [CNContactStore authorizationStatusForEntityType:0];
  if (v3 == CNAuthorizationStatusAuthorized)
  {
    v4 = objc_alloc_init(CNContactStore);
    self = [(VMMessageViewController *)self initWithContactStore:v4];
  }

  else
  {
    v4 = PHDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10005FB7C();
    }
  }

  return self;
}

- (id)playerControlsView
{
  playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
  playerControlsView = [playerControlsViewController playerControlsView];

  return playerControlsView;
}

- (void)dealloc
{
  playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
  playerControlsView = [playerControlsViewController playerControlsView];

  v5 = NSStringFromSelector("state");
  [playerControlsView removeObserver:self forKeyPath:v5 context:&off_1000897A8];

  v6.receiver = self;
  v6.super_class = MPVoicemailMessageNotificationViewController;
  [(VMMessageViewController *)&v6 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  v11 = PHDefaultLog(objectCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v21 = 138412546;
    v22 = pathCopy;
    v23 = 2112;
    v24 = objectCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received a key-value observing notification for key path (%@) object (%@).", &v21, 0x16u);
  }

  if (pathCopy)
  {
    if (context == &off_1000897A8)
    {
      v12 = [pathCopy length];
      if (objectCopy)
      {
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = objectCopy;
            playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
            playerControlsView = [playerControlsViewController playerControlsView];
            v16 = [v13 isEqual:playerControlsView];

            if (!v16)
            {
              goto LABEL_16;
            }

            v17 = NSStringFromSelector("state");
            v18 = [pathCopy isEqualToString:v17];

            if (!v18)
            {
              goto LABEL_16;
            }

            state = [v13 state];
            if (state != 2)
            {
              if (state == 1)
              {
                extensionContext = [(MPVoicemailMessageNotificationViewController *)self extensionContext];
                [extensionContext mediaPlayingStarted];
                goto LABEL_15;
              }

              if (state)
              {
LABEL_16:

                goto LABEL_17;
              }
            }

            extensionContext = [(MPVoicemailMessageNotificationViewController *)self extensionContext];
            [extensionContext mediaPlayingPaused];
LABEL_15:

            goto LABEL_16;
          }
        }
      }
    }
  }

LABEL_17:
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = MPVoicemailMessageNotificationViewController;
  [(VMMessageViewController *)&v9 viewDidLoad];
  playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
  playerControlsView = [playerControlsViewController playerControlsView];

  playerControlsViewController2 = [(VMMessageViewController *)self playerControlsViewController];
  playerController = [playerControlsViewController2 playerController];
  [playerController setDelegate:self];

  [playerControlsView setStyle:1];
  playPauseButton = [playerControlsView playPauseButton];
  [playPauseButton setHidden:1];

  v8 = NSStringFromSelector("state");
  [playerControlsView addObserver:self forKeyPath:v8 options:0 context:&off_1000897A8];
}

- (void)playerController:(id)controller didChangeToCurrentTime:(float)time
{
  playerControlsView = [(MPVoicemailMessageNotificationViewController *)self playerControlsView];
  timeCopy = time;
  [playerControlsView setElapsedTime:1 animated:timeCopy];

  voicemailMessage = [(VMMessageViewController *)self voicemailMessage];
  v9 = [voicemailMessage shouldMarkAsReadForPlaybackCurrentTime:timeCopy];
  if (v9)
  {
    v10 = PHDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = voicemailMessage;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Marking current voicemail as read %@", buf, 0xCu);
    }

    v11 = +[NotificationApplicationServices shared];
    voicemailManager = [v11 voicemailManager];
    v14 = voicemailMessage;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    [voicemailManager markVoicemailsAsRead:v13];
  }
}

- (void)didReceiveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = PHDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received notification (%@).", &v17, 0xCu);
  }

  request = [(MPMessageID *)notificationCopy request];
  content = [request content];
  userInfo = [content userInfo];

  v9 = [userInfo objectForKeyedSubscript:@"VMVoicemailIdentifier"];
  v10 = [userInfo objectForKeyedSubscript:@"voicemailRecordUUID"];
  v11 = PHDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Retrieving voicemail message matching the specified identifier (%@).", &v17, 0xCu);
  }

  if (v9)
  {
    if (v10)
    {
      v12 = [[NSUUID alloc] initWithUUIDString:v10];
      v13 = [[MPMessageID alloc] initWithUuid:v12];
    }

    else
    {
      v14 = [[MPMessageID alloc] initWithValue:[(MPMessageID *)v9 intValue]];
      v13 = v14;
    }

    v15 = PHDefaultLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      voicemailManager = [(VMMessageViewController *)self voicemailManager];
      v17 = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = voicemailManager;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fetching voicemail for messageID (%@) using manager %@.", &v17, 0x16u);
    }

    [(MPVoicemailMessageNotificationViewController *)self setPlaybackMessageWithID:v13];
  }
}

- (void)setPlaybackMessageWithID:(id)d
{
  dCopy = d;
  objc_initWeak(&location, self);
  voicemailManager = [(VMMessageViewController *)self voicemailManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100004D4C;
  v7[3] = &unk_100089808;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v6 = dCopy;
  v8 = v6;
  [voicemailManager voicemailWithIdentifier:v6 completion:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)didReceiveNotificationResponse:(id)response completionHandler:(id)handler
{
  responseCopy = response;
  handlerCopy = handler;
  v8 = PHDefaultLog(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = responseCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Received notification response (%@).", buf, 0xCu);
  }

  actionIdentifier = [responseCopy actionIdentifier];
  v10 = [actionIdentifier length];
  v11 = PHDefaultLog(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      *buf = 138412290;
      v33 = actionIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Executing action matching the specified identifier (%@).", buf, 0xCu);
    }

    if ([actionIdentifier isEqualToString:@"MPCallBulletinBoardActionIdentifier"])
    {
      notification = [responseCopy notification];
      request = [notification request];
      content = [request content];
      userInfo = [content userInfo];

      v17 = [userInfo objectForKeyedSubscript:@"TUDialRequestURL"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v19 = v17;
        v20 = PHDefaultLog(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v33 = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Constructing a URL from the specified string (%@).", buf, 0xCu);
        }

        v21 = [NSURL URLWithString:v19];
        v22 = PHDefaultLog(v21);
        v23 = v22;
        if (v21)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v33 = v21;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Initiating outgoing call with the specified URL (%@).", buf, 0xCu);
          }

          extensionContext = [(MPVoicemailMessageNotificationViewController *)self extensionContext];
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10000557C;
          v29[3] = &unk_100089830;
          v30 = handlerCopy;
          [extensionContext openURL:v21 completionHandler:v29];

          v23 = v30;
        }

        else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          sub_10005FC44();
        }
      }

      else
      {
        v19 = PHDefaultLog(isKindOfClass);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10005FBBC();
        }
      }

LABEL_27:
      goto LABEL_28;
    }

    if ([actionIdentifier isEqualToString:@"MPVoicemailDeleteMessageBulletinBoardActionIdentifier"])
    {
      userInfo = [(VMMessageViewController *)self voicemailMessage];
      v25 = PHDefaultLog(userInfo);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        identifier = [userInfo identifier];
        *buf = 134217984;
        v33 = identifier;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Trashing voicemail message matching the specified identifier (%lu).", buf, 0xCu);
      }

      voicemailManager = [(VMMessageViewController *)self voicemailManager];
      v31 = userInfo;
      v28 = [NSArray arrayWithObjects:&v31 count:1];
      [voicemailManager trashVoicemails:v28];

      (*(handlerCopy + 2))(handlerCopy, 1);
      goto LABEL_27;
    }
  }

  else
  {
    if (v12)
    {
      *buf = 138412290;
      v33 = actionIdentifier;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Received notification response contains an empty or nil action identifier (%@).", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, 1);
  }

LABEL_28:
}

- (CGRect)mediaPlayPauseButtonFrame
{
  playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
  playerControlsView = [playerControlsViewController playerControlsView];
  playPauseButton = [playerControlsView playPauseButton];

  if (playPauseButton)
  {
    view = [(MPVoicemailMessageNotificationViewController *)self view];
    imageView = [playPauseButton imageView];
    [imageView frame];
    [view convertRect:playPauseButton fromView:?];
    x = v9;
    y = v11;
    width = v13;
    height = v15;
  }

  else
  {
    v17 = PHDefaultLog(v6);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10005FCB8();
    }

    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v18 = x;
  v19 = y;
  v20 = width;
  v21 = height;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (void)mediaPlay
{
  playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
  [playerControlsViewController play];
}

- (void)mediaPause
{
  playerControlsViewController = [(VMMessageViewController *)self playerControlsViewController];
  [playerControlsViewController pause];
}

- (id)listenForVoicemailChangesWithBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000371F8(sub_1000374E8, v5, v14);

  v7 = v15;
  if (v15)
  {
    v8 = sub_1000184C8(v14, v15);
    v9 = *(v7 - 8);
    __chkstk_darwin(v8, v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_100060E0C();
    (*(v9 + 8))(v11, v7);
    sub_100018230(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end