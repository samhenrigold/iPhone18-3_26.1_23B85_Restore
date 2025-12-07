@interface DMCNextNag
- (DMCNextNag)init;
- (DMCNextNag)initWithDate:(id)date nearDeadline:(BOOL)deadline;
- (NSString)date;
@end

@implementation DMCNextNag

- (NSString)date
{

  v2 = sub_247F23EFC();

  return v2;
}

- (DMCNextNag)initWithDate:(id)date nearDeadline:(BOOL)deadline
{
  v5 = sub_247F23DEC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247F23DCC();
  return DMCNextNag.init(date:nearDeadline:)(v7, deadline);
}

- (DMCNextNag)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end