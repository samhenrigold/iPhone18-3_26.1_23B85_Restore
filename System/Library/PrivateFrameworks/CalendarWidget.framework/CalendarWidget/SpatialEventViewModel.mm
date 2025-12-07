@interface SpatialEventViewModel
- (CGRect)stagedFrame;
- (CGRect)unPinnedViewFrame;
- (NSDate)end;
- (NSDate)start;
- (NSDate)startWithTravelTime;
- (NSString)description;
- (NSString)eventIdentifier;
- (_TtC14CalendarWidget21SpatialEventViewModel)init;
- (double)viewMaxNaturalTextHeight;
- (void)setStagedFrame:(CGRect)frame;
- (void)setVisibleHeight:(double)height;
@end

@implementation SpatialEventViewModel

- (CGRect)unPinnedViewFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame);
  v3 = *&self->_anon_0[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame];
  v4 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame];
  v5 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_unPinnedViewFrame + 8];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)eventIdentifier
{
  selfCopy = self;
  sub_1E47CDCB4();

  v3 = sub_1E4878B9C();

  return v3;
}

- (NSDate)startWithTravelTime
{
  v3 = sub_1E487732C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  type metadata accessor for Event(0);
  selfCopy = self;
  sub_1E48772AC();
  sub_1E47A7308();
  if (sub_1E4878ADC())
  {

    (*(v4 + 32))(v9, v7, v3);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    (*(v4 + 16))(v9, self + v10, v3);
  }

  v12 = sub_1E48772BC();
  (*(v4 + 8))(v9, v3);

  return v12;
}

- (NSDate)start
{
  v3 = sub_1E487732C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewStartDate;
  v8 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v9 = &v8[*(type metadata accessor for Event(0) + 20)];
  sub_1E47A7308();
  selfCopy = self;
  if (sub_1E4878ADC())
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  (*(v4 + 16))(v6, v11, v3);

  v12 = sub_1E48772BC();
  (*(v4 + 8))(v6, v3);

  return v12;
}

- (NSDate)end
{
  v3 = sub_1E487732C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_viewEndDate;
  v8 = self + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_event;
  v9 = &v8[*(type metadata accessor for Event(0) + 24)];
  sub_1E47A7308();
  selfCopy = self;
  if (sub_1E4878ACC())
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  (*(v4 + 16))(v6, v11, v3);

  v12 = sub_1E48772BC();
  (*(v4 + 8))(v6, v3);

  return v12;
}

- (double)viewMaxNaturalTextHeight
{
  selfCopy = self;
  v3 = sub_1E47F4B30();

  return v3;
}

- (void)setStagedFrame:(CGRect)frame
{
  *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame) = frame;
  *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight) = 0x7FEFFFFFFFFFFFFFLL;
}

- (CGRect)stagedFrame
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame);
  v3 = *&self->_anon_0[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  v4 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame];
  v5 = *&self->id[OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_frame + 8];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setVisibleHeight:(double)height
{
  v3 = OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked;
  if ((*(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeightLocked) & 1) == 0)
  {
    *(&self->super.isa + OBJC_IVAR____TtC14CalendarWidget21SpatialEventViewModel_visibleHeight) = height;
    *(&self->super.isa + v3) = 1;
  }
}

- (NSString)description
{
  selfCopy = self;
  sub_1E47F4E00();

  v3 = sub_1E4878B9C();

  return v3;
}

- (_TtC14CalendarWidget21SpatialEventViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end