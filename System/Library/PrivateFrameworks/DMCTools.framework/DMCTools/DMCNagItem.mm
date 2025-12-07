@interface DMCNagItem
+ (NSString)migrationNagClientID;
+ (NSString)migrationNagItemID;
+ (id)migrationNagItemWithDeadline:(id)deadline actionURL:(id)l deadlineURL:(id)rL;
- (BOOL)isMigrationNag;
- (DMCNagItem)init;
- (DMCNagItem)initWithStyle:(unint64_t)style identifier:(id)identifier clientID:(id)d schedule:(id)schedule title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)self0 actionTitle:(id)self1 actionURL:(id)self2 dismissTitle:(id)self3 dismissURL:(id)self4 deadlineURL:(id)self5;
- (NSDate)deadline;
- (NSDictionary)properties;
- (NSDictionary)schedule;
- (NSNumber)shortestInterval;
- (NSString)description;
- (id)followUpAndReturnError:(id *)error;
- (id)iOSFilesystemURL;
- (id)localized:(id)localized;
- (id)localizedFormat:(id)format :(id)a4;
- (id)localizedOptional:(id)optional;
- (id)nextNag;
- (void)didNag;
- (void)setDeadline:(id)deadline;
- (void)setLastNagString:(id)string;
- (void)setSchedule:(id)schedule;
@end

@implementation DMCNagItem

- (NSDictionary)schedule
{
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();

  v2 = sub_247F23E9C();

  return v2;
}

- (void)setSchedule:(id)schedule
{
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  *(self + OBJC_IVAR___DMCNagItem_schedule) = sub_247F23EAC();
}

- (void)setLastNagString:(id)string
{
  if (string)
  {
    v4 = sub_247F23F3C();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___DMCNagItem_lastNagString);
  *v6 = v4;
  v6[1] = v5;
}

