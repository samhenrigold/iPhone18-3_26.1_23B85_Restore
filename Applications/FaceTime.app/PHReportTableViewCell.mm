@interface PHReportTableViewCell
+ (NSString)reuseIdentifier;
- (PHReportTableViewCell)initWithCoder:(id)coder;
- (PHReportTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation PHReportTableViewCell

+ (NSString)reuseIdentifier
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (PHReportTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (identifier)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = sub_10008F374(v5, v6);

  return v7;
}

- (PHReportTableViewCell)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = OBJC_IVAR___PHReportTableViewCell____lazy_storage___cellContentConfiguration;
  v5 = type metadata accessor for UIListContentConfiguration();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end