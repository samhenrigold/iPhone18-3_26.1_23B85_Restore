@interface RWIProtocolDOMVideoPlaybackQuality
- (RWIProtocolDOMVideoPlaybackQuality)initWithDisplayCompositedVideoFrames:(int)frames droppedVideoFrames:(int)videoFrames totalVideoFrames:(int)totalVideoFrames;
- (int)displayCompositedVideoFrames;
- (int)droppedVideoFrames;
- (int)totalVideoFrames;
- (void)setDisplayCompositedVideoFrames:(int)frames;
- (void)setDroppedVideoFrames:(int)frames;
- (void)setTotalVideoFrames:(int)frames;
@end

@implementation RWIProtocolDOMVideoPlaybackQuality

- (RWIProtocolDOMVideoPlaybackQuality)initWithDisplayCompositedVideoFrames:(int)frames droppedVideoFrames:(int)videoFrames totalVideoFrames:(int)totalVideoFrames
{
  v5 = *&totalVideoFrames;
  v6 = *&videoFrames;
  v7 = *&frames;
  v12.receiver = self;
  v12.super_class = RWIProtocolDOMVideoPlaybackQuality;
  v8 = [(RWIProtocolJSONObject *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(RWIProtocolDOMVideoPlaybackQuality *)v8 setDisplayCompositedVideoFrames:v7];
    [(RWIProtocolDOMVideoPlaybackQuality *)v9 setDroppedVideoFrames:v6];
    [(RWIProtocolDOMVideoPlaybackQuality *)v9 setTotalVideoFrames:v5];
    v10 = v9;
  }

  return v9;
}

- (void)setDisplayCompositedVideoFrames:(int)frames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&frames forKey:@"displayCompositedVideoFrames"];
}

- (int)displayCompositedVideoFrames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"displayCompositedVideoFrames"];
}

- (void)setDroppedVideoFrames:(int)frames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&frames forKey:@"droppedVideoFrames"];
}

- (int)droppedVideoFrames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"droppedVideoFrames"];
}

- (void)setTotalVideoFrames:(int)frames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&frames forKey:@"totalVideoFrames"];
}

- (int)totalVideoFrames
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDOMVideoPlaybackQuality;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"totalVideoFrames"];
}

@end