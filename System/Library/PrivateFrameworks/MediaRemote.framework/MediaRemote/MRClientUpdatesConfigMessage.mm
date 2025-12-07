@interface MRClientUpdatesConfigMessage
- (BOOL)artworkUpdates;
- (BOOL)keyboardUpdates;
- (BOOL)nowPlayingUpdates;
- (BOOL)outputDeviceUpdates;
- (BOOL)systemEndpointUpdates;
- (BOOL)volumeUpdates;
- (MRClientUpdatesConfigMessage)initWithNowPlayingUpdates:(BOOL)updates artworkUpdates:(BOOL)artworkUpdates volumeUpdates:(BOOL)volumeUpdates keyboardUpdates:(BOOL)keyboardUpdates outputDeviceUpdates:(BOOL)deviceUpdates systemEndpointUpdates:(BOOL)endpointUpdates subscribedPlayerPaths:(id)paths;
- (MRClientUpdatesConfigMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error;
@end

@implementation MRClientUpdatesConfigMessage

- (MRClientUpdatesConfigMessage)initWithUnderlyingCodableMessage:(id)message error:(id)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v19.receiver = self;
  v19.super_class = MRClientUpdatesConfigMessage;
  v7 = [(MRProtocolMessage *)&v19 initWithUnderlyingCodableMessage:messageCopy error:error];
  if (v7)
  {
    subscribedPlayerPaths = [messageCopy subscribedPlayerPaths];
    v9 = [subscribedPlayerPaths count];

    if (v9)
    {
      subscribedPlayerPaths2 = [messageCopy subscribedPlayerPaths];
      v11 = [subscribedPlayerPaths2 mr_map:&__block_literal_global_0];
      subscribedPlayerPaths = v7->_subscribedPlayerPaths;
      v7->_subscribedPlayerPaths = v11;
    }

    else
    {
      v13 = [MRPlayerPath alloc];
      subscribedPlayerPaths2 = +[MROrigin localOrigin];
      subscribedPlayerPaths = +[MRClient anyClient];
      v14 = +[MRPlayer anyPlayer];
      v15 = [(MRPlayerPath *)v13 initWithOrigin:subscribedPlayerPaths2 client:subscribedPlayerPaths player:v14];
      v20[0] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v17 = v7->_subscribedPlayerPaths;
      v7->_subscribedPlayerPaths = v16;
    }
  }

  return v7;
}

MRPlayerPath *__71__MRClientUpdatesConfigMessage_initWithUnderlyingCodableMessage_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRPlayerPath alloc] initWithProtobuf:v2];

  return v3;
}

- (MRClientUpdatesConfigMessage)initWithNowPlayingUpdates:(BOOL)updates artworkUpdates:(BOOL)artworkUpdates volumeUpdates:(BOOL)volumeUpdates keyboardUpdates:(BOOL)keyboardUpdates outputDeviceUpdates:(BOOL)deviceUpdates systemEndpointUpdates:(BOOL)endpointUpdates subscribedPlayerPaths:(id)paths
{
  endpointUpdatesCopy = endpointUpdates;
  deviceUpdatesCopy = deviceUpdates;
  keyboardUpdatesCopy = keyboardUpdates;
  volumeUpdatesCopy = volumeUpdates;
  artworkUpdatesCopy = artworkUpdates;
  updatesCopy = updates;
  pathsCopy = paths;
  v24.receiver = self;
  v24.super_class = MRClientUpdatesConfigMessage;
  v17 = [(MRProtocolMessage *)&v24 init];
  if (v17)
  {
    v18 = [pathsCopy copy];
    subscribedPlayerPaths = v17->_subscribedPlayerPaths;
    v17->_subscribedPlayerPaths = v18;

    v20 = objc_alloc_init(_MRClientUpdatesConfigurationProtobuf);
    [(_MRClientUpdatesConfigurationProtobuf *)v20 setNowPlayingUpdates:updatesCopy];
    [(_MRClientUpdatesConfigurationProtobuf *)v20 setArtworkUpdates:artworkUpdatesCopy];
    [(_MRClientUpdatesConfigurationProtobuf *)v20 setVolumeUpdates:volumeUpdatesCopy];
    [(_MRClientUpdatesConfigurationProtobuf *)v20 setKeyboardUpdates:keyboardUpdatesCopy];
    [(_MRClientUpdatesConfigurationProtobuf *)v20 setOutputDeviceUpdates:deviceUpdatesCopy];
    [(_MRClientUpdatesConfigurationProtobuf *)v20 setSystemEndpointUpdates:endpointUpdatesCopy];
    v21 = [(NSArray *)v17->_subscribedPlayerPaths mr_map:&__block_literal_global_10];
    v22 = [v21 mutableCopy];
    [(_MRClientUpdatesConfigurationProtobuf *)v20 setSubscribedPlayerPaths:v22];

    [(MRProtocolMessage *)v17 setUnderlyingCodableMessage:v20];
  }

  return v17;
}

- (BOOL)nowPlayingUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  nowPlayingUpdates = [underlyingCodableMessage nowPlayingUpdates];

  return nowPlayingUpdates;
}

- (BOOL)artworkUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  artworkUpdates = [underlyingCodableMessage artworkUpdates];

  return artworkUpdates;
}

- (BOOL)volumeUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  volumeUpdates = [underlyingCodableMessage volumeUpdates];

  return volumeUpdates;
}

- (BOOL)keyboardUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  keyboardUpdates = [underlyingCodableMessage keyboardUpdates];

  return keyboardUpdates;
}

- (BOOL)outputDeviceUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  outputDeviceUpdates = [underlyingCodableMessage outputDeviceUpdates];

  return outputDeviceUpdates;
}

- (BOOL)systemEndpointUpdates
{
  underlyingCodableMessage = [(MRProtocolMessage *)self underlyingCodableMessage];
  systemEndpointUpdates = [underlyingCodableMessage systemEndpointUpdates];

  return systemEndpointUpdates;
}

@end