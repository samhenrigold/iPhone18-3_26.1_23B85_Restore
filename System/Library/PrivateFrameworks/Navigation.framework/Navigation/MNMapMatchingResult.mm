@interface MNMapMatchingResult
- (MNMapMatchingResult)init;
- (NSUUID)routeID;
@end

@implementation MNMapMatchingResult

- (NSUUID)routeID
{
  v3 = sub_1D3276D70();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___MNMapMatchingResult_routeID, v3);
  v7 = sub_1D3276D40();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (MNMapMatchingResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end