@interface MRIRNode
+ (id)nodeFromIRNode:(id)node;
+ (id)nodeFromOutputDevice:(id)device;
- (BOOL)isEqual:(id)equal;
- (MRIRNode)initWithAVOutputDeviceID:(id)d isLocal:(BOOL)local;
- (NSString)description;
- (unint64_t)hash;
@end

@implementation MRIRNode

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 initWithFormat:@"<%@ (%p): ", v5, self];

  avOutputDeviceIdentifier = [(MRIRNode *)self avOutputDeviceIdentifier];
  [v6 appendFormat:@"avOutputDeviceIdentifier: %@", avOutputDeviceIdentifier];

  rapportIdentifier = [(MRIRNode *)self rapportIdentifier];
  [v6 appendFormat:@", rapportIdentifier: %@", rapportIdentifier];

  idsIdentifier = [(MRIRNode *)self idsIdentifier];
  [v6 appendFormat:@", idsIdentifier: %@", idsIdentifier];

  [v6 appendString:@">"];

  return v6;
}

- (unint64_t)hash
{
  avOutputDeviceIdentifier = [(MRIRNode *)self avOutputDeviceIdentifier];
  v3 = [avOutputDeviceIdentifier hash];

  return v3;
}

+ (id)nodeFromIRNode:(id)node
{
  nodeCopy = node;
  v4 = objc_alloc_init(MRIRNode);
  avOutpuDeviceIdentifier = [nodeCopy avOutpuDeviceIdentifier];
  [(MRIRNode *)v4 setAvOutputDeviceIdentifier:avOutpuDeviceIdentifier];

  rapportIdentifier = [nodeCopy rapportIdentifier];
  [(MRIRNode *)v4 setRapportIdentifier:rapportIdentifier];

  idsIdentifier = [nodeCopy idsIdentifier];
  [(MRIRNode *)v4 setIdsIdentifier:idsIdentifier];

  isLocal = [nodeCopy isLocal];
  [(MRIRNode *)v4 setIsLocal:isLocal];

  return v4;
}

+ (id)nodeFromOutputDevice:(id)device
{
  deviceCopy = device;
  v4 = [deviceCopy deviceType] == 4;
  v5 = [MRIRNode alloc];
  v6 = [deviceCopy uid];

  v7 = [(MRIRNode *)v5 initWithAVOutputDeviceID:v6 isLocal:v4];

  return v7;
}

- (MRIRNode)initWithAVOutputDeviceID:(id)d isLocal:(BOOL)local
{
  localCopy = local;
  dCopy = d;
  v8 = dCopy;
  if (!localCopy && objc_msgSend_isEqualToString_(dCopy))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MRRouteRepresentable.m" lineNumber:57 description:@"Non local MRIRNodes not allowed with id = Speaker!"];
  }

  v14.receiver = self;
  v14.super_class = MRIRNode;
  v10 = [(MRIRNode *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (localCopy)
    {
      v12 = @"Speaker";
    }

    else
    {
      v12 = v8;
    }

    [(MRIRNode *)v10 setAvOutputDeviceIdentifier:v12];
    [(MRIRNode *)v11 setIsLocal:localCopy];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if ([(MRIRNode *)equalCopy conformsToProtocol:&unk_1F15B23E8])
  {
    v6 = v5;
    avOutputDeviceIdentifier = [(MRIRNode *)self avOutputDeviceIdentifier];
    avOutputDeviceIdentifier2 = [(MRIRNode *)v6 avOutputDeviceIdentifier];
    if (avOutputDeviceIdentifier == avOutputDeviceIdentifier2)
    {
      v9 = 1;
    }

    else
    {
      v9 = [avOutputDeviceIdentifier isEqual:avOutputDeviceIdentifier2];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end