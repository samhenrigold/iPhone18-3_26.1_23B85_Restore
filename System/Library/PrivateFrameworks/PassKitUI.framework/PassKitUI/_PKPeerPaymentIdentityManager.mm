@interface _PKPeerPaymentIdentityManager
- (NSData)_profilePictureData;
- (NSData)profilePictureData;
- (PKPeerPaymentProfileAppearanceData)appearanceData;
- (_PeerPaymentIdentityManagerDelegate)_delegate;
- (_PeerPaymentIdentityManagerDelegate)delegate;
- (void)commitUpdatesIfNeeded;
- (void)setAppearanceData:(id)data;
- (void)setDelegate:(id)delegate;
- (void)setProfilePictureData:(id)data;
- (void)setShareLastName:(BOOL)name;
- (void)setShareProfilePicture:(BOOL)picture;
- (void)set_appearanceData:(id)data;
- (void)set_profilePictureData:(id)data;
@end

@implementation _PKPeerPaymentIdentityManager

- (NSData)_profilePictureData
{
  v2 = (self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v3 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_1BD041A38(*v2, v3);
    v6 = sub_1BE04AAB4();
    sub_1BD030220(v5, v3, v7, v8, v9, v10, v11, v12);
    v4 = v6;
  }

  return v4;
}

- (void)set_profilePictureData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v6 = dataCopy;
    dataCopy = sub_1BE04AAC4();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v11 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v12 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  *v10 = dataCopy;
  v10[1] = v8;
  sub_1BD030394(v11, v12);
  sub_1BD030394(dataCopy, v8);
  sub_1BD030220(v11, v12, v13, v14, v15, v16, v17, v18);
  sub_1BD217824(v11, v12);

  sub_1BD030220(v11, v12, v19, v20, v21, v22, v23, v24);

  sub_1BD030220(dataCopy, v8, v25, v26, v27, v28, v29, v30);
}

- (NSData)profilePictureData
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  selfCopy = self;
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(selfCopy + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData);
  v13 = *(selfCopy + OBJC_IVAR____PKPeerPaymentIdentityManager__profilePictureData + 8);
  sub_1BD030394(v12, v13);

  if (v13 >> 60 == 15)
  {
    v14 = 0;
  }

  else
  {
    v15 = sub_1BE04AAB4();
    sub_1BD030220(v12, v13, v16, v17, v18, v19, v20, v21);
    v14 = v15;
  }

  return v14;
}

- (void)setProfilePictureData:(id)data
{
  dataCopy = data;
  if (data)
  {
    selfCopy = self;
    v5 = dataCopy;
    dataCopy = sub_1BE04AAC4();
    v7 = v6;
  }

  else
  {
    selfCopy2 = self;
    v7 = 0xF000000000000000;
  }

  sub_1BD218070(dataCopy, v7);
}

- (void)set_appearanceData:(id)data
{
  v4 = *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  *(self + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData) = data;
  dataCopy = data;
}

- (PKPeerPaymentProfileAppearanceData)appearanceData
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  selfCopy = self;
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(selfCopy + OBJC_IVAR____PKPeerPaymentIdentityManager__appearanceData);
  v13 = v12;

  return v12;
}

- (void)setAppearanceData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  sub_1BD2185B0(dataCopy);
}

- (void)setShareLastName:(BOOL)name
{
  nameCopy = name;
  selfCopy = self;
  PeerPaymentIdentityManager.shareLastName.setter(nameCopy);
}

- (void)setShareProfilePicture:(BOOL)picture
{
  pictureCopy = picture;
  selfCopy = self;
  PeerPaymentIdentityManager.shareProfilePicture.setter(pictureCopy);
}

- (_PeerPaymentIdentityManagerDelegate)_delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_PeerPaymentIdentityManagerDelegate)delegate
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  selfCopy = self;
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  KeyPath = swift_getKeyPath();
  sub_1BD21AB90(&qword_1EBD3F6F0, type metadata accessor for PeerPaymentIdentityManager, &protocol conformance descriptor for PeerPaymentIdentityManager);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BE04B584();

  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  swift_unknownObjectRelease();
}

- (void)commitUpdatesIfNeeded
{
  selfCopy = self;
  PeerPaymentIdentityManager.commitUpdatesIfNeeded()();
}

@end