@interface MarketingPlacementObserver
- (_TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver)init;
- (void)engagement:(AMSEngagement *)engagement didUpdateEngagementRequest:(AMSEngagementRequest *)request placement:(NSString *)placement serviceType:(NSString *)type completion:(id)completion;
- (void)engagement:(AMSEngagement *)engagement handleDialogRequest:(AMSDialogRequest *)request completion:(id)completion;
- (void)engagement:(AMSEngagement *)engagement handleEngagementRequest:(AMSEngagementRequest *)request completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation MarketingPlacementObserver

- (_TtC24FitnessEngagementServiceP33_BEC6C0704903DD2FBF3B8EA6FBD9907426MarketingPlacementObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_1E65E5C78();
  v11 = v10;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1E659AC58(request, v9, v11);
}

- (void)engagement:(AMSEngagement *)engagement didUpdateEngagementRequest:(AMSEngagementRequest *)request placement:(NSString *)placement serviceType:(NSString *)type completion:(id)completion
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  v17[2] = engagement;
  v17[3] = request;
  v17[4] = placement;
  v17[5] = type;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1E660D278;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1E660D280;
  v20[5] = v19;
  engagementCopy = engagement;
  requestCopy = request;
  placementCopy = placement;
  typeCopy = type;
  selfCopy = self;
  sub_1E6198E90(0, 0, v15, &unk_1E660D288, v20);
}

- (void)engagement:(AMSEngagement *)engagement handleDialogRequest:(AMSDialogRequest *)request completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = engagement;
  v13[3] = request;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1E660D258;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1E660D260;
  v16[5] = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1E6198E90(0, 0, v11, &unk_1E660D268, v16);
}

- (void)engagement:(AMSEngagement *)engagement handleEngagementRequest:(AMSEngagementRequest *)request completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = engagement;
  v13[3] = request;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1E65E60A8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1E660D210;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1E660D220;
  v16[5] = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1E6198E90(0, 0, v11, &unk_1E660D230, v16);
}

@end