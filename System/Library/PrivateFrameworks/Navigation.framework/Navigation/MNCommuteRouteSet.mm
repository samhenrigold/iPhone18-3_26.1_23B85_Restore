@interface MNCommuteRouteSet
- (MNCommuteRouteSet)init;
- (MNCommuteRouteSet)initWith:(id)with fetchDate:(id)date internalInfo:(id)info;
- (NSArray)routes;
- (NSDate)fetchDate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNCommuteRouteSet

- (MNCommuteRouteSet)initWith:(id)with fetchDate:(id)date internalInfo:(id)info
{
  v7 = sub_1D3276D30();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);
  v11 = sub_1D32771A0();
  sub_1D3276D00();
  *(self + OBJC_IVAR___MNCommuteRouteSet_routes) = v11;
  infoCopy = info;
  *(self + OBJC_IVAR___MNCommuteRouteSet__fetchDate) = sub_1D3276CD0();
  *(self + OBJC_IVAR___MNCommuteRouteSet__internalInfo) = info;
  v15.receiver = self;
  v15.super_class = MNCommuteRouteSet;
  v13 = [(MNCommuteRouteSet *)&v15 init];
  (*(v8 + 8))(v10, v7);
  return v13;
}

- (NSArray)routes
{
  sub_1D3126084(0, &unk_1EC75BDC8, 0x1E69A1C68);

  v2 = sub_1D3277190();

  return v2;
}

- (NSDate)fetchDate
{
  v2 = sub_1D3276D30();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3276D00();
  v6 = sub_1D3276CD0();
  (*(v3 + 8))(v5, v2);

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MNCommuteRouteSet.encode(with:)(coderCopy);
}

- (MNCommuteRouteSet)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end