@interface RecommendationController
- (void)recommendationEnablementProgressDidUpdateWithRecommendationID:(id)d progress:(double)progress;
- (void)recommendationsDidUpdate;
@end

@implementation RecommendationController

- (void)recommendationsDidUpdate
{
  v3 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_81AB8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;

  sub_68AE4(0, 0, v5, &unk_8A650, v7);
}

- (void)recommendationEnablementProgressDidUpdateWithRecommendationID:(id)d progress:(double)progress
{
  v6 = sub_147EC(&unk_B8240, &qword_88F50);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_81928();
  v11 = v10;
  v12 = sub_81AB8();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = self;
  *(v13 + 40) = v9;
  *(v13 + 48) = v11;
  *(v13 + 56) = progress;

  sub_68AE4(0, 0, v8, &unk_8A648, v13);
}

@end