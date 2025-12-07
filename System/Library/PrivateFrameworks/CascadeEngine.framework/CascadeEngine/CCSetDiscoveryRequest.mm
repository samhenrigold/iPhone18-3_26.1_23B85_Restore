@interface CCSetDiscoveryRequest
+ (id)setDiscoveryRequestFromPeerToPeerMessage:(id)message setUUIDsToDiscover:(id)discover requestOptions:(unsigned __int16)options startAfterSet:(id)set sizeThreshold:(id)threshold;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCSetDiscoveryRequest

+ (id)setDiscoveryRequestFromPeerToPeerMessage:(id)message setUUIDsToDiscover:(id)discover requestOptions:(unsigned __int16)options startAfterSet:(id)set sizeThreshold:(id)threshold
{
  optionsCopy = options;
  thresholdCopy = threshold;
  setCopy = set;
  discoverCopy = discover;
  messageCopy = message;
  v15 = [CCSetDiscoveryRequest alloc];
  syncReason = [messageCopy syncReason];
  senderDeviceUUID = [messageCopy senderDeviceUUID];
  protocolVersion = [messageCopy protocolVersion];
  [messageCopy walltime];
  v20 = v19;

  v21 = [(CCPeerToPeerMessage *)v15 initWithSyncReason:syncReason senderDeviceUUID:senderDeviceUUID protocolVersion:protocolVersion wallTime:v20];
  [(CCSetDiscoveryRequest *)v21 setSetUUIDsToDiscover:discoverCopy];

  [(CCSetDiscoveryRequest *)v21 setRequestOptions:optionsCopy];
  [(CCSetDiscoveryRequest *)v21 setStartAfterSet:setCopy];

  [(CCSetDiscoveryRequest *)v21 setSizeThreshold:thresholdCopy];

  return v21;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CCSetDiscoveryRequest;
  v5 = [(CCPeerToPeerMessage *)&v14 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"setIdentifiersToDiscover"];
    v7 = v5[6];
    v5[6] = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"setDiscoveryRequestOptions"];
    *(v5 + 20) = v8;

    v9 = [dictionaryCopy objectForKeyedSubscript:@"startAfterSet"];
    v10 = v5[7];
    v5[7] = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"sizeThreshold"];
    v12 = v5[8];
    v5[8] = v11;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v13[1] = *MEMORY[0x1E69E9840];
  setUUIDsToDiscover = self->_setUUIDsToDiscover;
  v12 = @"setIdentifiersToDiscover";
  v13[0] = setUUIDsToDiscover;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v5 = [v4 mutableCopy];

  if (self->_requestOptions)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:?];
    [v5 setObject:v6 forKey:@"setDiscoveryRequestOptions"];
  }

  startAfterSet = self->_startAfterSet;
  if (startAfterSet)
  {
    [v5 setObject:startAfterSet forKey:@"startAfterSet"];
  }

  sizeThreshold = self->_sizeThreshold;
  if (sizeThreshold)
  {
    [v5 setObject:sizeThreshold forKey:@"sizeThreshold"];
  }

  v11.receiver = self;
  v11.super_class = CCSetDiscoveryRequest;
  dictionaryRepresentation = [(CCPeerToPeerMessage *)&v11 dictionaryRepresentation];
  [v5 addEntriesFromDictionary:dictionaryRepresentation];

  return v5;
}

@end