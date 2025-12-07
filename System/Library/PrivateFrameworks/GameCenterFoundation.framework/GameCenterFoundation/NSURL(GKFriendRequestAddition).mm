@interface NSURL(GKFriendRequestAddition)
+ (id)_gkGenerateFriendRequestURL:()GKFriendRequestAddition;
@end

@implementation NSURL(GKFriendRequestAddition)

+ (id)_gkGenerateFriendRequestURL:()GKFriendRequestAddition
{
  v49[4] = *MEMORY[0x277D85DE8];
  v3 = a3;
  friendSupportPageURL = [v3 friendSupportPageURL];

  if (friendSupportPageURL)
  {
    v5 = objc_alloc(MEMORY[0x277CCACE0]);
    friendSupportPageURL2 = [v3 friendSupportPageURL];
    v7 = [v5 initWithString:friendSupportPageURL2];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CCACE0]);
  }

  initiator = [v3 initiator];
  displayName = [initiator displayName];

  if (displayName)
  {
    v48[0] = @"fc";
    friendCode = [v3 friendCode];
    v49[0] = friendCode;
    v48[1] = @"rqs";
    friendRequestState = [v3 friendRequestState];
    v49[1] = friendRequestState;
    v48[2] = @"pn";
    initiator2 = [v3 initiator];
    displayName2 = [initiator2 displayName];
    v49[2] = displayName2;
    v48[3] = @"pid";
    initiator3 = [v3 initiator];
    internal = [initiator3 internal];
    playerID = [internal playerID];
    v49[3] = playerID;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:4];

    v45 = v17;
    v18 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:0];
    v19 = [v18 compressedDataUsingAlgorithm:3 error:0];
    v20 = [v19 base64EncodedStringWithOptions:0];
    v46 = v7;
    v21 = objc_alloc(MEMORY[0x277CCAD18]);
    friendRequestVersion = [v3 friendRequestVersion];
    v23 = [v21 initWithName:@"vn" value:friendRequestVersion];
    v47[0] = v23;
    v24 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"zd" value:v20];
    v47[1] = v24;
    v25 = [objc_alloc(MEMORY[0x277CCAD18]) initWithName:@"pid" value:@"UnknownID"];
    v47[2] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
    [v7 setQueryItems:v26];

    v27 = [v7 URL];
    absoluteString = [v27 absoluteString];
    v29 = [absoluteString length];

    if (v29 >> 3 >= 0x271)
    {
      v30 = MEMORY[0x277CCACA8];
      v31 = MEMORY[0x277CCABB0];
      absoluteString2 = [v27 absoluteString];
      v32 = [v31 numberWithUnsignedInteger:{objc_msgSend(absoluteString2, "length")}];
      absoluteString3 = [v27 absoluteString];
      [v30 stringWithFormat:@"messages url is too long: %@ - %@", v32, absoluteString3];
      v34 = v44 = v18;
      v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKUtils+FriendRequest.m"];
      [v35 lastPathComponent];
      v36 = v20;
      v38 = v37 = v19;
      v39 = [v30 stringWithFormat:@"%@ (generatedURL.absoluteString.length < messagesMaxURLLength)\n[%s (%s:%d)]", v34, "+[NSURL(GKFriendRequestAddition) _gkGenerateFriendRequestURL:]", objc_msgSend(v38, "UTF8String"), 74];

      v19 = v37;
      v20 = v36;

      v7 = v46;
      v18 = v44;

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v39}];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v40 = GKOSLoggers();
    }

    v41 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [NSURL(GKFriendRequestAddition) _gkGenerateFriendRequestURL:v41];
    }

    v27 = 0;
  }

  return v27;
}

@end