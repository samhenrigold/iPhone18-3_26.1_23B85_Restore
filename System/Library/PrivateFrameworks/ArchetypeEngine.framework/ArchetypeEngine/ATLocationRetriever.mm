@interface ATLocationRetriever
- (_TtC15ArchetypeEngine19ATLocationRetriever)init;
- (void)locationManager:(id)manager didFailWithError:(id)error;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation ATLocationRetriever

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  selfCopy = self;
  sub_240FD460C();
}

- (void)locationManager:(id)manager didFailWithError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  selfCopy = self;
  sub_240FC0484(errorCopy);
}

- (_TtC15ArchetypeEngine19ATLocationRetriever)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end