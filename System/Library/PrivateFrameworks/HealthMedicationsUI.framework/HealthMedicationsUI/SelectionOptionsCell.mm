@interface SelectionOptionsCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)switchValueChanged:(id)changed;
@end

@implementation SelectionOptionsCell

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  selfCopy = self;
  sub_2282F1278();

  (*(v5 + 8))(v7, v4);
}

- (void)switchValueChanged:(id)changed
{
  selfCopy = self;
  sub_2282F1B58();
}

@end