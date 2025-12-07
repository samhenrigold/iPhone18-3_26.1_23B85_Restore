@interface DataTypeDetailFavoritesCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation DataTypeDetailFavoritesCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  selfCopy = self;
  sub_1BA177938();

  (*(v5 + 8))(v8, v4);
}

@end