@interface _EXSceneSessionManager
+ (id)sharedInstance;
- (id)_init;
- (id)sessionForIdentifier:(id)identifier;
- (id)sessions;
- (void)addSession:(id)session;
- (void)removeSessionForIdentifier:(id)identifier;
@end

@implementation _EXSceneSessionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[_EXSceneSessionManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = _EXSceneSessionManager;
  v2 = [(_EXSceneSessionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sessions = v2->__sessions;
    v2->__sessions = v3;
  }

  return v2;
}

- (void)addSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  sessions = self->__sessions;
  identifier = [sessionCopy identifier];
  [(NSMutableDictionary *)sessions setObject:sessionCopy forKey:identifier];

  v8 = _EXDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSessionManager addSession:];
  }
}

- (id)sessionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = [(NSMutableDictionary *)self->__sessions objectForKey:identifierCopy];

  return v5;
}

- (void)removeSessionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  v5 = _EXDefaultLog([(NSMutableDictionary *)self->__sessions removeObjectForKey:identifierCopy]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [_EXSceneSessionManager removeSessionForIdentifier:];
  }
}

- (id)sessions
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  sessions = self->__sessions;

  return [(NSMutableDictionary *)sessions allValues];
}

@end