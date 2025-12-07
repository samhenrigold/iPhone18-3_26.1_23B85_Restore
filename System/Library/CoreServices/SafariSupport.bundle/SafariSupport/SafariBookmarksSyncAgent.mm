@interface SafariBookmarksSyncAgent
- (SafariBookmarksSyncAgent)init;
- (id)_pushTopics;
- (void)_setUpPushConnection;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)setUsesOpportunisticPushTopic:(BOOL)topic;
- (void)updatePushTopicSubscriptions;
@end

@implementation SafariBookmarksSyncAgent

- (SafariBookmarksSyncAgent)init
{
  v6.receiver = self;
  v6.super_class = SafariBookmarksSyncAgent;
  v2 = [(SafariSyncController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_usesOpportunisticPushTopic = 1;
    [(SafariBookmarksSyncAgent *)v2 _setUpPushConnection];
    v4 = v3;
  }

  return v3;
}

- (void)setUsesOpportunisticPushTopic:(BOOL)topic
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100025430;
  v3[3] = &unk_100131D10;
  topicCopy = topic;
  v3[4] = self;
  dispatch_async(&_dispatch_main_q, v3);
}

- (void)updatePushTopicSubscriptions
{
  isSyncEnabled = [(SafariSyncController *)self isSyncEnabled];
  v4 = isSyncEnabled;
  v6 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(isSyncEnabled, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v18[0] = 67109120;
    v18[1] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Updating push topic subscriptions with sync enabled = %d", v18, 8u);
  }

  _pushTopics = [(SafariBookmarksSyncAgent *)self _pushTopics];
  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = _pushTopics;
  }

  if (v4)
  {
    v10 = _pushTopics;
  }

  else
  {
    v10 = 0;
  }

  usesOpportunisticPushTopic = self->_usesOpportunisticPushTopic;
  v12 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(_pushTopics, v8);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (usesOpportunisticPushTopic)
  {
    if (v13)
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Using opportunistic push topic", v18, 2u);
    }

    pushConnection = self->_pushConnection;
    v15 = 0;
    v16 = v9;
    v17 = v10;
  }

  else
  {
    if (v13)
    {
      LOWORD(v18[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Using normal push topic", v18, 2u);
    }

    pushConnection = self->_pushConnection;
    v15 = v10;
    v16 = v9;
    v17 = 0;
  }

  [(APSConnection *)pushConnection setEnabledTopics:v15 ignoredTopics:v16 opportunisticTopics:v17];
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  messageCopy = message;
  topic = [messageCopy topic];
  userInfo = [messageCopy userInfo];

  [(SafariSyncController *)self didReceivePushNotificationWithTopic:topic userInfo:userInfo];
}

- (void)_setUpPushConnection
{
  if (!self->_pushConnection)
  {
    v3 = [CloudTabGroupSyncCoordinator _bookmarksLog]_0(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Set up push connection", v7, 2u);
    }

    v4 = [APSConnection alloc];
    v5 = [v4 initWithEnvironmentName:APSEnvironmentProduction namedDelegatePort:@"com.apple.SafariBookmarksSyncAgent.Push" queue:&_dispatch_main_q];
    pushConnection = self->_pushConnection;
    self->_pushConnection = v5;

    [(APSConnection *)self->_pushConnection setDelegate:self];
    [(SafariBookmarksSyncAgent *)self updatePushTopicSubscriptions];
  }
}

- (id)_pushTopics
{
  v2 = [@"com.apple.icloud-container." stringByAppendingString:WBSCloudBookmarkContainerIdentifier];
  v3 = [@"com.apple.icloud-container." stringByAppendingString:{WBSCloudTabManateeContainerIdentifier, v2}];
  v7[1] = v3;
  v4 = [@"com.apple.icloud-container." stringByAppendingString:WBSCloudSettingContainerIdentifier];
  v7[2] = v4;
  v5 = [NSArray arrayWithObjects:v7 count:3];

  return v5;
}

@end