@interface MTPartialFeedResponse
- (id)itemInSection:(int64_t)section row:(int64_t)row;
- (id)itemsFor:(int64_t)for;
- (id)sectionAtIndex:(unint64_t)index;
- (unint64_t)numberOfItemsInSection:(unint64_t)section;
- (unint64_t)numberOfSections;
@end

@implementation MTPartialFeedResponse

- (id)itemsFor:(int64_t)for
{
  selfCopy = self;
  sub_1D9001E64();
  swift_beginAccess();

  sub_1D8F61420(v4);

  v5 = sub_1D91785DC();

  return v5;
}

- (id)itemInSection:(int64_t)section row:(int64_t)row
{
  selfCopy = self;
  v7 = sub_1D90179A0(section, row);

  return v7;
}

- (unint64_t)numberOfItemsInSection:(unint64_t)section
{
  selfCopy = self;
  sub_1D9017BE0(section);
  v6 = v5;

  return v6;
}

- (unint64_t)numberOfSections
{
  type metadata accessor for PartialFeedRequest();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = OBJC_IVAR___MTPartialFeedRequest_sections;
  swift_beginAccess();
  return *(*(v2 + v3) + 16);
}

- (id)sectionAtIndex:(unint64_t)index
{
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.isa) + 0x100);
  selfCopy = self;
  v6 = v4(index);
  v8 = v7;
  v9 = type metadata accessor for GenericDataSourceSection();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock];
  *v11 = sub_1D8E3B050;
  v11[1] = 0;
  v12 = &v10[OBJC_IVAR___MTGenericDataSourceSection_storedTitle];
  *v12 = v6;
  v12[1] = v8;
  v17.receiver = v10;
  v17.super_class = v9;
  v13 = [(BaseFeedResponse *)&v17 init];
  v14 = swift_allocObject();
  *(v14 + 16) = selfCopy;
  *(v14 + 24) = index;
  v15 = (&v13->super.super.isa + OBJC_IVAR___MTGenericDataSourceSection_shouldIncludeSeeAllBlock);
  swift_beginAccess();
  *v15 = sub_1D9018E10;
  v15[1] = v14;

  return v13;
}

@end