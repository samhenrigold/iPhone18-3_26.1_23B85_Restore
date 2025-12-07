@interface CCSignalDoneFetchingMergeableDeltas
+ (id)doneFetchingMergeableDeltasMessageFromPeerToPeerMessage:(id)message isReciprocal:(BOOL)reciprocal;
- (id)dictionaryRepresentation;
- (id)initFromDictionary:(id)dictionary;
@end

@implementation CCSignalDoneFetchingMergeableDeltas

+ (id)doneFetchingMergeableDeltasMessageFromPeerToPeerMessage:(id)message isReciprocal:(BOOL)reciprocal
{
  reciprocalCopy = reciprocal;
  messageCopy = message;
  v6 = [CCSignalDoneFetchingMergeableDeltas alloc];
  syncReason = [messageCopy syncReason];
  senderDeviceUUID = [messageCopy senderDeviceUUID];
  protocolVersion = [messageCopy protocolVersion];
  [messageCopy walltime];
  v11 = v10;

  v12 = [(CCPeerToPeerMessage *)v6 initWithSyncReason:syncReason senderDeviceUUID:senderDeviceUUID protocolVersion:protocolVersion wallTime:v11];
  [(CCSignalDoneFetchingMergeableDeltas *)v12 setIsReciprocalRequest:reciprocalCopy];

  return v12;
}

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = CCSignalDoneFetchingMergeableDeltas;
  v5 = [(CCPeerToPeerMessage *)&v8 initFromDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isReciprocalRequest"];
    v5[40] = [v6 BOOLValue];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_isReciprocalRequest];
  [v3 setObject:v4 forKeyedSubscript:@"isReciprocalRequest"];

  v7.receiver = self;
  v7.super_class = CCSignalDoneFetchingMergeableDeltas;
  dictionaryRepresentation = [(CCPeerToPeerMessage *)&v7 dictionaryRepresentation];
  [v3 addEntriesFromDictionary:dictionaryRepresentation];

  return v3;
}

@end