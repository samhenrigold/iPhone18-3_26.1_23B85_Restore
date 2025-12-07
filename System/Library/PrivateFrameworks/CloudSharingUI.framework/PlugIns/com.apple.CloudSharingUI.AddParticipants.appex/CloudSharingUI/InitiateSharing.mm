@interface InitiateSharing
- (_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing)init;
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
  v16 = sub_10007B2AC();
  v17 = sub_10007B2AC();
  _Block_copy(v15);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_10003AA00(shareCopy, infoCopy, v16, v17, type, permissionType, invite, v15);
  _Block_release(v15);
  _Block_release(v15);

  v16, v21, v22, v23, v24, v25, v26, v27;

  v17, v28, v29, v30, v31, v32, v33, v34;
}

- (void)callForSharingURLAddToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers accessType:(int64_t)type permissionType:(int64_t)permissionType allowOthersToInvite:(BOOL)invite reply:(id)self0
{
  typeCopy = type;
  permissionTypeCopy = permissionType;
  v12 = sub_10007AC4C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &typeCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(reply);
  sub_10007AC1C();
  v17 = sub_10007B2AC();
  v18 = sub_10007B2AC();
  _Block_copy(v16);
  infoCopy = info;
  selfCopy = self;
  sub_10003C284(v15, infoCopy, v17, v18, typeCopy, permissionTypeCopy, invite, v16);
  _Block_release(v16);
  _Block_release(v16);

  v17, v21, v22, v23, v24, v25, v26, v27;
  v18, v28, v29, v30, v31, v32, v33, v34;
  (*(v13 + 8))(v15, v12);
}

- (void)callForMailContent:(id)content share:(id)share fileURL:(id)l appName:(id)name appIconData:(id)data reply:(id)reply
{
  selfCopy = self;
  v12 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_10007AC4C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = _Block_copy(reply);
  sub_10007AC1C();
  if (l)
  {
    sub_10007AC1C();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(v16 + 56);
  v37 = v15;
  v21(v14, v20, 1, v15);
  v22 = sub_10007B19C();
  v24 = v23;
  shareCopy = share;
  dataCopy = data;
  selfCopy = selfCopy;
  v27 = sub_10007AC7C();
  v29 = v28;

  _Block_copy(v19);
  sub_10003E1E0(v18, shareCopy, v14, v22, v24, v27, v29, v19);
  _Block_release(v19);
  _Block_release(v19);
  sub_10003846C(v27, v29);

  v24, v30, v31, v32, v33, v34, v35, v36;
  sub_100008824(v14, &unk_10009ED10, &qword_10007D310);
  (*(v16 + 8))(v18, v37);
}

- (void)callForCurrentUserSharingStatus:(id)status reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  statusCopy = status;
  selfCopy = self;
  sub_10003FCD8(statusCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)callForAddParticipantsToShare:(id)share containerSetupInfo:(id)info emailAddresses:(id)addresses phoneNumbers:(id)numbers reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = sub_10007B2AC();
  v12 = sub_10007B2AC();
  _Block_copy(v10);
  shareCopy = share;
  infoCopy = info;
  selfCopy = self;
  sub_100040168(shareCopy, infoCopy, v11, v12, v10);
  _Block_release(v10);
  _Block_release(v10);

  v11, v16, v17, v18, v19, v20, v21, v22;

  v12, v23, v24, v25, v26, v27, v28, v29;
}

- (void)callForUserNameAndEmail:(id)email containerSetupInfo:(id)info reply:(id)reply
{
  v9 = sub_1000057A0(&unk_10009ED10, &qword_10007D310);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(reply);
  if (email)
  {
    sub_10007AC1C();
    v13 = sub_10007AC4C();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = sub_10007AC4C();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  _Block_copy(v12);
  infoCopy = info;
  selfCopy = self;
  sub_10004406C(v11, info, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_100008824(v11, &unk_10009ED10, &qword_10007D310);
}

- (_TtC40com_apple_CloudSharingUI_AddParticipants15InitiateSharing)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InitiateSharing();
  return [(InitiateSharing *)&v3 init];
}

@end