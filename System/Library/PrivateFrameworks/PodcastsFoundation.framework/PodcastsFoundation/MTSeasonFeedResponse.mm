@interface MTSeasonFeedResponse
- (id)sectionAtIndex:(unint64_t)index;
@end

@implementation MTSeasonFeedResponse

- (id)sectionAtIndex:(unint64_t)index
{
  selfCopy = self;
  v5 = sub_1D901A2D4(index);
  v7 = v6;
  v8 = type metadata accessor for GenericDataSourceSection();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v10 = sub_1D8E3B050;
  v10[1] = 0;
  v11 = &v9[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v11 = v5;
  v11[1] = v7;
  v16.receiver = v9;
  v16.super_class = v8;
  v12 = [(BaseFeedResponse *)&v16 init];
  v13 = swift_allocObject();
  *(v13 + 16) = selfCopy;
  *(v13 + 24) = index;
  v14 = (&v12->super.super.super.isa + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  *v14 = sub_1D901AA10;
  v14[1] = v13;

  return v12;
}

@end