- (NSDate)deadline
{
  v3 = sub_247F23DEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_247F11C98(v6);

  v8 = sub_247F23D8C();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (NSNumber)shortestInterval
{
  selfCopy = self;
  sub_247F11F6C();
  v4 = v3;

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  DMCNagItem.description.getter();

  v3 = sub_247F23EFC();

  return v3;
}

- (NSDictionary)properties
{
  selfCopy = self;
  DMCNagItem.properties.getter();

  v3 = sub_247F23E9C();

  return v3;
}

- (DMCNagItem)initWithStyle:(unint64_t)style identifier:(id)identifier clientID:(id)d schedule:(id)schedule title:(id)title message:(id)message notificationTitle:(id)notificationTitle notificationMessage:(id)self0 actionTitle:(id)self1 actionURL:(id)self2 dismissTitle:(id)self3 dismissURL:(id)self4 deadlineURL:(id)self5
{
  styleCopy = style;
  selfCopy = self;
  lCopy = l;
  actionTitleCopy = actionTitle;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v60 = sub_247F23D3C();
  v18 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  v23 = sub_247F23F3C();
  v57 = v24;
  v58 = v23;
  v25 = sub_247F23F3C();
  v55 = v26;
  v56 = v25;
  sub_247F08408(0, &qword_27EE7ED00, 0x277CCABB0);
  sub_247F23DEC();
  sub_247F12BF4();
  v54 = sub_247F23EAC();
  v27 = sub_247F23F3C();
  v52 = v28;
  v53 = v27;
  v51 = sub_247F23F3C();
  v49 = v29;
  if (notificationTitle)
  {
    v30 = sub_247F23F3C();
    v46 = v31;
    v47 = v30;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  dismissTitleCopy = dismissTitle;
  if (notificationMessage)
  {
    v33 = sub_247F23F3C();
    v44 = v34;
    v45 = v33;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  actionTitleCopy = sub_247F23F3C();
  v36 = v35;
  sub_247F23CFC();
  if (dismissTitle)
  {
    v37 = sub_247F23F3C();
    dismissTitleCopy = v38;
  }

  else
  {
    v37 = 0;
  }

  rLCopy = rL;
  uRLCopy = uRL;
  if (rLCopy)
  {
    sub_247F23CFC();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  (*(v18 + 56))(v17, v41, 1, v60);
  v42 = v59;
  sub_247F23CFC();

  return DMCNagItem.init(style:identifier:clientID:schedule:title:message:notificationTitle:notificationMessage:actionTitle:actionURL:dismissTitle:dismiss:deadlineURL:)(styleCopy, v58, v57, v56, v55, v54, v53, v52, v51, v49, v47, v46, v45, v44, actionTitleCopy, v36, v22, v37, dismissTitleCopy, v17, v42);
}

+ (NSString)migrationNagItemID
{
  v2 = sub_247F23EFC();

  return v2;
}

+ (NSString)migrationNagClientID
{
  v2 = sub_247F23EFC();

  return v2;
}

- (BOOL)isMigrationNag
{
  selfCopy = self;
  v3 = DMCNagItem.isMigrationNag.getter();

  return v3 & 1;
}

+ (id)migrationNagItemWithDeadline:(id)deadline actionURL:(id)l deadlineURL:(id)rL
{
  v19[1] = self;
  v5 = sub_247F23D3C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v12 = sub_247F23DEC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23DCC();
  sub_247F23CFC();
  sub_247F23CFC();
  swift_getObjCClassMetadata();
  v16 = static DMCNagItem.migrationNagItem(withDeadline:actionURL:deadlineURL:)(v15, v11, v8);
  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  (*(v13 + 8))(v15, v12);

  return v16;
}

- (id)followUpAndReturnError:(id *)error
{
  selfCopy = self;
  v4 = DMCNagItem.followUp()();

  return v4;
}

- (void)didNag
{
  selfCopy = self;
  sub_247F150BC();
}

- (id)nextNag
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EC68, &unk_247F25BC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  selfCopy = self;
  sub_247F153A0(v5);

  v7 = sub_247F23DEC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_247F23D8C();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setDeadline:(id)deadline
{
  v4 = sub_247F23DEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23DCC();
  selfCopy = self;
  DMCNagItem.setDeadline(_:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (id)iOSFilesystemURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7ED30, &qword_247F25660);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  type metadata accessor for DMCNagItem(v6);
  selfCopy = self;
  identifier = [(DMCNagItem *)selfCopy identifier];
  v9 = sub_247F23F3C();
  v11 = v10;

  clientID = [(DMCNagItem *)selfCopy clientID];
  v13 = sub_247F23F3C();
  v15 = v14;

  sub_247F16464(v9, v11, v13, v15, v5);

  v16 = sub_247F23D3C();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v5, 1, v16);
  v19 = 0;
  if (v18 != 1)
  {
    v20 = sub_247F23CDC();
    (*(v17 + 8))(v5, v16);
    v19 = v20;
  }

  return v19;
}

- (id)localized:(id)localized
{
  sub_247F23F3C();
  sub_247F08408(0, &qword_27EE7EF20, 0x277CCA8D8);
  selfCopy = self;
  mainBundle = sub_247F2412C();
  if (!mainBundle)
  {
    mainBundle = [objc_opt_self() mainBundle];
  }

  v6 = mainBundle;
  sub_247F23C0C();

  v7 = sub_247F23EFC();

  return v7;
}

- (id)localizedOptional:(id)optional
{
  if (optional)
  {
    sub_247F23F3C();
    sub_247F08408(0, &qword_27EE7EF20, 0x277CCA8D8);
    selfCopy = self;
    mainBundle = sub_247F2412C();
    if (!mainBundle)
    {
      mainBundle = [objc_opt_self() mainBundle];
    }

    v6 = mainBundle;
    sub_247F23C0C();

    v7 = sub_247F23EFC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)localizedFormat:(id)format :(id)a4
{
  v6 = sub_247F23F3C();
  v8 = v7;
  selfCopy = self;
  v10 = [(DMCNagItem *)selfCopy localized:format];
  sub_247F23F3C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE7EF10, &qword_247F25CD8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_247F25650;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_247F1A848();
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  sub_247F23F0C();

  v12 = sub_247F23EFC();

  return v12;
}

- (DMCNagItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end