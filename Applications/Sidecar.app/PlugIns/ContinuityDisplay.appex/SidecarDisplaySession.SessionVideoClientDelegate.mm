@interface SidecarDisplaySession.SessionVideoClientDelegate
- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall;
- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause;
- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade;
- (void)remoteVideoClient:(id)client videoDidSuspend:(BOOL)suspend;
- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame;
- (void)remoteVideoClientDidReceiveLastFrame:(id)frame;
- (void)remoteVideoServerDidDie:(id)die;
@end

@implementation SidecarDisplaySession.SessionVideoClientDelegate

- (void)remoteVideoClientDidReceiveFirstFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  sub_1000176EC(frameCopy);
}

- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause
{
  pauseCopy = pause;
  clientCopy = client;
  selfCopy = self;
  sub_1000178BC(clientCopy, pauseCopy);
}

- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall
{
  stallCopy = stall;
  clientCopy = client;
  selfCopy = self;
  sub_100017938(clientCopy, stallCopy);
}

- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade
{
  degradeCopy = degrade;
  clientCopy = client;
  selfCopy = self;
  sub_1000179B4(clientCopy, degradeCopy);
}

- (void)remoteVideoClient:(id)client videoDidSuspend:(BOOL)suspend
{
  suspendCopy = suspend;
  clientCopy = client;
  selfCopy = self;
  sub_100017A30(clientCopy, suspendCopy);
}

- (void)remoteVideoClientDidReceiveLastFrame:(id)frame
{
  frameCopy = frame;
  selfCopy = self;
  sub_100017BB0(frameCopy);
}

- (void)remoteVideoServerDidDie:(id)die
{
  dieCopy = die;
  selfCopy = self;
  sub_100017D04(dieCopy);
}

- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change
{
  clientCopy = client;
  changeCopy = change;
  selfCopy = self;
  sub_100017F74(clientCopy, changeCopy);
}

- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change
{
  clientCopy = client;
  changeCopy = change;
  selfCopy = self;
  sub_100017FFC(clientCopy, changeCopy);
}

@end