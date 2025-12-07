@interface CPLCloudKitPushNotificationCenter
- (CPLCloudKitCoordinator)delegate;
- (CPLCloudKitPushNotificationCenter)init;
- (void)_setPushRegistrationStatus:(id)status error:(id)error;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)getStatusDictionaryWithCompletionHandler:(id)handler;
- (void)getStatusWithCompletionHandler:(id)handler;
- (void)setClientIsForeground:(BOOL)foreground;
- (void)startWaitingForPushNotificationsForContainer:(id)container;
- (void)stopWaitingForPushNotifications;
- (void)unregisterFromPushNotifications;
@end

@implementation CPLCloudKitPushNotificationCenter

- (CPLCloudKitPushNotificationCenter)init
{
  v6.receiver = self;
  v6.super_class = CPLCloudKitPushNotificationCenter;
  v2 = [(CPLCloudKitPushNotificationCenter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    pushRegistrationStatus = v2->_pushRegistrationStatus;
    v2->_pushRegistrationStatus = @"not registered";
  }

  return v3;
}

- (void)setClientIsForeground:(BOOL)foreground
{
  if (self->_clientIsForeground != foreground)
  {
    foregroundCopy = foreground;
    pushConnection = self->_pushConnection;
    p_pushConnection = &self->_pushConnection;
    v6 = pushConnection;
    *(p_pushConnection + 89) = foregroundCopy;
    if (foregroundCopy)
    {
      if (v6)
      {
        if (self->_pushEnvironment)
        {
          sub_10018437C(p_pushConnection, self, v6);
        }
      }
    }

    else if (v6 && self->_pushEnvironment)
    {
      sub_100184294(p_pushConnection, self, v6);
    }
  }
}

- (void)startWaitingForPushNotificationsForContainer:(id)container
{
  self->_stoppedWaitingForPush = 0;
  containerCopy = container;
  [(CPLCloudKitPushNotificationCenter *)self _setPushRegistrationStatus:@"registering" error:0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100009B68;
  v6[3] = &unk_100271D90;
  v6[4] = self;
  v6[5] = a2;
  [containerCopy serverPreferredPushEnvironmentWithCompletionHandler:v6];
}

- (void)stopWaitingForPushNotifications
{
  dispatch_assert_queue_V2(self->_queue);
  pushConnection = self->_pushConnection;
  self->_stoppedWaitingForPush = 1;
  if (pushConnection)
  {
    sub_100184930(&self->_pushConnection, pushConnection, self);
  }
}

- (void)unregisterFromPushNotifications
{
  objc_storeStrong(&self->_pushEnvironment, APSEnvironmentProduction);
  v3 = [[APSConnection alloc] initWithEnvironmentName:self->_pushEnvironment namedDelegatePort:@"com.apple.photos.cloud.pushnotification" queue:self->_queue];
  pushConnection = self->_pushConnection;
  self->_pushConnection = v3;

  [(APSConnection *)self->_pushConnection setDelegate:self];
  [(APSConnection *)self->_pushConnection _setEnabledTopics:&__NSArray0__struct];
  self->_ignorePushNotifications = 1;

  [(CPLCloudKitPushNotificationCenter *)self stopWaitingForPushNotifications];
}

- (void)_setPushRegistrationStatus:(id)status error:(id)error
{
  errorCopy = error;
  v7 = [status copy];
  pushRegistrationStatus = self->_pushRegistrationStatus;
  self->_pushRegistrationStatus = v7;

  v9 = [errorCopy copy];
  pushRegistrationError = self->_pushRegistrationError;
  self->_pushRegistrationError = v9;
}

- (void)getStatusWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A188;
  v7[3] = &unk_100271E08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [WeakRetained getLastClientServedWithAPushNotificationWithCompletionHandler:v7];
}

- (void)getStatusDictionaryWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000A8C4;
  v7[3] = &unk_100271E08;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [WeakRetained getLastClientServedWithAPushNotificationWithCompletionHandler:v7];
}

