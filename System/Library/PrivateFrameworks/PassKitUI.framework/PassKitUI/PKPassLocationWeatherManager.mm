@interface PKPassLocationWeatherManager
- (PKPassLocationWeatherManager)init;
- (void)fetchWeatherDisplayInformationFor:(id)for at:(id)at completion:(id)completion;
@end

@implementation PKPassLocationWeatherManager

- (void)fetchWeatherDisplayInformationFor:(id)for at:(id)at completion:(id)completion
{
  v8 = sub_1BE04AF64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_1BE04AEE4();
  _Block_copy(v12);
  atCopy = at;
  selfCopy = self;
  sub_1BD138BB0(v11, at, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (PKPassLocationWeatherManager)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(PKPassLocationWeatherManager *)&v3 init];
}

@end