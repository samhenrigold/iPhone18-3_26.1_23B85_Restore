@interface CUStateEvent
+ (id)enterState;
+ (id)exitState;
+ (id)initialTransition;
- (CUStateEvent)initWithName:(id)name userInfo:(id)info;
- (id)description;
- (void)dealloc;
@end

@implementation CUStateEvent

- (id)description
{
  v2 = [(NSString *)self->_name copy];

  return v2;
}

- (void)dealloc
{
  name = self->_name;
  self->_name = 0;

  userInfo = self->_userInfo;
  self->_userInfo = 0;

  v5.receiver = self;
  v5.super_class = CUStateEvent;
  [(CUStateEvent *)&v5 dealloc];
}

- (CUStateEvent)initWithName:(id)name userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  v15.receiver = self;
  v15.super_class = CUStateEvent;
  v8 = [(CUStateEvent *)&v15 init];
  if (!v8)
  {
    FatalErrorF("init failed");
  }

  v9 = v8;
  v10 = [nameCopy copy];
  name = v9->_name;
  v9->_name = v10;

  v12 = [infoCopy copy];
  userInfo = v9->_userInfo;
  v9->_userInfo = v12;

  return v9;
}

+ (id)initialTransition
{
  if (initialTransition_sInit != -1)
  {
    dispatch_once(&initialTransition_sInit, &__block_literal_global_38);
  }

  v3 = initialTransition_sState;

  return v3;
}

uint64_t __33__CUStateEvent_initialTransition__block_invoke()
{
  v0 = [[CUStateEvent alloc] initWithName:@"initial" userInfo:0];
  v1 = initialTransition_sState;
  initialTransition_sState = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)exitState
{
  if (exitState_sInit != -1)
  {
    dispatch_once(&exitState_sInit, &__block_literal_global_33);
  }

  v3 = exitState_sState;

  return v3;
}

uint64_t __25__CUStateEvent_exitState__block_invoke()
{
  v0 = [[CUStateEvent alloc] initWithName:@"exit" userInfo:0];
  v1 = exitState_sState;
  exitState_sState = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)enterState
{
  if (enterState_sInit != -1)
  {
    dispatch_once(&enterState_sInit, &__block_literal_global_7999);
  }

  v3 = enterState_sState;

  return v3;
}

uint64_t __26__CUStateEvent_enterState__block_invoke()
{
  v0 = [[CUStateEvent alloc] initWithName:@"enter" userInfo:0];
  v1 = enterState_sState;
  enterState_sState = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end