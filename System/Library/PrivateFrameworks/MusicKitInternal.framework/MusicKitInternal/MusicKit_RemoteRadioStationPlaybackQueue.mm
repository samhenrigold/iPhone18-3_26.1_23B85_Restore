@interface MusicKit_RemoteRadioStationPlaybackQueue
- (MusicKit_RemoteRadioStationPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent;
- (void)setQueueWithPath:(id)path sessionID:(id)d completionHandler:(id)handler;
@end

@implementation MusicKit_RemoteRadioStationPlaybackQueue

- (MusicKit_RemoteRadioStationPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MusicKit_RemoteRadioStationPlaybackQueue;
  v7 = [(MusicKit_RemotePlaybackQueue *)&v11 initWithReplaceQueueIntent:intent];
  if (v7)
  {
    _underlyingModelObject = [itemCopy _underlyingModelObject];
    underlyingStation = v7->_underlyingStation;
    v7->_underlyingStation = _underlyingModelObject;
  }

  return v7;
}

- (void)setQueueWithPath:(id)path sessionID:(id)d completionHandler:(id)handler
{
  v35[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  identifiers = [(MPModelRadioStation *)self->_underlyingStation identifiers];
  radio = [identifiers radio];
  stationStringID = [radio stationStringID];

  v13 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetRadioStationIDType();
  MRSystemAppPlaybackQueueSetRadioStationStringIdentifier();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2050000000;
  v14 = getMPRemotePlaybackQueueClass_softClass;
  v33 = getMPRemotePlaybackQueueClass_softClass;
  if (!getMPRemotePlaybackQueueClass_softClass)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __getMPRemotePlaybackQueueClass_block_invoke;
    v29[3] = &unk_1E84C3838;
    v29[4] = &v30;
    __getMPRemotePlaybackQueueClass_block_invoke(v29);
    v14 = v31[3];
  }

  v15 = v14;
  _Block_object_dispose(&v30, 8);
  v16 = [v14 queueWithMediaRemotePlaybackQueue:v13];
  v17 = v16;
  [v16 _mediaRemotePlaybackQueue];
  [(MusicKit_RemotePlaybackQueue *)self mrReplaceIntentFromMusicKitReplaceQueueIntent:[(MusicKit_RemotePlaybackQueue *)self replaceQueueIntent]];
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  v18 = dCopy;
  v19 = v18;
  if (!v18)
  {
    v20 = +[MusicKit_PlayerPathSessionManager sharedSessionManager];
    v19 = [v20 sessionIDForPlayerPath:pathCopy];
  }

  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v22 = *MEMORY[0x1E69B10E8];
  v34[0] = *MEMORY[0x1E69B1268];
  v34[1] = v22;
  v35[0] = ExternalRepresentation;
  v35[1] = v19;
  v34[2] = *MEMORY[0x1E69B1090];
  v35[2] = MEMORY[0x1E695E118];
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
  v28 = 0;
  v24 = [(MusicKit_RemotePlaybackQueue *)self mrPlayerPathFromPlaybackPath:pathCopy error:&v28];
  v25 = v28;
  if (v25)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v25);
    }
  }

  else
  {
    v27 = handlerCopy;
    MRMediaRemoteSendCommandToPlayerWithResult();
  }
}

@end