@interface UnifiedMessages.Coordinator
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation UnifiedMessages.Coordinator

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D30, &unk_AF79A0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  v11 = sub_AB92A0();
  v13 = v12;
  v14 = sub_AB9990();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v11;
  v15[6] = v13;
  v15[7] = request;
  requestCopy = request;
  selfCopy = self;
  v18 = requestCopy;
  placementCopy = placement;
  sub_DBDC8(0, 0, v10, &unk_AFCBE0, v15);
}

@end