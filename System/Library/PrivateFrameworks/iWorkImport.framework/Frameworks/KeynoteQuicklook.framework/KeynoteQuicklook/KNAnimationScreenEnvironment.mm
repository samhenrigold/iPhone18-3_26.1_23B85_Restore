@interface KNAnimationScreenEnvironment
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsHDR;
- (KNAnimationScreenEnvironment)init;
- (double)currentEDRHeadroom;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setColorSpace:(CGColorSpace *)space;
@end

@implementation KNAnimationScreenEnvironment

- (KNAnimationScreenEnvironment)init
{
  v3.receiver = self;
  v3.super_class = KNAnimationScreenEnvironment;
  result = [(KNAnimationScreenEnvironment *)&v3 init];
  if (result)
  {
    result->_pixelAspectRatio = 1.0;
  }

  return result;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = KNAnimationScreenEnvironment;
  [(KNAnimationScreenEnvironment *)&v3 dealloc];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D811A8]) initWithObject:self];
  [v3 addField:@"colorSpace" format:{@"%@", -[KNAnimationScreenEnvironment colorSpace](self, "colorSpace")}];
  if ([(KNAnimationScreenEnvironment *)self hasActiveSceneCaptureState])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 addField:@"hasActiveSceneCaptureState" format:{@"%@", v4}];
  [(KNAnimationScreenEnvironment *)self pixelAspectRatio];
  [v3 addField:@"pixelAspectRatio" format:{@"%f", v5}];
  if ([(KNAnimationScreenEnvironment *)self shouldDisableHDRSupport])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 addField:@"shouldDisableHDRSupport" format:{@"%@", v6}];
  if ([(KNAnimationScreenEnvironment *)self supportsHDR])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 addField:@"supportsHDR" format:{@"%@", v7}];
  if ([(KNAnimationScreenEnvironment *)self isPQReferenceMode])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v3 addField:@"isPQReferenceMode" format:{@"%@", v8}];
  [(KNAnimationScreenEnvironment *)self currentEDRHeadroom];
  [v3 addField:@"currentEDRHeadroom" format:{@"%f", v9}];
  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    v5 = TSUDynamicCast();

    if (v5 && (v6 = -[KNAnimationScreenEnvironment colorSpace](self, "colorSpace"), v6 == [v5 colorSpace]) && (v7 = -[KNAnimationScreenEnvironment hasActiveSceneCaptureState](self, "hasActiveSceneCaptureState"), v7 == objc_msgSend(v5, "hasActiveSceneCaptureState")) && (-[KNAnimationScreenEnvironment pixelAspectRatio](self, "pixelAspectRatio"), v9 = v8, objc_msgSend(v5, "pixelAspectRatio"), v9 == v10))
    {
      shouldDisableHDRSupport = [(KNAnimationScreenEnvironment *)self shouldDisableHDRSupport];
      v12 = shouldDisableHDRSupport ^ [v5 shouldDisableHDRSupport] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x277D811E8]);
  [v3 addObject:{-[KNAnimationScreenEnvironment colorSpace](self, "colorSpace")}];
  [v3 addBool:{-[KNAnimationScreenEnvironment hasActiveSceneCaptureState](self, "hasActiveSceneCaptureState")}];
  uiScreen = [(KNAnimationScreenEnvironment *)self uiScreen];
  [v3 addObject:uiScreen];

  v5 = MEMORY[0x277CCABB0];
  [(KNAnimationScreenEnvironment *)self pixelAspectRatio];
  v6 = [v5 numberWithDouble:?];
  [v3 addObject:v6];

  [v3 addBool:{-[KNAnimationScreenEnvironment shouldDisableHDRSupport](self, "shouldDisableHDRSupport")}];
  hashValue = [v3 hashValue];

  return hashValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(KNAnimationScreenEnvironment);
  [(KNAnimationScreenEnvironment *)v4 setColorSpace:[(KNAnimationScreenEnvironment *)self colorSpace]];
  [(KNAnimationScreenEnvironment *)v4 setHasActiveSceneCaptureState:[(KNAnimationScreenEnvironment *)self hasActiveSceneCaptureState]];
  uiScreen = [(KNAnimationScreenEnvironment *)self uiScreen];
  [(KNAnimationScreenEnvironment *)v4 setUiScreen:uiScreen];

  [(KNAnimationScreenEnvironment *)self pixelAspectRatio];
  [(KNAnimationScreenEnvironment *)v4 setPixelAspectRatio:?];
  [(KNAnimationScreenEnvironment *)v4 setShouldDisableHDRSupport:[(KNAnimationScreenEnvironment *)self shouldDisableHDRSupport]];
  return v4;
}

- (void)setColorSpace:(CGColorSpace *)space
{
  if (self->_colorSpace != space)
  {
    CGColorSpaceRetain(space);
    CGColorSpaceRelease(self->_colorSpace);
    self->_colorSpace = space;
  }
}

- (double)currentEDRHeadroom
{
  uiScreen = self->_uiScreen;
  if (!uiScreen)
  {
    return 1.0;
  }

  [(UIScreen *)uiScreen currentEDRHeadroom];
  return result;
}

- (BOOL)supportsHDR
{
  if ([(KNAnimationScreenEnvironment *)self shouldDisableHDRSupport]|| [(KNAnimationScreenEnvironment *)self hasActiveSceneCaptureState])
  {
    LOBYTE(uiScreen) = 0;
  }

  else
  {
    uiScreen = self->_uiScreen;
    if (uiScreen)
    {
      [(UIScreen *)uiScreen potentialEDRHeadroom];
      LOBYTE(uiScreen) = v4 > 2.0;
    }
  }

  return uiScreen;
}

@end