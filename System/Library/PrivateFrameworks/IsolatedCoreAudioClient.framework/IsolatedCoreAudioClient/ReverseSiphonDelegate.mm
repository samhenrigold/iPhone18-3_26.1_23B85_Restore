@interface ReverseSiphonDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (ReverseSiphonDelegate)init;
- (void)AudioAvailabilityCallback:(unint64_t)callback atSample:(unint64_t)sample with:(id)with;
- (void)LapseCallback:(int)callback with:(id)with;
@end

@implementation ReverseSiphonDelegate

- (void)LapseCallback:(int)callback with:(id)with
{
  v4 = *&callback;
  withCopy = with;
  (self->mLapseCallback)(v4, self->mLapseData);
  withCopy[2](withCopy, 0);
}

- (void)AudioAvailabilityCallback:(unint64_t)callback atSample:(unint64_t)sample with:(id)with
{
  withCopy = with;
  mAvailabilityCallback = self->mAvailabilityCallback;
  if (mAvailabilityCallback)
  {
    mAvailabilityCallback(callback, sample, self->mAvailabilityData);
  }

  withCopy[2](withCopy, 0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  reverseInterface = [(ReverseSiphonDelegate *)self reverseInterface];
  [connectionCopy setExportedInterface:reverseInterface];

  [connectionCopy setExportedObject:self];
  [connectionCopy activate];

  return 1;
}

- (ReverseSiphonDelegate)init
{
  v9.receiver = self;
  v9.super_class = ReverseSiphonDelegate;
  v2 = [(ReverseSiphonDelegate *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->mAvailabilityCallback = 0;
    v2->mLapseCallback = [ReverseSiphonDelegate init]::$_0::__invoke;
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28677A438];
    [(ReverseSiphonDelegate *)v3 setReverseInterface:v4];

    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    [(ReverseSiphonDelegate *)v3 setReverseListener:anonymousListener];

    reverseListener = [(ReverseSiphonDelegate *)v3 reverseListener];
    [reverseListener setDelegate:v3];

    reverseListener2 = [(ReverseSiphonDelegate *)v3 reverseListener];
    [reverseListener2 activate];
  }

  return v3;
}

@end