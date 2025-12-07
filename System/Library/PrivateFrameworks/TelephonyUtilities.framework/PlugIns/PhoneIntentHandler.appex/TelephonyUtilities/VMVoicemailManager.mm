@interface VMVoicemailManager
- (BOOL)isOnlineAndSubscribed;
- (void)fetchVoicemailWithIdentifier:(NSString *)identifier completion:(id)completion;
- (void)fetchVoicemailsMatching:(id)matching completion:;
- (void)markRead:(id)read;
@end

@implementation VMVoicemailManager

- (BOOL)isOnlineAndSubscribed
{
  selfCopy = self;
  if ([(VMVoicemailManager *)selfCopy isOnline])
  {
    isSubscribed = [(VMVoicemailManager *)selfCopy isSubscribed];
  }

  else
  {
    isSubscribed = 0;
  }

  return isSubscribed;
}

- (void)fetchVoicemailsMatching:(id)matching completion:
{
  v4 = v3;
  v7 = sub_100029394(&qword_100057960, &qword_100038F18);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(matching);
  v11 = _Block_copy(v4);
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100031078();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000390F8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100039100;
  v15[5] = v14;
  selfCopy = self;
  sub_10002D774(0, 0, v9, &unk_100039108, v15);
}

- (void)fetchVoicemailWithIdentifier:(NSString *)identifier completion:(id)completion
{
  v7 = sub_100029394(&qword_100057960, &qword_100038F18);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_100031078();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000390B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100038F80;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_10002D774(0, 0, v9, &unk_100038F88, v14);
}

- (void)markRead:(id)read
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10002D2E8(read);
  swift_unknownObjectRelease();
}

@end