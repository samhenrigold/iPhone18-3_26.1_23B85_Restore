@interface LogEntry
- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)init;
- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)initWithCategory:(id)category composedMessage:(id)message date:(id)date formatString:(id)string logLevel:(int64_t)level processIdentifier:(int64_t)identifier process:(id)process subsystem:(id)self0;
@end

@implementation LogEntry

- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)initWithCategory:(id)category composedMessage:(id)message date:(id)date formatString:(id)string logLevel:(int64_t)level processIdentifier:(int64_t)identifier process:(id)process subsystem:(id)self0
{
  identifierCopy = identifier;
  selfCopy = self;
  levelCopy = level;
  v10 = sub_1000077E8();
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007808();
  v15 = v14;
  v16 = sub_100007808();
  v18 = v17;
  sub_1000077C8();
  v19 = sub_100007808();
  v21 = v20;
  v22 = sub_100007808();
  v24 = v23;
  v25 = sub_100007808();
  return sub_10000404C(v13, v15, v16, v18, v12, v19, v21, levelCopy, identifierCopy, v22, v24, v25, v26);
}

- (_TtC57com_apple_HealthKit_HealthResearchLogsDiagnosticExtension8LogEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end