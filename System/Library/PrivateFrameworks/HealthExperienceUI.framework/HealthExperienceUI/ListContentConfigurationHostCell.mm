@interface ListContentConfigurationHostCell
- (int64_t)tintAdjustmentMode;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)setTintAdjustmentMode:(int64_t)mode;
@end

@implementation ListContentConfigurationHostCell

- (int64_t)tintAdjustmentMode
{
  selfCopy = self;
  v3 = sub_1BA463BC0();

  return v3;
}

- (void)setTintAdjustmentMode:(int64_t)mode
{
  selfCopy = self;
  sub_1BA463E98(mode);
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_1BA4A40C8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A40B8();
  selfCopy = self;
  sub_1BA4655BC(v8);

  (*(v5 + 8))(v8, v4);
}

@end