- (CPLCloudKitCoordinator)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  connectionCopy = connection;
  tokenCopy = token;
  v8 = tokenCopy;
  if (self->_pushConnection == connectionCopy && (_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_100009A78(tokenCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_1000033B4();
      sub_10000AF80();
      _os_log_impl(v10, v11, v12, v13, v14, 0x16u);
    }
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  v9 = messageCopy;
  if (self->_ignorePushNotifications)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100009A78(messageCopy);
      if (sub_1000033C0(v10))
      {
        topic = [v9 topic];
        sub_10000AF90();
        v12 = "Received unexpected push notification for %@";
        v13 = topic2;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v13, v14, v12, v35, 0xCu);
LABEL_36:

        goto LABEL_37;
      }

      goto LABEL_37;
    }

    goto LABEL_38;
  }

  if (self->_pushConnection == connectionCopy)
  {
    topic2 = [messageCopy topic];
    userInfo = [v9 userInfo];
    topic = userInfo;
    if ((_CPLSilentLogging & 1) == 0)
    {
      v16 = sub_100009A78(userInfo);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *v35 = 138412802;
        *&v35[4] = topic2;
        sub_1000033B4();
        *&v35[14] = topic;
        v36 = v17;
        v37 = connectionCopy;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Received incoming message for topic %@ info %@ for APSConnection %@", v35, 0x20u);
      }
    }

    v18 = [NSDate date:*v35];
    lastPushNotificationDate = self->_lastPushNotificationDate;
    self->_lastPushNotificationDate = v18;

    topic3 = [v9 topic];
    lastPushTopic = self->_lastPushTopic;
    self->_lastPushTopic = topic3;

    if (self->_lastStartOfPushNotificationBurst && ([(NSDate *)self->_lastPushNotificationDate timeIntervalSinceDate:?], v22 <= 10.0) && [(NSDate *)self->_lastStartOfPushNotificationBurst compare:self->_lastPushNotificationDate]!= 1)
    {
      v23 = self->_countOfPushNotificationBurst + 1;
    }

    else
    {
      objc_storeStrong(&self->_lastStartOfPushNotificationBurst, self->_lastPushNotificationDate);
      v23 = 1;
    }

    self->_countOfPushNotificationBurst = v23;
    lastPushNotification = self->_lastPushNotification;
    self->_lastPushNotification = 0;

    if (topic)
    {
      v25 = [CKNotification notificationFromRemoteNotificationDictionary:topic];
      v26 = self->_lastPushNotification;
      self->_lastPushNotification = v25;
    }

    v27 = self->_lastPushNotification;
    if (v27)
    {
      v28 = objc_opt_class();
      v27 = NSStringFromClass(v28);
      v29 = v27;
      if (!topic2)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = @"push notification of unknown kind";
      if (!topic2)
      {
        goto LABEL_31;
      }
    }

    v27 = [(NSArray *)self->_pushTopics containsObject:topic2];
    if (v27)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v30 = sub_100009A78(v27);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          userInfo2 = [v9 userInfo];
          *v35 = 138412546;
          *&v35[4] = v29;
          sub_1000033B4();
          *&v35[14] = v32;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "Received %@ %@", v35, 0x16u);
        }
      }

      if (self->_lastPushNotification)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained center:self didReceivePushNotification:self->_lastPushNotification];
      }

      else
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_35;
        }

        WeakRetained = sub_100009A78(v27);
        if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
        {
          userInfo3 = [v9 userInfo];
          sub_10000AF90();
          _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_ERROR, "Invalid CloudKit push notification %@", v35, 0xCu);
        }
      }

      goto LABEL_34;
    }

LABEL_31:
    if (_CPLSilentLogging)
    {
LABEL_35:

      goto LABEL_36;
    }

    WeakRetained = sub_100009A78(v27);
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 138412546;
      *&v35[4] = v29;
      sub_1000033B4();
      *&v35[14] = topic2;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Discarding unexpected %@ with topic %@", v35, 0x16u);
    }

LABEL_34:

    goto LABEL_35;
  }

  if ((_CPLSilentLogging & 1) == 0)
  {
    topic2 = sub_100009A78(messageCopy);
    if (os_log_type_enabled(topic2, OS_LOG_TYPE_DEFAULT))
    {
      topic = [v9 topic];
      sub_10000AF90();
      v12 = "Discarding unexpected push notification with topic %@";
      v13 = topic2;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }

LABEL_37:
  }

LABEL_38:
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  connectionCopy = connection;
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v14 = identifierCopy;
  if (self->_pushConnection == connectionCopy && (_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_100009A78(identifierCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138413058;
      v18 = tokenCopy;
      sub_1000033B4();
      v19 = topicCopy;
      v20 = v16;
      v21 = v14;
      v22 = v16;
      v23 = connectionCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Received token %@ for topic %@ with identifier %@ for APSConnection %@", &v17, 0x2Au);
    }
  }
}

@end