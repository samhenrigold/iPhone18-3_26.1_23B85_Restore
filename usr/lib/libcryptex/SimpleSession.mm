@interface SimpleSession
- (SimpleSession)initWithFlags:(unint64_t)flags;
- (SimpleSession)initWithSessionCore:(id)core;
- (void)dealloc;
@end

@implementation SimpleSession

- (SimpleSession)initWithFlags:(unint64_t)flags
{
  flagsCopy = flags;
  v8.receiver = self;
  v8.super_class = SimpleSession;
  v4 = [(SimpleSession *)&v8 init];
  v5 = session_create(flagsCopy);
  session = v4->_session;
  v4->_session = v5;

  return v4;
}

- (SimpleSession)initWithSessionCore:(id)core
{
  v8.receiver = self;
  v8.super_class = SimpleSession;
  coreCopy = core;
  v4 = [(SimpleSession *)&v8 init];
  v5 = session_create_from_core(coreCopy);

  session = v4->_session;
  v4->_session = v5;

  return v4;
}

- (void)dealloc
{
  session = self->_session;
  self->_session = 0;

  v4.receiver = self;
  v4.super_class = SimpleSession;
  [(SimpleSession *)&v4 dealloc];
}

@end