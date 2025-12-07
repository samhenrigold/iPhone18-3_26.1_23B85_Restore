@interface AVPlayerPlaybackCoordinatorStorage
- (AVPlayerPlaybackCoordinatorStorage)init;
- (void)dealloc;
@end

@implementation AVPlayerPlaybackCoordinatorStorage

- (AVPlayerPlaybackCoordinatorStorage)init
{
  v6.receiver = self;
  v6.super_class = AVPlayerPlaybackCoordinatorStorage;
  v3 = [(AVPlayerPlaybackCoordinatorStorage *)&v6 init];
  if (v3)
  {
    v3->rwQueue = av_readwrite_dispatch_queue_create("com.apple.avfoundation.playerplaybackcoordinator.storage", v2);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)dealloc
{
  rwQueue = self->rwQueue;
  if (rwQueue)
  {
    dispatch_release(rwQueue);
  }

  v4.receiver = self;
  v4.super_class = AVPlayerPlaybackCoordinatorStorage;
  [(AVPlayerPlaybackCoordinatorStorage *)&v4 dealloc];
}

@end