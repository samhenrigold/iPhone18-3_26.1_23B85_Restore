@interface USLocationWrapper
+ (USLocationWrapper)shared;
- (void)loadLocationsWithCompletion:(id)completion;
- (void)setWithSelectedLocation:(id)location;
@end

@implementation USLocationWrapper

+ (USLocationWrapper)shared
{
  if (qword_11570 != -1)
  {
    swift_once();
  }

  v3 = qword_116A0;

  return v3;
}

- (void)loadLocationsWithCompletion:(id)completion
{
  sub_49F4(&qword_11508, &qword_7340);
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = sub_61FC();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = sub_50BC;
  v10[6] = v8;
  selfCopy = self;
  sub_3AE8(0, 0, v6, &unk_7378, v10);
}

- (void)setWithSelectedLocation:(id)location
{
  sub_49F4(&qword_11508, &qword_7340);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_61FC();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  v8[5] = location;
  locationCopy = location;
  selfCopy = self;
  sub_3AE8(0, 0, v6, &unk_7350, v8);
}

@end