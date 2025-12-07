@interface NSURL(FaceTime_ShowAddParticipant)
- (id)conversationGroupUUID;
- (void)isShowAddParticipantURL;
@end

@implementation NSURL(FaceTime_ShowAddParticipant)

- (void)isShowAddParticipantURL
{
  result = [self isFaceTimeMultiwayURL];
  if (result)
  {
    tuQueryParameters = [self tuQueryParameters];
    v4 = [tuQueryParameters objectForKeyedSubscript:@"show-add-participant"];
    v5 = [v4 isEqualToString:@"1"];

    return v5;
  }

  return result;
}

- (id)conversationGroupUUID
{
  tuQueryParameters = [self tuQueryParameters];
  v2 = [tuQueryParameters objectForKeyedSubscript:@"conversationUUID"];

  return v2;
}

@end