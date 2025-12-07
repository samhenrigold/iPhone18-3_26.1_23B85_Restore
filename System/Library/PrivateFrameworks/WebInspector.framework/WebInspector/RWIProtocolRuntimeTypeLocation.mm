@interface RWIProtocolRuntimeTypeLocation
- (NSString)sourceID;
- (RWIProtocolRuntimeTypeLocation)initWithTypeInformationDescriptor:(int)descriptor sourceID:(id)d divot:(int)divot;
- (int)divot;
- (int)typeInformationDescriptor;
- (void)setDivot:(int)divot;
- (void)setSourceID:(id)d;
- (void)setTypeInformationDescriptor:(int)descriptor;
@end

@implementation RWIProtocolRuntimeTypeLocation

- (RWIProtocolRuntimeTypeLocation)initWithTypeInformationDescriptor:(int)descriptor sourceID:(id)d divot:(int)divot
{
  v5 = *&divot;
  v6 = *&descriptor;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = RWIProtocolRuntimeTypeLocation;
  v9 = [(RWIProtocolJSONObject *)&v12 init];
  if (v9)
  {
    if (!dCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"sourceID"}];
    }

    [(RWIProtocolRuntimeTypeLocation *)v9 setTypeInformationDescriptor:v6];
    [(RWIProtocolRuntimeTypeLocation *)v9 setSourceID:dCopy];
    [(RWIProtocolRuntimeTypeLocation *)v9 setDivot:v5];
    v10 = v9;
  }

  return v9;
}

- (void)setTypeInformationDescriptor:(int)descriptor
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&descriptor forKey:@"typeInformationDescriptor"];
}

- (int)typeInformationDescriptor
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"typeInformationDescriptor"];
}

- (void)setSourceID:(id)d
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  [(RWIProtocolJSONObject *)&v3 setString:d forKey:@"sourceID"];
}

- (NSString)sourceID
{
  v4.receiver = self;
  v4.super_class = RWIProtocolRuntimeTypeLocation;
  v2 = [(RWIProtocolJSONObject *)&v4 stringForKey:@"sourceID"];

  return v2;
}

- (void)setDivot:(int)divot
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&divot forKey:@"divot"];
}

- (int)divot
{
  v3.receiver = self;
  v3.super_class = RWIProtocolRuntimeTypeLocation;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"divot"];
}

@end