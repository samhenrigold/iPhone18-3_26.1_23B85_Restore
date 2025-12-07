@interface KNTransitionNull
+ (NSDictionary)defaultAttributes;
+ (id)localizedMenuString:(int64_t)string;
- (void)addAnimationsTo:(id)to context:(id)context;
@end

@implementation KNTransitionNull

+ (id)localizedMenuString:(int64_t)string
{
  v3 = sub_275DC204C(self);
  v4 = [v3 localizedStringForKey:@"None *NullTransition*" value:@"None" table:@"Keynote"];

  return v4;
}

+ (NSDictionary)defaultAttributes
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"KNTransitionAttributesDuration";
  v5[0] = &unk_2884F3738;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (void)addAnimationsTo:(id)to context:(id)context
{
  contextCopy = context;
  toCopy = to;
  textures = [contextCopy textures];
  firstObject = [textures firstObject];

  textures2 = [contextCopy textures];
  lastObject = [textures2 lastObject];

  isFrameRenderer = [contextCopy isFrameRenderer];
  v11 = *MEMORY[0x277D80560];
  v12 = [MEMORY[0x277CD9E10] animationWithKeyPath:*MEMORY[0x277D80560]];
  v13 = v12;
  if (isFrameRenderer)
  {
    v14 = MEMORY[0x277CBEC38];
    [v12 setFromValue:MEMORY[0x277CBEC38]];
    v15 = MEMORY[0x277CBEC28];
    [v13 setToValue:MEMORY[0x277CBEC28]];
    [v13 setDuration:0.001];
    v16 = *MEMORY[0x277CDA230];
    [v13 setFillMode:*MEMORY[0x277CDA230]];
    layer = [lastObject layer];
    [toCopy setObject:v13 forKey:layer];

    layer3 = [MEMORY[0x277CD9E10] animationWithKeyPath:v11];
    [layer3 setFromValue:v15];
    [layer3 setToValue:v14];
    [layer3 setDuration:0.001];
    [layer3 setFillMode:v16];
    layer2 = [firstObject layer];
    [toCopy setObject:layer3 forKey:layer2];

    toCopy = layer2;
  }

  else
  {
    [v12 setFromValue:MEMORY[0x277CBEC28]];
    [v13 setToValue:MEMORY[0x277CBEC38]];
    [v13 setDuration:0.001];
    [v13 setFillMode:*MEMORY[0x277CDA238]];
    layer3 = [firstObject layer];
    [toCopy setObject:v13 forKey:layer3];
  }
}

@end