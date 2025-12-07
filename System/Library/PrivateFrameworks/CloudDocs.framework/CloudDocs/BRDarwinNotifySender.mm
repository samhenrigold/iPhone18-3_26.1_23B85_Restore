@interface BRDarwinNotifySender
- (id)initForEventName:(id)name;
- (unint64_t)lastState;
- (void)dealloc;
- (void)invalidate;
- (void)notifyChangedState:(unint64_t)state;
@end

@implementation BRDarwinNotifySender

- (id)initForEventName:(id)name
{
  nameCopy = name;
  if (![nameCopy length])
  {
    v7 = brc_bread_crumbs("[BRDarwinNotifySender initForEventName:]", 23);
    v8 = brc_default_log(0, 0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [BRDarwinNotifySender initForEventName:];
    }

    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = BRDarwinNotifySender;
  v6 = [(BRDarwinNotifySender *)&v11 init];
  self = v6;
  if (v6)
  {
    v6->_token = -1;
    objc_storeStrong(&v6->_eventName, name);
    if (brc_notify_register_check([(NSString *)self->_eventName UTF8String], &self->_token))
    {
      v7 = brc_bread_crumbs("[BRDarwinNotifySender initForEventName:]", 31);
      v8 = brc_default_log(0, 0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [BRDarwinNotifySender initForEventName:];
      }

LABEL_9:

      selfCopy = 0;
      goto LABEL_10;
    }
  }

  self = self;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (void)dealloc
{
  [(BRDarwinNotifySender *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRDarwinNotifySender;
  [(BRDarwinNotifySender *)&v3 dealloc];
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  token = obj->_token;
  if (token != -1)
  {
    notify_cancel(token);
    v2 = obj;
    obj->_token = -1;
  }

  objc_sync_exit(v2);
}

- (void)notifyChangedState:(unint64_t)state
{
  obj = self;
  objc_sync_enter(obj);
  token = obj->_token;
  if (token == -1)
  {
    objc_sync_exit(obj);
  }

  else
  {
    obj->_lastState = state;
    objc_sync_exit(obj);

    uTF8String = [(NSString *)obj->_eventName UTF8String];

    brc_notify_set_state_and_post(token, state, uTF8String);
  }
}

- (unint64_t)lastState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastState = selfCopy->_lastState;
  objc_sync_exit(selfCopy);

  return lastState;
}

@end