@interface HKBloodPressureClassificationManager
- (BOOL)hypertensiveEscalationForClassificationGuidelines:(int64_t)guidelines systolic:(id)systolic diastolic:(id)diastolic age:(id)age;
- (BOOL)isClassificationAgeGated;
- (HKBloodPressureClassificationManager)init;
- (HKBloodPressureClassificationManager)initWithHealthStore:(id)store;
- (id)categoriesForClassificationGuidelines:(int64_t)guidelines error:(id *)error;
- (id)categoryDataForCategory:(id)category error:(id *)error;
- (id)categoryForClassificationGuidelines:(int64_t)guidelines systolic:(id)systolic diastolic:(id)diastolic age:(id)age;
- (int64_t)defaultClassificationGuidelinesForCountryCode:(id)code;
- (void)classificationGuidelinesOnDate:(id)date completionHandler:(id)handler;
- (void)currentClassificationGuidelinesWithCompletionHandler:(id)handler;
- (void)didUpdateKeyValueDomain:(id)domain;
- (void)preferredClassificationGuidelinesWithCompletionHandler:(id)handler;
- (void)removePreferredClassificationGuidelinesWithCompletionHandler:(id)handler;
- (void)updatePreferredClassificationGuidelines:(int64_t)guidelines completionHandler:(id)handler;
@end

@implementation HKBloodPressureClassificationManager

- (HKBloodPressureClassificationManager)initWithHealthStore:(id)store
{
  storeCopy = store;
  v4 = sub_191C3B838(storeCopy);

  return v4;
}

- (BOOL)isClassificationAgeGated
{
  selfCopy = self;
  sub_191C34EF8();
  if (v3)
  {

    return 1;
  }

  else
  {
    v5 = sub_191CC6B98();
    integerValue = [v5 integerValue];

    return integerValue < 18;
  }
}

- (int64_t)defaultClassificationGuidelinesForCountryCode:(id)code
{
  v4 = sub_191CC67B8();
  v6 = v5;
  selfCopy = self;
  v8 = _sSo36HKBloodPressureClassificationManagerC9HealthKitE07defaultC10Guidelines3forSo0abcH0VSS_tF_0(v4, v6);

  return v8;
}

- (void)preferredClassificationGuidelinesWithCompletionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_191CC6A38();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_191C3D770;
  v12[6] = v10;
  v12[7] = ObjectType;
  selfCopy = self;
  sub_191C35DD0(0, 0, v8, &unk_191DD4620, v12);
}

- (void)currentClassificationGuidelinesWithCompletionHandler:(id)handler
{
  v5 = sub_191CC6148();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  selfCopy = self;
  sub_191CC6138();
  v12 = sub_191CC60A8();
  (*(v6 + 8))(v8, v5);
  aBlock[4] = sub_191C3D770;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C3640C;
  aBlock[3] = &block_descriptor_71;
  v13 = _Block_copy(aBlock);

  [(HKBloodPressureClassificationManager *)selfCopy classificationGuidelinesOnDate:v12 completionHandler:v13];

  _Block_release(v13);
}

- (void)classificationGuidelinesOnDate:(id)date completionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v24 = &v24 - v7;
  v9 = sub_191CC6148();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - v14;
  v16 = _Block_copy(handler);
  sub_191CC60F8();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = sub_191CC6A38();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = self;
  (*(v10 + 32))(&v21[v19], v13, v9);
  v22 = &v21[v20];
  *v22 = sub_191C3CDC0;
  v22[1] = v17;
  *&v21[(v20 + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  selfCopy = self;

  sub_191C35DD0(0, 0, v24, &unk_191DD4618, v21);

  (*(v10 + 8))(v15, v9);
}

- (void)updatePreferredClassificationGuidelines:(int64_t)guidelines completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_191C3D754;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  HKBloodPressureClassificationManager.updatePreferredClassificationGuidelines(_:completionHandler:)(guidelines, v6, v7);
  sub_191C3C4D4(v6, v7);
}

- (void)removePreferredClassificationGuidelinesWithCompletionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_191C3CDB8;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_191CC6A38();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = v9;
  v12[6] = v10;
  v12[7] = ObjectType;
  selfCopy = self;
  sub_191C38EC8(0, 0, v8, &unk_191DD4610, v12);
}

- (id)categoriesForClassificationGuidelines:(int64_t)guidelines error:(id *)error
{
  sub_191C3C5B8(guidelines);
  type metadata accessor for HKBloodPressureClassificationCategory(0);
  v4 = sub_191CC68D8();

  return v4;
}

- (id)categoryForClassificationGuidelines:(int64_t)guidelines systolic:(id)systolic diastolic:(id)diastolic age:(id)age
{
  systolicCopy = systolic;
  diastolicCopy = diastolic;
  ageCopy = age;
  selfCopy = self;
  v14 = _sSo36HKBloodPressureClassificationManagerC9HealthKitE10__category3for8systolic9diastolic3ageSo0abC8CategoryaSo0abC10GuidelinesV_So10HKQuantityCANSo8NSNumberCSgtF_0(guidelines, systolicCopy, diastolicCopy, age);

  return v14;
}

- (id)categoryDataForCategory:(id)category error:(id *)error
{
  categoryCopy = category;
  selfCopy = self;
  v7 = sub_191C3CA88(categoryCopy);

  return v7;
}

- (BOOL)hypertensiveEscalationForClassificationGuidelines:(int64_t)guidelines systolic:(id)systolic diastolic:(id)diastolic age:(id)age
{
  systolicCopy = systolic;
  diastolicCopy = diastolic;
  ageCopy = age;
  selfCopy = self;
  LOBYTE(age) = HKBloodPressureClassificationManager.hypertensiveEscalation(for:systolic:diastolic:age:)(guidelines, systolicCopy, diastolicCopy, age);

  return age & 1;
}

- (HKBloodPressureClassificationManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)didUpdateKeyValueDomain:(id)domain
{
  domainCopy = domain;
  selfCopy = self;
  HKBloodPressureClassificationManager.keyValueDomain(didUpdate:)(domainCopy);
}

@end