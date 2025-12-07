@interface MRDAVHostedExternalDevicePendingClientState
- (id)description;
@end

@implementation MRDAVHostedExternalDevicePendingClientState

- (id)description
{
  v3 = [[NSMutableString alloc] initWithFormat:@"<%@ %p{\n", objc_opt_class(), self];
  [v3 appendFormat:@" hasConnected"];
  if (self->_connectionState)
  {
    v4 = MRExternalDeviceConnectionStateCopyDescription();
    [v3 appendFormat:@"    connectionState=%@\n", v4];
  }

  if (self->_connectionStateError)
  {
    [v3 appendFormat:@"    connectionStateError=%@\n", self->_connectionStateError];
  }

  if (self->_deviceInfo)
  {
    [v3 appendFormat:@"    deviceInfo = %@\n", self->_deviceInfo];
  }

  if (self->_endpoint)
  {
    [v3 appendFormat:@"    endpoint = %@\n", self->_endpoint];
  }

  volume = self->_volume;
  if (volume)
  {
    [(NSNumber *)volume floatValue];
    [v3 appendFormat:@"    volume = %f\n", v6];
  }

  volumeCapabilities = self->_volumeCapabilities;
  if (volumeCapabilities)
  {
    [(NSNumber *)volumeCapabilities unsignedIntValue];
    v8 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
    [v3 appendFormat:@"    volumeCapabilities = %@\n", v8];
  }

  if ([(NSMutableDictionary *)self->_outputDeviceVolume count])
  {
    v9 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    outputDeviceVolumes = %@\n", v9];
  }

  if ([(NSMutableDictionary *)self->_outputDeviceVolumeCapabilities count])
  {
    v10 = [[NSMutableDictionary alloc] initWithCapacity:{-[NSMutableDictionary count](self->_outputDeviceVolumeCapabilities, "count")}];
    outputDeviceVolumeCapabilities = self->_outputDeviceVolumeCapabilities;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10007F358;
    v19[3] = &unk_1004B8A90;
    v20 = v10;
    v12 = v10;
    [(NSMutableDictionary *)outputDeviceVolumeCapabilities enumerateKeysAndObjectsUsingBlock:v19];
    v13 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    outputDeviceVolumeCapabilities = %@\n", v13];
  }

  if ([(NSMutableDictionary *)self->_outputDeviceVolume count])
  {
    v14 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    outputDeviceMutes = %@\n", v14];
  }

  if (self->_outputDeviceModifications)
  {
    v15 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    modifications = %@\n", v15];
  }

  if ([(NSMutableDictionary *)self->_discoverySessionConfigurationsResults count])
  {
    v16 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    discoveryResults = %@\n", v16];
  }

  if (self->_groupSessionToken)
  {
    v17 = MRCreateIndentedDebugDescriptionFromObject();
    [v3 appendFormat:@"    groupSessionToken = %@\n", v17];
  }

  [v3 appendFormat:@"}>\n"];

  return v3;
}

@end