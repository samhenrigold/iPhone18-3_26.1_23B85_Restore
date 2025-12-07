@interface CleanEnergyAutomationReducedEnergyLogEvent
- (NSString)description;
- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithHomeUUID:(id)d;
- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithStartTime:(double)time homeUUID:(id)d;
@end

@implementation CleanEnergyAutomationReducedEnergyLogEvent

- (NSString)description
{
  selfCopy = self;
  sub_2297B992C();

  v3 = sub_22A4DD5AC();

  return v3;
}

- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithHomeUUID:(id)d
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v8 = sub_22A4DB77C();
  v9 = type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  v12.receiver = self;
  v12.super_class = v9;
  v10 = [(HMMHomeLogEvent *)&v12 initWithHomeUUID:v8];

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (_TtC13HomeKitDaemon42CleanEnergyAutomationReducedEnergyLogEvent)initWithStartTime:(double)time homeUUID:(id)d
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v10 = sub_22A4DB77C();
  v11 = type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(HMMHomeLogEvent *)&v14 initWithStartTime:v10 homeUUID:time];

  (*(v7 + 8))(v9, v6);
  return v12;
}

@end