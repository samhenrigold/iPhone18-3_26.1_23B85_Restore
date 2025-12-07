@interface AppAttestCDHash
- (AppAttestCDHash)initWithHash:(id)hash andType:(unsigned __int8)type;
@end

@implementation AppAttestCDHash

- (AppAttestCDHash)initWithHash:(id)hash andType:(unsigned __int8)type
{
  typeCopy = type;
  hashCopy = hash;
  v10.receiver = self;
  v10.super_class = AppAttestCDHash;
  v7 = [(AppAttestCDHash *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(AppAttestCDHash *)v7 setCdHash:hashCopy];
    [(AppAttestCDHash *)v8 setType:typeCopy];
  }

  return v8;
}

@end