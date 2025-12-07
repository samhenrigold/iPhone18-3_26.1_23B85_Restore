@interface MedicationSearchCell
- (_TtC19HealthMedicationsUI20MedicationSearchCell)initWithCoder:(id)coder;
@end

@implementation MedicationSearchCell

- (_TtC19HealthMedicationsUI20MedicationSearchCell)initWithCoder:(id)coder
{
  v4 = (self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_baseIdentifier);
  v8 = sub_228392000();
  v9 = v5;

  MEMORY[0x22AAB5C80](0xD000000000000015, 0x80000002283AF8A0);

  *v4 = v8;
  v4[1] = v9;
  v6 = self + OBJC_IVAR____TtC19HealthMedicationsUI20MedicationSearchCell_item;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end