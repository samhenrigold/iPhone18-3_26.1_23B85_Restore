@interface TPPeerPermanentInfo
- (BOOL)matchesPeer:(id)peer;
@end

@implementation TPPeerPermanentInfo

- (BOOL)matchesPeer:(id)peer
{
  swift_unknownObjectRetain();
  selfCopy = self;
  peerID = [(TPPeerPermanentInfo *)selfCopy peerID];
  v7 = sub_100216974();
  v9 = v8;

  peerID2 = [peer peerID];
  v11 = sub_100216974();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
    v22 = 1;
  }

  else
  {
    v22 = sub_1002171A4();
  }

  v9, v14, v15, v16, v17, v18, v19, v20, v31, v33, v35, v37, v39, v41, v43, v45, vars0, vars8;
  v13, v23, v24, v25, v26, v27, v28, v29, v32, v34, v36, v38, v40, v42, v44, v46, vars0a, vars8a;
  swift_unknownObjectRelease();

  return v22 & 1;
}

@end