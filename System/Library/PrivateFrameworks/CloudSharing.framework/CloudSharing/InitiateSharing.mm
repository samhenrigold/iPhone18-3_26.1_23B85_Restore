@interface InitiateSharing
- (_TtC12CloudSharing15InitiateSharing)init;
- (void)callForAddParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers reply:(id)reply;
- (void)callForCloudKitAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)aBlock;
- (void)callForCurrentUserSharingStatus:(id)status reply:(id)reply;
- (void)callForMailContent:(id)content share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data reply:(id)reply;
- (void)callForSharingURLAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)self0;
- (void)callForUserNameAndEmail:(id)email containerSetupInfo:(id)info reply:(id)reply;
@end

@implementation InitiateSharing

- (void)callForCloudKitAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)aBlock
{
  v15 = _Block_copy(aBlock);
  v16 = sub_243B18E3C();
  v17 = sub_243B18E3C();
  _Block_copy(v15);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_243B0CE44(shareCopy, infoCopy, v16, v17, type, permissionType, invite, v15);
  _Block_release(v15);
  _Block_release(v15);

  v16, v21, v22, v23, v24, v25, v26, v27;

  v17, v28, v29, v30, v31, v32, v33, v34;
}

- (void)callForSharingURLAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)self0
{
  typeCopy = type;
  permissionTypeCopy = permissionType;
  v12 = sub_243B18CDC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &typeCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(reply);
  sub_243B18CCC();
  v17 = sub_243B18E3C();
  v18 = sub_243B18E3C();
  _Block_copy(v16);
  infoCopy = info;
  selfCopy = self;
  sub_243B0E2B8(v15, infoCopy, v17, v18, typeCopy, permissionTypeCopy, invite, v16);
  _Block_release(v16);
  _Block_release(v16);

  v17, v21, v22, v23, v24, v25, v26, v27;
  v18, v28, v29, v30, v31, v32, v33, v34;
  (*(v13 + 8))(v15, v12);
}

- (void)callForMailContent:(id)content share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data reply:(id)reply
{
  selfCopy = self;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_243B18CDC();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(reply);
  sub_243B18CCC();
  if (l)
  {
    sub_243B18CCC();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(v16 + 56);
  v37 = v15;
  v21(v14, v20, 1, v15);
  v22 = sub_243B18D8C();
  v24 = v23;
  shareCopy = share;
  dataCopy = data;
  selfCopy = selfCopy;
  v27 = sub_243B18D0C();
  v29 = v28;

  _Block_copy(v19);
  sub_243B0FDCC(v18, shareCopy, v14, v22, v24, v27, v29, v19);
  _Block_release(v19);
  _Block_release(v19);
  sub_243B0A5A0(v27, v29);

  v24, v30, v31, v32, v33, v34, v35, v36;
  sub_243B0A49C(v14, &qword_27EDA1750, &qword_243B19A68);
  (*(v16 + 8))(v18, v37);
}

- (void)callForCurrentUserSharingStatus:(id)status reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  statusCopy = status;
  selfCopy = self;
  sub_243B11530(statusCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)callForAddParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = sub_243B18E3C();
  v12 = sub_243B18E3C();
  _Block_copy(v10);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_243B1196C(shareCopy, infoCopy, v11, v12, v10);
  _Block_release(v10);
  _Block_release(v10);

  v11, v16, v17, v18, v19, v20, v21, v22;

  v12, v23, v24, v25, v26, v27, v28, v29;
}

- (void)callForUserNameAndEmail:(id)email containerSetupInfo:(id)info reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDA1750, &qword_243B19A68);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(reply);
  if (email)
  {
    sub_243B18CCC();
    v13 = sub_243B18CDC();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = sub_243B18CDC();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  _Block_copy(v12);
  infoCopy = info;
  selfCopy = self;
  sub_243B15104(v11, info, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_243B0A49C(v11, &qword_27EDA1750, &qword_243B19A68);
}

- (_TtC12CloudSharing15InitiateSharing)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InitiateSharing();
  return [(InitiateSharing *)&v3 init];
}

@end