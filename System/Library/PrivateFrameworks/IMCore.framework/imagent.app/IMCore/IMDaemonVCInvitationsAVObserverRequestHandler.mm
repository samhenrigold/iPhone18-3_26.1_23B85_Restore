@interface IMDaemonVCInvitationsAVObserverRequestHandler
- (void)account:(id)account avAction:(unsigned int)action withArguments:(id)arguments toAVChat:(id)chat isVideo:(BOOL)video;
@end

@implementation IMDaemonVCInvitationsAVObserverRequestHandler

- (void)account:(id)account avAction:(unsigned int)action withArguments:(id)arguments toAVChat:(id)chat isVideo:(BOOL)video
{
  videoCopy = video;
  v9 = *&action;
  chatCopy = chat;
  argumentsCopy = arguments;
  accountCopy = account;
  v14 = +[IMDBroadcastController sharedProvider];
  v15 = v14;
  if (videoCopy)
  {
    [v14 broadcasterForAVConferenceListeners];
  }

  else
  {
    [v14 broadcasterForACConferenceListeners];
  }
  v16 = ;

  [v16 account:accountCopy avAction:v9 withArguments:argumentsCopy toAVChat:chatCopy isVideo:videoCopy];
}

@end