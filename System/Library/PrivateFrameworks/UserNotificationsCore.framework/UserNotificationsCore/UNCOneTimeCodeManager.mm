@interface UNCOneTimeCodeManager
+ (id)sharedInstance;
- (UNCOneTimeCodeManager)init;
- (void)foundCode:(id)code displayCode:(id)displayCode application:(id)application notification:(id)notification timestamp:(id)timestamp;
- (void)setListener:(id)listener;
@end

@implementation UNCOneTimeCodeManager

- (void)setListener:(id)listener
{
  v4 = *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener);
  *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener) = listener;
  listenerCopy = listener;
}

+ (id)sharedInstance
{
  if (qword_1EE110BF0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE110BF8;

  return v3;
}

- (UNCOneTimeCodeManager)init
{
  v3 = [objc_allocWithZone(UNCOneTimeCodeServiceListener) init];
  *(&self->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener) = v3;
  v6.receiver = self;
  v6.super_class = UNCOneTimeCodeManager;
  v4 = [(UNCOneTimeCodeManager *)&v6 init];
  [*(&v4->super.isa + OBJC_IVAR___UNCOneTimeCodeManager_listener) activate];
  return v4;
}

- (void)foundCode:(id)code displayCode:(id)displayCode application:(id)application notification:(id)notification timestamp:(id)timestamp
{
  v24[1] = timestamp;
  v8 = sub_1DA93FAF4();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DA940A14();
  v13 = v12;
  v14 = sub_1DA940A14();
  v16 = v15;
  v17 = sub_1DA940A14();
  v19 = v18;
  v20 = sub_1DA940A14();
  v22 = v21;
  sub_1DA93FAB4();
  selfCopy = self;
  UNCOneTimeCodeManager.foundCode(_:displayCode:application:notification:timestamp:)(v11, v13, v14, v16, v17, v19, v20, v22);

  (*(v25 + 8))(v10, v26);
}

@end