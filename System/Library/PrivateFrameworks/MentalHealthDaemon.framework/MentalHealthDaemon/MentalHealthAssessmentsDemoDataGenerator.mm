@interface MentalHealthAssessmentsDemoDataGenerator
- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)init;
- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection;
- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection;
- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state;
@end

@implementation MentalHealthAssessmentsDemoDataGenerator

- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)init
{
  v3 = sub_2589921D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x277CC9830], v3);
  sub_2589921E4();
  (*(v4 + 8))(v6, v3);
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState) = 0;
  v7 = self + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime;
  *v7 = 0;
  v7[8] = 1;
  v8 = type metadata accessor for MentalHealthAssessmentsDemoDataGenerator(0);
  v10.receiver = self;
  v10.super_class = v8;
  return [(MentalHealthAssessmentsDemoDataGenerator *)&v10 init];
}

- (void)setDemoDataGenerationContextWithProfile:(id)profile generatorState:(id)state
{
  swift_unknownObjectWeakAssign();
  v7 = *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState);
  *(&self->super.isa + OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_generatorState) = state;
  stateCopy = state;
}

- (void)generateFirstRunObjectsForDemoPerson:(id)person firstDate:(id)date objectCollection:(id)collection
{
  v8 = sub_2589921C4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  personCopy = person;
  collectionCopy = collection;
  selfCopy = self;
  sub_25898FE88();

  (*(v9 + 8))(v11, v8);
}

- (void)generateObjectsForDemoPerson:(id)person fromTime:(double)time toTime:(double)toTime currentDate:(id)date objectCollection:(id)collection
{
  v11 = sub_2589921C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589921B4();
  personCopy = person;
  collectionCopy = collection;
  selfCopy = self;
  sub_2589906E8(v14, collectionCopy, v18, v19, v20, toTime);

  (*(v12 + 8))(v14, v11);
}

- (void)encodeWithCoder:(id)coder
{
  if (self->_anon_0[OBJC_IVAR____TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator_nextSampleTime])
  {
    coderCopy = coder;
    selfCopy = self;
    v6 = 0;
  }

  else
  {
    coderCopy2 = coder;
    selfCopy2 = self;
    v6 = sub_2589922D4();
  }

  v9 = sub_258992294();
  [coder encodeObject:v6 forKey:v9];
  swift_unknownObjectRelease();
}

- (_TtC18MentalHealthDaemon40MentalHealthAssessmentsDemoDataGenerator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_2589909C4(coderCopy);

  return v4;
}

@end