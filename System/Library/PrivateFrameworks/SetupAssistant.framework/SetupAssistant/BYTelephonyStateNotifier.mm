@interface BYTelephonyStateNotifier
+ (unint64_t)retrieveSIMUnlockStateFromToken:(int)token;
- (BYTelephonyStateNotifier)initWithNotificationQueue:(id)queue notificationBlock:(id)block;
- (id)initForNotifying;
- (unint64_t)currentSIMUnlockState;
- (void)_beginObservingWithNotificationQueue:(id)queue notificationBlock:(id)block;
- (void)_endObservingState;
- (void)dealloc;
- (void)notifySIMUnlockStateChangedTo:(unint64_t)to;
@end

@implementation BYTelephonyStateNotifier

- (BYTelephonyStateNotifier)initWithNotificationQueue:(id)queue notificationBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v11.receiver = self;
  v11.super_class = BYTelephonyStateNotifier;
  v8 = [(BYTelephonyStateNotifier *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_simUnlockNotificationToken = -1;
    if (queueCopy)
    {
      if (blockCopy)
      {
        [(BYTelephonyStateNotifier *)v8 _beginObservingWithNotificationQueue:queueCopy notificationBlock:blockCopy];
      }
    }
  }

  return v9;
}

- (id)initForNotifying
{
  v6.receiver = self;
  v6.super_class = BYTelephonyStateNotifier;
  v2 = [(BYTelephonyStateNotifier *)&v6 init];
  if (v2)
  {
    v3 = notify_register_check("com.apple.purplebuddy.simUnlockStateChanged", &v2->_simUnlockNotificationToken);
    if (v3)
    {
      v4 = _BYLoggingFacility(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        [BYTelephonyStateNotifier initForNotifying];
      }

      v2->_simUnlockNotificationToken = -1;
    }
  }

  return v2;
}

- (void)dealloc
{
  [(BYTelephonyStateNotifier *)self _endObservingState];
  v3.receiver = self;
  v3.super_class = BYTelephonyStateNotifier;
  [(BYTelephonyStateNotifier *)&v3 dealloc];
}

- (unint64_t)currentSIMUnlockState
{
  v3 = objc_opt_class();
  simUnlockNotificationToken = [(BYTelephonyStateNotifier *)self simUnlockNotificationToken];

  return [v3 retrieveSIMUnlockStateFromToken:simUnlockNotificationToken];
}

- (void)notifySIMUnlockStateChangedTo:(unint64_t)to
{
  is_valid_token = notify_is_valid_token([(BYTelephonyStateNotifier *)self simUnlockNotificationToken]);
  v6 = is_valid_token;
  v7 = _BYLoggingFacility(is_valid_token);
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:v8];
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:v8];
  }

  v9 = notify_set_state([(BYTelephonyStateNotifier *)self simUnlockNotificationToken], to);
  if (v9)
  {
    v10 = _BYLoggingFacility(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:];
    }
  }

  v11 = notify_post("com.apple.purplebuddy.simUnlockStateChanged");
  if (v11)
  {
    v8 = _BYLoggingFacility(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier notifySIMUnlockStateChangedTo:];
    }

LABEL_13:
  }
}

- (void)_beginObservingWithNotificationQueue:(id)queue notificationBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __83__BYTelephonyStateNotifier__beginObservingWithNotificationQueue_notificationBlock___block_invoke;
  v10[3] = &unk_1E7D03B80;
  v10[4] = self;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = notify_register_dispatch("com.apple.purplebuddy.simUnlockStateChanged", &self->_simUnlockNotificationToken, queue, v10);
  if (v8)
  {
    v9 = _BYLoggingFacility(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier initForNotifying];
    }
  }
}

uint64_t __83__BYTelephonyStateNotifier__beginObservingWithNotificationQueue_notificationBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  [objc_opt_class() retrieveSIMUnlockStateFromToken:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_endObservingState
{
  if (notify_is_valid_token([(BYTelephonyStateNotifier *)self simUnlockNotificationToken]))
  {
    notify_cancel([(BYTelephonyStateNotifier *)self simUnlockNotificationToken]);
  }

  [(BYTelephonyStateNotifier *)self setSimUnlockNotificationToken:0xFFFFFFFFLL];
}

+ (unint64_t)retrieveSIMUnlockStateFromToken:(int)token
{
  is_valid_token = notify_is_valid_token(token);
  if (!is_valid_token)
  {
    v7 = _BYLoggingFacility(is_valid_token);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BYTelephonyStateNotifier retrieveSIMUnlockStateFromToken:v7];
    }

    return 0;
  }

  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v6 = _BYLoggingFacility(state);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[BYTelephonyStateNotifier retrieveSIMUnlockStateFromToken:];
    }

    return 0;
  }

  return state64;
}

@end