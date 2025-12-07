@interface MedicationsDayHistoryCell
- (_TtC19HealthMedicationsUI25MedicationsDayHistoryCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation MedicationsDayHistoryCell

- (_TtC19HealthMedicationsUI25MedicationsDayHistoryCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell____lazy_storage___historyView) = 0;
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI25MedicationsDayHistoryCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_228391350();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391340();
  selfCopy = self;
  sub_228386634();

  (*(v5 + 8))(v7, v4);
}

@end