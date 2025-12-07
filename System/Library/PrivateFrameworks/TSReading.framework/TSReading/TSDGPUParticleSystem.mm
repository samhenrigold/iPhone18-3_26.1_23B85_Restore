@interface TSDGPUParticleSystem
+ (CGSize)p_particleSystemSizeWithRequestedNumber:(unint64_t)number objectSize:(CGSize)size;
+ (id)newParticleSystemWithNumberOfParticles:(unint64_t)particles objectSize:(CGSize)size slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator shader:(id)shader metalContext:(id)self0;
+ (id)newParticleSystemWithParticleSize:(CGSize)size particleSystemSize:(CGSize)systemSize objectSize:(CGSize)objectSize slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator shader:(id)self0 metalContext:(id)self1;
- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)point;
- ($94F468A8D4C62B317260615823C2B210)colorTexCoordAtIndexPoint:(CGPoint)point;
- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point;
- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)index particleIndexPoint:(CGPoint)point;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point;
- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point;
- (BOOL)visibilityAtIndexPoint:(CGPoint)point;
- (CGContext)newContextFromTexture:(id)texture;
- (CGPoint)indexPointFromIndex:(unint64_t)index;
- (CGPoint)startingPointAtIndexPoint:(CGPoint)point;
- (CGSize)objectSize;
- (CGSize)p_resizeSystemToFitWithinMaxVerticesWithSystemSize:(CGSize)size;
- (CGSize)particleSize;
- (CGSize)slideSize;
- (CGSize)vertexTextureSize;
- (NSArray)dataBufferAttributes;
- (NSString)description;
- (TSDGPUParticleSystem)initWithParticleSize:(CGSize)size particleSystemSize:(CGSize)systemSize objectSize:(CGSize)objectSize slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator shader:(id)self0 metalContext:(id)self1;
- (double)rotationMax;
- (double)scaleAtIndexPoint:(CGPoint)point;
- (double)speedMax;
- (void)dealloc;
- (void)drawMetalWithEncoder:(id)encoder;
- (void)p_logParticleInformation;
- (void)p_reverseParticleDataDrawOrder;
- (void)p_setDataBufferAttribute:(id *)attribute withName:(id)name defaultDataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count;
- (void)p_setupDataBufferWithParticleCount:(unint64_t)count visibleParticleCount:(unint64_t)particleCount;
- (void)p_setupParticleDataWithTexture:(id)texture;
- (void)p_setupParticleSystemWithParticleSize:(CGSize)size particleSystemSize:(CGSize)systemSize objectSize:(CGSize)objectSize slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator;
- (void)p_setupParticleTextureDataWithTexture:(id)texture capabilities:(id)capabilities;
- (void)p_setupVertexData;
- (void)setupMetalWithShader:(id)shader;
- (void)setupWithTexture:(id)texture particleTextureSize:(CGSize)size reverseDrawOrder:(BOOL)order capabilities:(id)capabilities;
@end

@implementation TSDGPUParticleSystem

+ (id)newParticleSystemWithNumberOfParticles:(unint64_t)particles objectSize:(CGSize)size slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator shader:(id)shader metalContext:(id)self0
{
  height = slideSize.height;
  width = slideSize.width;
  v16 = size.height;
  v17 = size.width;
  [TSDGPUParticleSystem p_particleSystemSizeWithRequestedNumber:particles objectSize:?];
  v20 = v19;
  v22 = v21;
  if (!generator)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGPUParticleSystem newParticleSystemWithNumberOfParticles:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:]"];
    [currentHandler handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 72, @"invalid nil value for '%s'", "randomGenerator"}];
  }

  return [[self alloc] initWithParticleSize:direction particleSystemSize:generator objectSize:shader slideSize:context duration:ceil(v17 / v20) direction:ceil(v16 / v22) randomGenerator:v20 shader:v22 metalContext:{v17, v16, width, height, *&duration}];
}

+ (id)newParticleSystemWithParticleSize:(CGSize)size particleSystemSize:(CGSize)systemSize objectSize:(CGSize)objectSize slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator shader:(id)self0 metalContext:(id)self1
{
  height = slideSize.height;
  width = slideSize.width;
  v16 = objectSize.height;
  v17 = objectSize.width;
  v18 = systemSize.height;
  v19 = systemSize.width;
  v20 = size.height;
  v21 = size.width;
  v22 = [self alloc];

  return [v22 initWithParticleSize:direction particleSystemSize:generator objectSize:shader slideSize:context duration:v21 direction:v20 randomGenerator:v19 shader:v18 metalContext:{v17, v16, width, height}];
}

- (TSDGPUParticleSystem)initWithParticleSize:(CGSize)size particleSystemSize:(CGSize)systemSize objectSize:(CGSize)objectSize slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator shader:(id)self0 metalContext:(id)self1
{
  height = slideSize.height;
  width = slideSize.width;
  v17 = objectSize.height;
  v18 = objectSize.width;
  v19 = systemSize.height;
  v20 = systemSize.width;
  v21 = size.height;
  v22 = size.width;
  numberOfVerticesPerParticle = [objc_opt_class() numberOfVerticesPerParticle];
  if (numberOfVerticesPerParticle > 4 || ((1 << numberOfVerticesPerParticle) & 0x1A) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem initWithParticleSize:particleSystemSize:objectSize:slideSize:duration:direction:randomGenerator:shader:metalContext:]"];
    [currentHandler handleFailureInFunction:v27 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 115, @"%@: We don't support %d vertices per particle... aborting init.", objc_opt_class(), numberOfVerticesPerParticle}];
  }

  v32.receiver = self;
  v32.super_class = TSDGPUParticleSystem;
  v28 = [(TSDGPUParticleSystem *)&v32 init];
  v29 = v28;
  if (v28)
  {
    [(TSDGPUParticleSystem *)v28 p_setupParticleSystemWithParticleSize:direction particleSystemSize:generator objectSize:v22 slideSize:v21 duration:v20 direction:v19 randomGenerator:v18, v17, width, height, *&duration];
    v29->_metalContext = context;
    particleCount = [(TSDGPUParticleSystem *)v29 particleCount];
    [(TSDGPUParticleSystem *)v29 setupMetalWithShader:shader];
    if (([objc_opt_class() shouldDrawInvisibleParticles] & 1) == 0)
    {
      v29->_visibilities = malloc_type_calloc(particleCount * numberOfVerticesPerParticle, 1uLL, 0x100004077774924uLL);
    }

    [(TSDGPUParticleSystem *)v29 p_setupDataBufferWithParticleCount:[(TSDGPUParticleSystem *)v29 particleCount] visibleParticleCount:[(TSDGPUParticleSystem *)v29 visibleParticleCount]];
  }

  return v29;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  dataBufferAttributes = [(TSDGPUParticleSystem *)self dataBufferAttributes];
  v4 = [(NSArray *)dataBufferAttributes countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(dataBufferAttributes);
        }
      }

      while (v5 != v7);
      v5 = [(NSArray *)dataBufferAttributes countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  visibilities = self->_visibilities;
  if (visibilities)
  {
    free(visibilities);
    self->_visibilities = 0;
  }

  self->_attributesInShader = 0;
  v9.receiver = self;
  v9.super_class = TSDGPUParticleSystem;
  [(TSDGPUParticleSystem *)&v9 dealloc];
}

- (void)p_setupParticleSystemWithParticleSize:(CGSize)size particleSystemSize:(CGSize)systemSize objectSize:(CGSize)objectSize slideSize:(CGSize)slideSize duration:(double)duration direction:(unint64_t)direction randomGenerator:(id)generator
{
  height = slideSize.height;
  width = slideSize.width;
  v13 = objectSize.height;
  v14 = objectSize.width;
  v15 = systemSize.height;
  v16 = systemSize.width;
  v24 = size.height;
  v17 = size.width;
  if (!generator)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem p_setupParticleSystemWithParticleSize:particleSystemSize:objectSize:slideSize:duration:direction:randomGenerator:]"];
    [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 166, @"invalid nil value for '%s'", "randomGenerator"}];
  }

  self->_randomGenerator = generator;
  self->_shouldDraw = 1;
  self->_objectSize.width = v14;
  self->_objectSize.height = v13;
  self->_slideSize.width = width;
  self->_slideSize.height = height;
  self->_duration = duration;
  self->_direction = direction;
  if (v16 == *MEMORY[0x277CBF3A8] && v15 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v16 = ceil(v14 / v17);
    v15 = ceil(v13 / v24);
  }

  [(TSDGPUParticleSystem *)self p_resizeSystemToFitWithinMaxVerticesWithSystemSize:v16, v15];
  self->_particleSize.width = v17;
  self->_particleSize.height = v24;
  self->_particlesWide = v22;
  self->_particlesHigh = v23;
  self->_particleCount = v22 * v23;
}

- (void)setupWithTexture:(id)texture particleTextureSize:(CGSize)size reverseDrawOrder:(BOOL)order capabilities:(id)capabilities
{
  orderCopy = order;
  [(TSDGPUParticleSystem *)self p_setupParticleTextureDataWithTexture:texture capabilities:capabilities, size.width, size.height];
  [(TSDGPUParticleSystem *)self p_setupParticleDataWithTexture:texture];
  if (orderCopy)
  {
    [(TSDGPUParticleSystem *)self p_reverseParticleDataDrawOrder];
  }

  if (!self->_isDataBufferInitialized)
  {

    [(TSDGPUParticleSystem *)self p_setupVertexData];
  }
}

- (NSString)description
{
  array = [MEMORY[0x277CBEB18] array];
  if (self->_isInitialized)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"initialized:%@", v4)}];
  if (self->_isDataBufferInitialized)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"dataBufferInitialized:%@", v5)}];
  if (![(TSDGPUParticleSystem *)self shouldDraw])
  {
    [array addObject:@"NOT drawing"];
  }

  [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"visibleParticleCount:%ld", -[TSDGPUParticleSystem visibleParticleCount](self, "visibleParticleCount"))}];
  [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"particleSystemSize:%ldx%ld)", -[TSDGPUParticleSystem particlesWide](self, "particlesWide"), -[TSDGPUParticleSystem particlesHigh](self, "particlesHigh")}]);
  [array addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"dataBuffer:%@", -[TSDGPUParticleSystem dataBuffer](self, "dataBuffer"))}];
  v7.receiver = self;
  v7.super_class = TSDGPUParticleSystem;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@: {%@}", -[TSDGPUParticleSystem description](&v7, sel_description), objc_msgSend(array, "componentsJoinedByString:", @", ")];
}

- (CGPoint)indexPointFromIndex:(unint64_t)index
{
  v4 = (index / [(TSDGPUParticleSystem *)self particlesWide]);
  v5 = index - v4;
  result.y = v4;
  result.x = v5;
  return result;
}

- (NSArray)dataBufferAttributes
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = array;
  if (self->_positionAttribute)
  {
    [(NSArray *)array addObject:?];
  }

  if (self->_centerAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_texCoordAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_particleTexCoordAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_colorAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_speedAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_rotationAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_scaleAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_lifeSpanAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  if (self->_colorTexCoordAttribute)
  {
    [(NSArray *)v4 addObject:?];
  }

  return v4;
}

- (CGContext)newContextFromTexture:(id)texture
{
  if (!texture)
  {
    return 0;
  }

  image = [texture image];
  if (!image)
  {
    return 0;
  }

  v4 = image;
  if ([objc_opt_class() willOverrideColors])
  {
    return 0;
  }

  Width = CGImageGetWidth(v4);
  CGImageGetHeight(v4);
  v5 = TSDBitmapContextCreate(3, Width);
  v8.origin.x = TSDRectWithSize();
  CGContextDrawImage(v5, v8, v4);
  return v5;
}

- ($94F468A8D4C62B317260615823C2B210)vertexPositionAtVertexIndex:(unint64_t)index particleIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem vertexPositionAtVertexIndex:particleIndexPoint:]"];
  [currentHandler handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 310, @"Subclass should implement this method!"}];
  v6 = 0.0;
  v7 = 0.0;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)centerAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem centerAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 315, @"Subclass should implement this method!"}];
  v5 = 0.0;
  v6 = 0.0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (CGPoint)startingPointAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem startingPointAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 323, @"Subclass should implement this method!"}];
  v5 = *MEMORY[0x277CBF348];
  v6 = *(MEMORY[0x277CBF348] + 8);
  result.y = v6;
  result.x = v5;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)speedAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem speedAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 328, @"Subclass should implement this method!"}];
  TSURandom();
  v6 = v5;
  TSURandom();
  v8 = v7;
  TSURandom();
  v9 = v6;
  v10 = v8;
  v12 = v11;
  v13 = v9;
  result.var2 = v12;
  result.var1 = v10;
  result.var0 = v13;
  return result;
}

- (double)speedMax
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem speedMax]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 332, @"TSDGPUParticleSystem kindly requests you also implement speedMax if you wanna use Speed!"}];
  return 1.0;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)rotationAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem rotationAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 337, @"Subclass should implement this method!"}];
  TSURandomBetween();
  v6 = v5;
  TSURandomBetween();
  v8 = v7;
  TSURandomBetween();
  v9 = v6;
  v10 = v8;
  v12 = v11;
  v13 = v9;
  result.var2 = v12;
  result.var1 = v10;
  result.var0 = v13;
  return result;
}

- (double)rotationMax
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem rotationMax]"];
  [currentHandler handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 341, @"TSDGPUParticleSystem kindly requests you also implement rotationMax if you wanna use Rotation!"}];
  return 1.0;
}

- (double)scaleAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem scaleAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 346, @"Subclass should implement this method!"}];

  TSURandom();
  return result;
}

- ($94F468A8D4C62B317260615823C2B210)lifeSpanAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem lifeSpanAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 351, @"Subclass should implement this method!"}];
  v5 = 0.0;
  v6 = 1.0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)colorAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem colorAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 359, @"Subclass should implement this method!"}];
  TSURandomBetween();
  v6 = v5;
  TSURandomBetween();
  v8 = v7;
  TSURandomBetween();
  v10 = v9;
  TSURandomBetween();
  v11 = v6;
  v12 = v8;
  v13 = v10;
  v15 = v14;
  v16 = v11;
  result.var3 = v15;
  result.var2 = v13;
  result.var1 = v12;
  result.var0 = v16;
  return result;
}

- (BOOL)visibilityAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem visibilityAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 370, @"Subclass should implement this method!"}];
  return 1;
}

- ($94F468A8D4C62B317260615823C2B210)colorTexCoordAtIndexPoint:(CGPoint)point
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem colorTexCoordAtIndexPoint:]"];
  [currentHandler handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 380, @"Subclass should implement this method!"}];
  v5 = 0.0;
  v6 = 0.0;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)setupMetalWithShader:(id)shader
{
  v28 = *MEMORY[0x277D85DE8];
  if (self->_shouldDraw)
  {
    pipelineReflectionObject = [shader pipelineReflectionObject];
    if (pipelineReflectionObject)
    {
      v5 = pipelineReflectionObject;
      self->_attributesInShader = [MEMORY[0x277CBEB58] set];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      vertexBindings = [v5 vertexBindings];
      v7 = [vertexBindings countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v23;
        do
        {
          v10 = 0;
          do
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(vertexBindings);
            }

            v11 = *(*(&v22 + 1) + 8 * v10);
            v12 = TSUProtocolCast();
            if (![v11 type] && objc_msgSend(v12, "bufferDataType") == 1)
            {
              v20 = 0u;
              v21 = 0u;
              v18 = 0u;
              v19 = 0u;
              bufferStructType = [objc_msgSend(v12 bufferStructType];
              v14 = [bufferStructType countByEnumeratingWithState:&v18 objects:v26 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v19;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v19 != v16)
                    {
                      objc_enumerationMutation(bufferStructType);
                    }

                    -[NSMutableSet addObject:](self->_attributesInShader, "addObject:", [*(*(&v18 + 1) + 8 * v17++) name]);
                  }

                  while (v15 != v17);
                  v15 = [bufferStructType countByEnumeratingWithState:&v18 objects:v26 count:16];
                }

                while (v15);
              }
            }

            ++v10;
          }

          while (v10 != v8);
          v8 = [vertexBindings countByEnumeratingWithState:&v22 objects:v27 count:16];
        }

        while (v8);
      }
    }
  }
}

- (void)drawMetalWithEncoder:(id)encoder
{
  if (self->_shouldDraw)
  {
    v10 = v4;
    v11 = v3;
    if (!self->_isInitialized)
    {
      [(TSDGPUParticleSystem *)self setupWithTexture:0 particleTextureSize:0 reverseDrawOrder:*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)];
    }

    if (!self->_isDataBufferInitialized)
    {
      [(TSDGPUParticleSystem *)self p_setupVertexData];
    }

    v9 = [(TSDGPUParticleSystem *)self dataBuffer:v10];

    [(TSDGPUDataBuffer *)v9 drawWithEncoder:encoder atIndex:0];
  }
}

- (CGSize)vertexTextureSize
{
  width = self->_vertexTextureSize.width;
  height = self->_vertexTextureSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)particleSize
{
  width = self->_particleSize.width;
  height = self->_particleSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)objectSize
{
  width = self->_objectSize.width;
  height = self->_objectSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)slideSize
{
  width = self->_slideSize.width;
  height = self->_slideSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)p_setupParticleTextureDataWithTexture:(id)texture capabilities:(id)capabilities
{
  if (self->_colorTexCoordAttribute && ([objc_opt_class() willOverrideColorTexCoords] & 1) == 0)
  {
    device = [(TSDMetalContext *)self->_metalContext device];
    v7 = [+[TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:](TSDMetalShaderLibraryLoader loadDefaultLibraryWithDevice:{device), "newFunctionWithName:", @"TSDMetalParticleSystem_ReduceTexture"}];
    v23 = 0;
    v8 = [(MTLDevice *)device newComputePipelineStateWithFunction:v7 error:&v23];

    if (v8)
    {
      metalTexture = [texture metalTexture];
      v10 = [metalTexture width] >> 2;
      v11 = [metalTexture height] >> 2;
      [(TSDGPUParticleSystem *)self particleSize];
      [(TSDGPUParticleSystem *)self particleSize];
      v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:-[TSDMetalContext pixelFormat](self->_metalContext width:"pixelFormat") height:v10 mipmapped:v11, 0];
      [v12 setUsage:3];
      [v12 setResourceOptions:32];
      [v12 setStorageMode:2];
      self->_vertexColorTexture = [(MTLDevice *)device newTextureWithDescriptor:v12];
      self->_vertexTextureSize.width = v10;
      self->_vertexTextureSize.height = v11;
      threadExecutionWidth = [v8 threadExecutionWidth];
      v14 = [v8 maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
      v15 = (threadExecutionWidth + [metalTexture width] - 1) / threadExecutionWidth;
      v16 = (v14 + [metalTexture height] - 1) / v14;
      commandBuffer = [(MTLCommandQueue *)[(TSDMetalContext *)self->_metalContext commandQueue] commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v8];
      [computeCommandEncoder setTexture:metalTexture atIndex:0];
      [computeCommandEncoder setTexture:self->_vertexColorTexture atIndex:1];
      v22[0] = v15;
      v22[1] = v16;
      v22[2] = 1;
      v21[0] = threadExecutionWidth;
      v21[1] = v14;
      v21[2] = 1;
      [computeCommandEncoder dispatchThreadgroups:v22 threadsPerThreadgroup:v21];
      [computeCommandEncoder endEncoding];
      [commandBuffer commit];
    }

    else
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem(Private) p_setupParticleTextureDataWithTexture:capabilities:]"];
      [currentHandler handleFailureInFunction:v20 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 448, @"Failed to create compute shader"}];
    }
  }
}

- (void)p_setDataBufferAttribute:(id *)attribute withName:(id)name defaultDataType:(int64_t)type normalized:(BOOL)normalized componentCount:(unint64_t)count
{
  normalizedCopy = normalized;

  *attribute = 0;
  if ([(NSMutableSet *)self->_attributesInShader containsObject:name])
  {
    v13 = [objc_opt_class() newDataBufferAttributeWithName:name];
    *attribute = v13;
    if (!v13)
    {
      *attribute = [[TSDGPUDataBufferAttribute alloc] initWithName:name bufferUsage:35044 dataType:type normalized:normalizedCopy componentCount:count];
    }
  }
}

- (void)p_setupDataBufferWithParticleCount:(unint64_t)count visibleParticleCount:(unint64_t)particleCount
{
  self->_particleCount = count;
  self->_visibleParticleCount = particleCount;
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_positionAttribute withName:@"Position" defaultDataType:5 normalized:0 componentCount:2];
  if (!self->_positionAttribute)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem(Private) p_setupDataBufferWithParticleCount:visibleParticleCount:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 555, @"Always need a position attribute!"}];
  }

  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_centerAttribute withName:@"Center" defaultDataType:5 normalized:0 componentCount:2];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_texCoordAttribute withName:@"TexCoord" defaultDataType:3 normalized:1 componentCount:2];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_particleTexCoordAttribute withName:@"ParticleTexCoord" defaultDataType:3 normalized:1 componentCount:2];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_colorAttribute withName:@"Color" defaultDataType:3 normalized:1 componentCount:4];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_speedAttribute withName:@"Speed" defaultDataType:3 normalized:1 componentCount:3];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_rotationAttribute withName:@"Rotation" defaultDataType:3 normalized:1 componentCount:3];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_scaleAttribute withName:@"Scale" defaultDataType:5 normalized:0 componentCount:1];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_lifeSpanAttribute withName:@"LifeSpan" defaultDataType:3 normalized:1 componentCount:2];
  [(TSDGPUParticleSystem *)self p_setDataBufferAttribute:&self->_colorTexCoordAttribute withName:@"ColorTexCoord" defaultDataType:3 normalized:1 componentCount:2];

  numberOfVerticesPerParticle = [objc_opt_class() numberOfVerticesPerParticle];
  dataBufferAttributes = [(TSDGPUParticleSystem *)self dataBufferAttributes];
  particleCount = self->_particleCount;
  if (numberOfVerticesPerParticle == 4)
  {
    self->_dataBuffer = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:dataBufferAttributes quadParticleCount:particleCount device:[(TSDMetalContext *)self->_metalContext device]];
  }

  else
  {
    v10 = +[TSDGPUDataBuffer newDataBufferWithVertexAttributes:vertexCount:indexElementCount:device:](TSDGPUDataBuffer, "newDataBufferWithVertexAttributes:vertexCount:indexElementCount:device:", dataBufferAttributes, [objc_opt_class() numberOfVerticesPerParticle] * particleCount, 0, -[TSDMetalContext device](self->_metalContext, "device"));
    self->_dataBuffer = v10;

    [(TSDGPUDataBuffer *)v10 setMetalDrawMode:3];
  }
}

- (void)p_setupParticleDataWithTexture:(id)texture
{
  numberOfVerticesPerParticle = [objc_opt_class() numberOfVerticesPerParticle];
  if (numberOfVerticesPerParticle > 4 || ((1 << numberOfVerticesPerParticle) & 0x1A) == 0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem(Private) p_setupParticleDataWithTexture:]"];
    [currentHandler handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"), 636, @"Only support 1, 3, or 4 vertices per particle!"}];
  }

  width = self->_objectSize.width;
  height = self->_objectSize.height;
  v10 = TSDRectWithSize();
  v51 = v11;
  v52 = v10;
  v49 = v13;
  v50 = v12;
  v14 = height != height || width != width;
  v15 = self->_texCoordAttribute != 0;
  willOverrideGeometry = [objc_opt_class() willOverrideGeometry];
  dataBufferAttributes = [(TSDGPUParticleSystem *)self dataBufferAttributes];
  v18 = dataBufferAttributes;
  if (self->_positionAttribute)
  {
    v48 = [(NSArray *)dataBufferAttributes indexOfObject:?];
  }

  else
  {
    v48 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_texCoordAttribute)
  {
    v47 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v47 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_particleTexCoordAttribute)
  {
    v46 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v46 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_centerAttribute)
  {
    v45 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v45 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_speedAttribute)
  {
    v44 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v44 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_rotationAttribute)
  {
    v43 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v43 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_scaleAttribute)
  {
    v42 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v42 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_lifeSpanAttribute)
  {
    v41 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_colorAttribute)
  {
    v40 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v40 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (self->_colorTexCoordAttribute)
  {
    v39 = [(NSArray *)v18 indexOfObject:?];
  }

  else
  {
    v39 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 1;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  particlesHigh = [(TSDGPUParticleSystem *)self particlesHigh];
  particlesWide = [(TSDGPUParticleSystem *)self particlesWide];
  [(TSDGPUParticleSystem *)self particleSize];
  v20 = v19;
  v22 = v21;
  [(TSDGPUParticleSystem *)self objectSize];
  v24 = v23;
  v26 = v25;
  if ([(TSDGPUParticleSystem *)self vertexColorTexture])
  {
    [(TSDGPUParticleSystem *)self vertexTextureSize];
    v28 = v27;
    v30 = v29;
    v31 = v29 != v26 || v27 != v24;
  }

  else
  {
    v31 = 0;
    v28 = v24;
    v30 = v26;
  }

  willOverrideVisibilities = [objc_opt_class() willOverrideVisibilities];
  willOverrideStartingPoints = [objc_opt_class() willOverrideStartingPoints];
  willOverrideColors = [objc_opt_class() willOverrideColors];
  willOverrideColorTexCoords = [objc_opt_class() willOverrideColorTexCoords];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __64__TSDGPUParticleSystem_Private__p_setupParticleDataWithTexture___block_invoke;
  v53[3] = &unk_279D491E0;
  v53[8] = v48;
  v53[9] = v47;
  v53[10] = v46;
  v53[11] = v45;
  v53[12] = v44;
  v53[13] = v43;
  v53[14] = v42;
  v53[15] = v41;
  v53[16] = v40;
  v53[17] = v39;
  v53[18] = particlesHigh;
  v53[19] = particlesWide;
  v53[20] = numberOfVerticesPerParticle;
  v53[21] = v20;
  v53[22] = v22;
  v54 = v15;
  v53[23] = 0;
  v53[24] = 0;
  *&v53[25] = width;
  *&v53[26] = height;
  v55 = v31;
  *&v53[27] = v28;
  *&v53[28] = v30;
  *&v53[29] = v24;
  *&v53[30] = v26;
  v56 = v14;
  *&v53[31] = v52;
  v53[32] = v51;
  v53[33] = v50;
  v53[34] = v49;
  v57 = 0;
  v53[35] = 0;
  v53[36] = width;
  v53[4] = self;
  v53[5] = self;
  v58 = 0;
  v53[37] = height;
  v53[38] = 0;
  v53[39] = 0;
  v59 = willOverrideVisibilities;
  v53[6] = &v68;
  v53[7] = &v64;
  v60 = willOverrideStartingPoints;
  v61 = willOverrideGeometry;
  v62 = willOverrideColors;
  v63 = willOverrideColorTexCoords;
  [(TSDGPUDataBuffer *)[(TSDGPUParticleSystem *)self dataBuffer] updateMetalDataBufferAttributes:v18 withBlock:v53];
  visibilities = self->_visibilities;
  if (*(v69 + 24) == 1)
  {
    if (visibilities)
    {
      free(visibilities);
      self->_visibilities = 0;
    }

    goto LABEL_49;
  }

  if (!visibilities)
  {
LABEL_49:
    self->_visibleParticleCount = [(TSDGPUParticleSystem *)self particleCount];
  }

  self->_shouldDraw = *(v65 + 24);
  self->_isInitialized = 1;
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);
}

void __64__TSDGPUParticleSystem_Private__p_setupParticleDataWithTexture___block_invoke(uint64_t a1, uint64_t a2)
{
  v271 = *MEMORY[0x277D85DE8];
  v265 = xmmword_26CA662E8;
  v266 = unk_26CA662F8;
  v267 = xmmword_26CA66308;
  v268 = 0;
  v263 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v264 = unk_26CA662D8;
  v3 = *(a1 + 64);
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = a2 + 88 * v3;
    v5 = *(v4 + 48);
    v265 = *(v4 + 32);
    v266 = v5;
    v267 = *(v4 + 64);
    v268 = *(v4 + 80);
    v6 = *(v4 + 16);
    v263 = *v4;
    v264 = v6;
  }

  v259 = xmmword_26CA662E8;
  v260 = unk_26CA662F8;
  v261 = xmmword_26CA66308;
  v262 = 0;
  v257 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v258 = unk_26CA662D8;
  v7 = *(a1 + 72);
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = a2 + 88 * v7;
    v9 = *(v8 + 48);
    v259 = *(v8 + 32);
    v260 = v9;
    v261 = *(v8 + 64);
    v262 = *(v8 + 80);
    v10 = *(v8 + 16);
    v257 = *v8;
    v258 = v10;
  }

  v253 = xmmword_26CA662E8;
  v254 = unk_26CA662F8;
  v255 = xmmword_26CA66308;
  v256 = 0;
  v251 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v252 = unk_26CA662D8;
  v11 = *(a1 + 80);
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = a2 + 88 * v11;
    v13 = *(v12 + 48);
    v253 = *(v12 + 32);
    v254 = v13;
    v255 = *(v12 + 64);
    v256 = *(v12 + 80);
    v14 = *(v12 + 16);
    v251 = *v12;
    v252 = v14;
  }

  v247 = xmmword_26CA662E8;
  v248 = unk_26CA662F8;
  v249 = xmmword_26CA66308;
  v250 = 0;
  v245 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v246 = unk_26CA662D8;
  v15 = *(a1 + 88);
  if (v15 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v16 = a2 + 88 * v15;
    v17 = *(v16 + 48);
    v247 = *(v16 + 32);
    v248 = v17;
    v249 = *(v16 + 64);
    v250 = *(v16 + 80);
    v18 = *(v16 + 16);
    v245 = *v16;
    v246 = v18;
  }

  v241 = xmmword_26CA662E8;
  v242 = unk_26CA662F8;
  v243 = xmmword_26CA66308;
  v244 = 0;
  v239 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v240 = unk_26CA662D8;
  v19 = *(a1 + 96);
  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = a2 + 88 * v19;
    v21 = *(v20 + 48);
    v241 = *(v20 + 32);
    v242 = v21;
    v243 = *(v20 + 64);
    v244 = *(v20 + 80);
    v22 = *(v20 + 16);
    v239 = *v20;
    v240 = v22;
  }

  v235 = xmmword_26CA662E8;
  v236 = unk_26CA662F8;
  v237 = xmmword_26CA66308;
  v238 = 0;
  v233 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v234 = unk_26CA662D8;
  v23 = *(a1 + 104);
  if (v23 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = a2 + 88 * v23;
    v25 = *(v24 + 48);
    v235 = *(v24 + 32);
    v236 = v25;
    v237 = *(v24 + 64);
    v238 = *(v24 + 80);
    v26 = *(v24 + 16);
    v233 = *v24;
    v234 = v26;
  }

  v229 = xmmword_26CA662E8;
  v230 = unk_26CA662F8;
  v231 = xmmword_26CA66308;
  v232 = 0;
  v227 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v228 = unk_26CA662D8;
  v27 = *(a1 + 112);
  if (v27 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v28 = a2 + 88 * v27;
    v29 = *(v28 + 48);
    v229 = *(v28 + 32);
    v230 = v29;
    v231 = *(v28 + 64);
    v232 = *(v28 + 80);
    v30 = *(v28 + 16);
    v227 = *v28;
    v228 = v30;
  }

  v223 = xmmword_26CA662E8;
  v224 = unk_26CA662F8;
  v225 = xmmword_26CA66308;
  v226 = 0;
  v221 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v222 = unk_26CA662D8;
  v31 = *(a1 + 120);
  if (v31 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v32 = a2 + 88 * v31;
    v33 = *(v32 + 48);
    v223 = *(v32 + 32);
    v224 = v33;
    v225 = *(v32 + 64);
    v226 = *(v32 + 80);
    v34 = *(v32 + 16);
    v221 = *v32;
    v222 = v34;
  }

  v217 = xmmword_26CA662E8;
  v218 = unk_26CA662F8;
  v219 = xmmword_26CA66308;
  v220 = 0;
  v215 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v216 = unk_26CA662D8;
  v35 = *(a1 + 128);
  if (v35 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v36 = a2 + 88 * v35;
    v37 = *(v36 + 48);
    v217 = *(v36 + 32);
    v218 = v37;
    v219 = *(v36 + 64);
    v220 = *(v36 + 80);
    v38 = *(v36 + 16);
    v215 = *v36;
    v216 = v38;
  }

  v211 = xmmword_26CA662E8;
  v212 = unk_26CA662F8;
  v213 = xmmword_26CA66308;
  v214 = 0;
  v209 = TSDGPUDataBufferAttributeUpdateDataInvalid;
  v210 = unk_26CA662D8;
  v39 = *(a1 + 136);
  if (v39 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v40 = a2 + 88 * v39;
    v41 = *(v40 + 48);
    v211 = *(v40 + 32);
    v212 = v41;
    v213 = *(v40 + 64);
    v214 = *(v40 + 80);
    v42 = *(v40 + 16);
    v209 = *v40;
    v210 = v42;
  }

  v43 = *(a1 + 144);
  if (!v43)
  {
    return;
  }

  v193 = 0;
  v44 = *(a1 + 152);
  v45 = 1.0;
  do
  {
    if (!v44)
    {
      goto LABEL_149;
    }

    v46 = 0;
    v47 = v193;
    v196 = v193;
    do
    {
      v48 = [*(a1 + 32) indexFromPoint:{v46, v47, v193}];
      v49 = *(a1 + 160);
      v50 = *(a1 + 168);
      v51 = *(a1 + 176);
      v52 = v50 * v46;
      v53 = v51 * v47;
      if (*(a1 + 320) == 1 && (v46 == *(a1 + 152) - 1 || v193 == *(a1 + 144) - 1))
      {
        v54 = v50 * v46;
        v55 = *(a1 + 168);
        v56 = *(a1 + 176);
        *(&v53 - 1) = CGRectIntersection(*(&v53 - 1), *(a1 + 184));
        v52 = v57;
        v50 = v58;
        v51 = v59;
      }

      v198 = v53;
      v199 = v46;
      if (*(a1 + 321) == 1)
      {
        TSDMultiplyPointBySize(v52, v53, vdivq_f64(*(a1 + 216), *(a1 + 232)).f64[0]);
        TSDRectWithOriginAndSize();
      }

      else
      {
        v200 = v53;
        v201 = v51;
        v65 = v50;
        v66 = v52;
        if (*(a1 + 322) != 1)
        {
          goto LABEL_34;
        }

        v67 = TSDNormalizedPointInRect(v52, v53, *(a1 + 184), *(a1 + 192), *(a1 + 200));
        v69 = v68;
        MaxPoint = TSDRectGetMaxPoint(v52, v198, v50, v51);
        v72 = TSDNormalizedPointInRect(MaxPoint, v71, *(a1 + 184), *(a1 + 192), *(a1 + 200));
        v73 = TSDRectWithPoints(v67, v69, v72);
        TSDRectFromNormalizedSubrect(*(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272), v73, v74, v75, v76);
      }

      v66 = TSDRoundedRect(v60, v61, v62, v63, v64);
      v200 = v77;
      v201 = v78;
      v65 = v79;
LABEL_34:
      v197 = v52;
      v80 = v49 * v48;
      if (*(a1 + 280))
      {
        v194 = v51;
        v195 = v50;
        v81 = *(a1 + 323);
        v272.origin.x = v66;
        v272.origin.y = v200;
        v272.size.width = v65;
        v272.size.height = v201;
        MaxX = CGRectGetMaxX(v272);
        v273.origin.x = v66;
        v273.origin.y = v200;
        v273.size.width = v65;
        v273.size.height = v201;
        MaxY = CGRectGetMaxY(v273);
        v85 = v200;
        v86 = 0.0;
        v88 = 0.0;
        v87 = 0.0;
        v89 = 0;
        if (v200 < MaxY)
        {
          v90 = MaxX;
          if (v81)
          {
            v91 = 3;
          }

          else
          {
            v91 = 2;
          }

          v92 = ~v85;
          v88 = 0.0;
          v87 = 0.0;
          v89 = 0;
          while (v66 >= v90)
          {
LABEL_60:
            ++v85;
            --v92;
            if (v85 == MaxY)
            {
              goto LABEL_61;
            }
          }

          v93 = (v85 - v200 + v85 - v200) / v201 + -1.0;
          v94 = 1.0 - v93 * v93;
          v95 = v66;
          while (1)
          {
            if (v95 < *(a1 + 288))
            {
              v96 = *(a1 + 296);
              if (v85 < v96)
              {
                if (*(*(a1 + 40) + 160))
                {
                  *&v84 = 1.0;
                  if (v65 > 1.0)
                  {
                    v97 = (v95 - v66 + v95 - v66) / v65 + -1.0;
                    *&v84 = v94 + 1.0 - v97 * v97;
                  }

                  if (*(a1 + 323) == 1)
                  {
                    v202 = v84;
                    *&v93 = TSDMetalColor4fWithUIntAndFormat(*(*(a1 + 280) + 8 * (v95 + (*(a1 + 304) >> v91) * (v92 + v96))), *(a1 + 312));
                    goto LABEL_53;
                  }

                  v104 = *(*(a1 + 280) + 4 * (v95 + (*(a1 + 304) >> v91) * (v92 + v96)));
                  if (*(a1 + 324) == 1)
                  {
                    v202 = v84;
                    *&v93 = TSDMetalColor4fWith32BitUIntAndFormat(v104, *(a1 + 312));
LABEL_53:
                    v84 = v202;
                  }

                  else
                  {
                    v105 = vand_s8(vshl_u32(vdup_n_s32(v104), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                    v106.i64[0] = v105.u32[0];
                    v106.i64[1] = v105.u32[1];
                    v93 = COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(v106), vdupq_n_s64(0x3F700028F62B6A81uLL))));
                    v99 = *(*(a1 + 280) + 4 * (v95 + (*(a1 + 304) >> v91) * (v92 + v96))) * 0.00390640259;
                    v100 = HIBYTE(v104) * 0.00390640259;
                    v98 = HIDWORD(v93);
                  }

                  if (v100 != 0.0)
                  {
                    *&v107 = v100;
                    HIDWORD(v93) = v98;
                    v89 = vcvt_f32_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_f32(*&v93), *&v84), vdupq_lane_s64(v107, 0)), vcvtq_f64_f32(v89)));
                    v87 = *&v84 * v99 / *&v107 + v87;
                    v93 = v88 + *&v84 * *&v107;
                    v88 = v93;
                    v86 = v86 + *&v84;
                  }

                  goto LABEL_59;
                }

                v101 = *(a1 + 280);
                v102 = (v95 + (*(a1 + 304) >> v91) * (v92 + v96)) << 32;
                if (*(a1 + 323) == 1)
                {
                  v93 = TSDMetalColor4fWithUIntAndFormatOnlyAlpha(*(v101 + (v102 >> 29)), *(a1 + 312));
                }

                else
                {
                  LOBYTE(v93) = *(v101 + (v102 >> 30) + 3);
                  v93 = *&v93 * 0.00390640259;
                  v103 = v93;
                }

                v88 = v88 + v103;
              }
            }

LABEL_59:
            if (v90 == ++v95)
            {
              goto LABEL_60;
            }
          }
        }

LABEL_61:
        v108 = v88 > 0.0;
        v109 = *(a1 + 40);
        v47 = v196;
        if (*(v109 + 160))
        {
          if (v88 <= 0.0 && *(v109 + 8))
          {
            v108 = 0;
            v45 = 1.0;
            v110 = v46;
            v51 = v194;
            v50 = v195;
            goto LABEL_79;
          }

          if (*(a1 + 160))
          {
            v112 = 0;
            v113 = 1.0 / v86;
            if (v86 == 0.0)
            {
              v113 = 1.0;
            }

            v114 = v113 * v88;
            v115 = v113 * v87;
            v116 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v89), v113));
            do
            {
              v205 = v217;
              v206 = v218;
              v207 = v219;
              v208 = v220;
              v203 = v215;
              v204 = v216;
              TSDGPUUpdateDataSetMetalPoint4DAtIndex(&v203, v80 + v112++, v116.f32[0], v116.f32[1], v115, v114);
            }

            while (v112 < *(a1 + 160));
          }
        }

        if (!*(*(a1 + 40) + 8))
        {
          v45 = 1.0;
          v110 = v46;
          v51 = v194;
          v50 = v195;
          goto LABEL_82;
        }

        v45 = 1.0;
        v51 = v194;
        v50 = v195;
        if (v88 <= 0.0)
        {
          v108 = 0;
          v110 = v46;
          goto LABEL_79;
        }
      }

      else
      {
        v47 = v196;
        if (!*(*(a1 + 40) + 8))
        {
          v111 = (*(*(a1 + 48) + 8) + 24);
          v110 = v46;
LABEL_83:
          v119 = *v111;
          v120 = 1;
          goto LABEL_85;
        }
      }

      v110 = v46;
      if (*(a1 + 325) == 1)
      {
        v108 = [*(a1 + 32) visibilityAtIndexPoint:{v199, v47}];
      }

      else
      {
        v108 = 1;
      }

LABEL_79:
      v117 = *(a1 + 160);
      if (v117)
      {
        v118 = v80;
        do
        {
          *(*(*(a1 + 40) + 8) + v118++) = v108;
          --v117;
        }

        while (v117);
      }

LABEL_82:
      v111 = (*(*(a1 + 48) + 8) + 24);
      if (v108)
      {
        goto LABEL_83;
      }

      v120 = 0;
      v119 = 0;
LABEL_85:
      *v111 = v119;
      *(*(*(a1 + 56) + 8) + 24) |= v120;
      v121 = *(a1 + 40);
      if (v120)
      {
        ++*(v121 + 88);
      }

      else if (*(v121 + 8))
      {
        goto LABEL_147;
      }

      if (*(a1 + 326) == 1)
      {
        [*(a1 + 32) startingPointAtIndexPoint:{v110, v47}];
        v197 = v122;
        v198 = v123;
      }

      if (*(a1 + 327) == 1)
      {
        v124 = *(a1 + 160);
        if (!v124)
        {
          goto LABEL_100;
        }

        v125 = 0;
        v126 = v270;
        do
        {
          [*(a1 + 32) vertexPositionAtVertexIndex:v125 particleIndexPoint:{v110, v47}];
          *(v126 - 1) = v127;
          *v126 = v128;
          ++v125;
          v124 = *(a1 + 160);
          v126 += 2;
        }

        while (v125 < v124);
      }

      else
      {
        v274.origin.x = v197;
        v274.origin.y = v198;
        v274.size.width = v50;
        v274.size.height = v51;
        MinX = CGRectGetMinX(v274);
        v275.origin.x = v197;
        v45 = 1.0;
        v275.origin.y = v198;
        v275.size.width = v50;
        v275.size.height = v51;
        MinY = CGRectGetMinY(v275);
        v131 = MinX;
        *&MinY = MinY;
        v269 = v131;
        v270[0] = LODWORD(MinY);
        v124 = *(a1 + 160);
        if (v124 >= 2)
        {
          v276.origin.x = v197;
          v276.origin.y = v198;
          v276.size.width = v50;
          v276.size.height = v51;
          v132 = CGRectGetMaxX(v276);
          v277.origin.x = v197;
          v277.origin.y = v198;
          v277.size.width = v50;
          v277.size.height = v51;
          v133 = CGRectGetMinY(v277);
          v134 = v132;
          *&v133 = v133;
          *&v270[1] = v134;
          v270[2] = LODWORD(v133);
          v278.origin.x = v197;
          v278.origin.y = v198;
          v278.size.width = v50;
          v278.size.height = v51;
          v135 = CGRectGetMaxX(v278);
          v279.origin.x = v197;
          v279.origin.y = v198;
          v279.size.width = v50;
          v279.size.height = v51;
          v136 = CGRectGetMaxY(v279);
          v137 = v135;
          *&v136 = v136;
          *&v270[3] = v137;
          v270[4] = LODWORD(v136);
          v280.origin.x = v197;
          v280.origin.y = v198;
          v280.size.width = v50;
          v280.size.height = v51;
          v138 = CGRectGetMinX(v280);
          v281.origin.x = v197;
          v45 = 1.0;
          v281.origin.y = v198;
          v281.size.width = v50;
          v281.size.height = v51;
          v139 = CGRectGetMaxY(v281);
          v140 = v138;
          *&v139 = v139;
          *&v270[5] = v140;
          v270[6] = LODWORD(v139);
          v124 = *(a1 + 160);
        }
      }

      if (v124)
      {
        v141 = 0;
        v142 = v270;
        do
        {
          v205 = v265;
          v206 = v266;
          v207 = v267;
          v208 = v268;
          v203 = v263;
          v204 = v264;
          TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + v141++, *(v142 - 1), *v142);
          v124 = *(a1 + 160);
          v142 += 2;
        }

        while (v141 < v124);
      }

LABEL_100:
      if (*(*(a1 + 40) + 136))
      {
        if (*(a1 + 327) == 1)
        {
          [*(a1 + 32) centerAtIndexPoint:{v110, v47}];
          v144 = v143;
          MidY = v145;
        }

        else
        {
          v282.origin.x = v197;
          v282.origin.y = v198;
          v282.size.width = v50;
          v282.size.height = v51;
          MidX = CGRectGetMidX(v282);
          v283.origin.x = v197;
          v45 = 1.0;
          v283.origin.y = v198;
          v283.size.width = v50;
          v283.size.height = v51;
          v144 = MidX;
          MidY = CGRectGetMidY(v283);
        }

        if (!*(a1 + 160))
        {
          goto LABEL_114;
        }

        v148 = 0;
        do
        {
          v205 = v247;
          v206 = v248;
          v207 = v249;
          v208 = v250;
          v203 = v245;
          v204 = v246;
          TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + v148++, v144, MidY);
          v124 = *(a1 + 160);
        }

        while (v148 < v124);
        v110 = v46;
      }

      v149 = *(a1 + 40);
      if (*(v149 + 144))
      {
        v150 = v124 == 0;
      }

      else
      {
        v150 = 1;
      }

      if (v150)
      {
        goto LABEL_115;
      }

      v151 = 0;
      v152 = v270;
      do
      {
        v153 = v45 - *v152 / *(a1 + 240);
        v154 = *(v152 - 1) / *(a1 + 232);
        v205 = v259;
        v206 = v260;
        v207 = v261;
        v208 = v262;
        *&v153 = v153;
        v203 = v257;
        v204 = v258;
        TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + v151++, v154, *&v153);
        v152 += 2;
      }

      while (v151 < *(a1 + 160));
LABEL_114:
      v149 = *(a1 + 40);
      v110 = v46;
LABEL_115:
      if (*(v149 + 152))
      {
        v205 = v253;
        v206 = v254;
        v207 = v255;
        v208 = v256;
        v203 = v251;
        v204 = v252;
        TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80, 0.0, 0.0);
        if (*(a1 + 160) >= 2uLL)
        {
          v205 = v253;
          v206 = v254;
          v207 = v255;
          v208 = v256;
          v203 = v251;
          v204 = v252;
          TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + 1, 1.0, 0.0);
          v205 = v253;
          v206 = v254;
          v207 = v255;
          v208 = v256;
          v203 = v251;
          v204 = v252;
          TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + 2, 1.0, 1.0);
          v205 = v253;
          v206 = v254;
          v207 = v255;
          v208 = v256;
          v203 = v251;
          v204 = v252;
          TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + 3, 0.0, 1.0);
        }
      }

      if (*(*(a1 + 40) + 176))
      {
        [*(a1 + 32) speedAtIndexPoint:{v110, v47}];
        if (*(a1 + 160))
        {
          v158 = v155;
          v159 = v156;
          v160 = v157;
          v161 = 0;
          do
          {
            v205 = v241;
            v206 = v242;
            v207 = v243;
            v208 = v244;
            v203 = v239;
            v204 = v240;
            TSDGPUUpdateDataSetMetalPoint3DAtIndex(&v203, v80 + v161++, v158, v159, v160);
          }

          while (v161 < *(a1 + 160));
        }
      }

      if (*(*(a1 + 40) + 184))
      {
        [*(a1 + 32) rotationAtIndexPoint:{v110, v47}];
        if (*(a1 + 160))
        {
          v165 = v162;
          v166 = v163;
          v167 = v164;
          v168 = 0;
          do
          {
            v205 = v235;
            v206 = v236;
            v207 = v237;
            v208 = v238;
            v203 = v233;
            v204 = v234;
            TSDGPUUpdateDataSetMetalPoint3DAtIndex(&v203, v80 + v168++, v165, v166, v167);
          }

          while (v168 < *(a1 + 160));
        }
      }

      if (*(*(a1 + 40) + 192))
      {
        [*(a1 + 32) scaleAtIndexPoint:{v110, v47}];
        if (*(a1 + 160))
        {
          v170 = 0;
          v171 = v169;
          do
          {
            v205 = v229;
            v206 = v230;
            v207 = v231;
            v208 = v232;
            v203 = v227;
            v204 = v228;
            TSDGPUUpdateDataSetMetalFloatAtIndex(&v203, v80 + v170++, v171);
          }

          while (v170 < *(a1 + 160));
        }
      }

      if (*(*(a1 + 40) + 168))
      {
        [*(a1 + 32) lifeSpanAtIndexPoint:{v110, v47}];
        if (*(a1 + 160))
        {
          v174 = v172;
          v175 = v173;
          v176 = 0;
          do
          {
            v205 = v223;
            v206 = v224;
            v207 = v225;
            v208 = v226;
            v203 = v221;
            v204 = v222;
            TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + v176++, v174, v175);
          }

          while (v176 < *(a1 + 160));
        }
      }

      if (*(*(a1 + 40) + 160))
      {
        if (*(a1 + 328) == 1)
        {
          [*(a1 + 32) colorAtIndexPoint:{v199, v47}];
          if (*(a1 + 160))
          {
            v181 = v177;
            v182 = v178;
            v183 = v179;
            v184 = v180;
            v185 = 0;
            do
            {
              v205 = v217;
              v206 = v218;
              v207 = v219;
              v208 = v220;
              v203 = v215;
              v204 = v216;
              TSDGPUUpdateDataSetMetalPoint4DAtIndex(&v203, v80 + v185++, v181, v182, v183, v184);
            }

            while (v185 < *(a1 + 160));
          }
        }
      }

      v186 = *(a1 + 40);
      if (v186[25])
      {
        if (*(a1 + 329) == 1)
        {
          [v186 colorTexCoordAtIndexPoint:{v199, v196}];
          v188 = v187;
          v190 = v189;
        }

        else
        {
          v284.origin.x = v66;
          v284.origin.y = v200;
          v284.size.width = v65;
          v284.size.height = v201;
          v191 = CGRectGetMidX(v284) / *(a1 + 216);
          v285.origin.x = v66;
          v285.origin.y = v200;
          v285.size.width = v65;
          v285.size.height = v201;
          v188 = v191;
          v45 = 1.0;
          v190 = 1.0 - CGRectGetMidY(v285) / *(a1 + 224);
        }

        if (*(a1 + 160))
        {
          v192 = 0;
          do
          {
            v205 = v211;
            v206 = v212;
            v207 = v213;
            v208 = v214;
            v203 = v209;
            v204 = v210;
            TSDGPUUpdateDataSetMetalPoint2DAtIndex(&v203, v80 + v192++, v188, v190);
          }

          while (v192 < *(a1 + 160));
        }
      }

      v47 = v196;
LABEL_147:
      ++v46;
      v44 = *(a1 + 152);
    }

    while (v46 < v44);
    v43 = *(a1 + 144);
LABEL_149:
    ++v193;
  }

  while (v193 < v43);
}

- (void)p_setupVertexData
{
  v26 = *MEMORY[0x277D85DE8];
  if ([(TSDGPUParticleSystem *)self shouldDraw])
  {
    particleCount = [(TSDGPUParticleSystem *)self particleCount];
    v4 = [objc_opt_class() numberOfVerticesPerParticle] * particleCount;
    visibilities = self->_visibilities;
    v6 = v4;
    if (visibilities)
    {
      v6 = 0;
      if (v4)
      {
        v7 = v4;
        do
        {
          v8 = *visibilities++;
          v6 += v8;
          --v7;
        }

        while (v7);
      }
    }

    self->_particleCount = v6 / [objc_opt_class() numberOfVerticesPerParticle];
    self->_visibleParticleCount = [(TSDGPUParticleSystem *)self particleCount];
    if (v6 != v4)
    {
      dataBuffer = [(TSDGPUParticleSystem *)self dataBuffer];
      [(TSDGPUParticleSystem *)self p_setupDataBufferWithParticleCount:self->_particleCount visibleParticleCount:self->_visibleParticleCount];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      obj = [(TSDGPUDataBuffer *)dataBuffer vertexAttributes];
      v10 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v20 = *v22;
        do
        {
          v12 = 0;
          do
          {
            if (*v22 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v21 + 1) + 8 * v12);
            v14 = -[TSDGPUDataBuffer vertexAttributeNamed:](-[TSDGPUParticleSystem dataBuffer](self, "dataBuffer"), "vertexAttributeNamed:", [v13 name]);
            if (v4)
            {
              v15 = v14;
              v16 = 0;
              v17 = 0;
              do
              {
                if (self->_visibilities[v16])
                {
                  [(TSDGPUDataBuffer *)[(TSDGPUParticleSystem *)self dataBuffer] setDataForAttribute:v15 atIndex:v17++ fromAttribute:v13 dataBuffer:dataBuffer index:v16];
                }

                ++v16;
              }

              while (v4 != v16);
            }

            ++v12;
          }

          while (v12 != v11);
          v11 = [(NSArray *)obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);
      }

      v18 = self->_visibilities;
      if (v18)
      {
        free(v18);
        self->_visibilities = 0;
      }
    }

    self->_isDataBufferInitialized = 1;
  }
}

- (CGSize)p_resizeSystemToFitWithinMaxVerticesWithSystemSize:(CGSize)size
{
  height = size.height;
  v4 = (size.width * size.height);
  v5 = 0xFFFFuLL / [objc_opt_class() numberOfVerticesPerParticle];
  if (v5 >= v4)
  {
    v5 = v4;
  }

  v6 = (v5 / height);
  v7 = height;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)p_reverseParticleDataDrawOrder
{
  if ([(TSDGPUParticleSystem *)self shouldDraw])
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUParticleSystem(Private) p_reverseParticleDataDrawOrder]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUParticleSystem.m"];

    [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:1022 description:{@"Reversing particle order is not yet implemented, but probably should be if you're calling this!"}];
  }
}

+ (CGSize)p_particleSystemSizeWithRequestedNumber:(unint64_t)number objectSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  i = size.height;
  numberOfVerticesPerParticle = [objc_opt_class() numberOfVerticesPerParticle];
  v9 = 0xFFFF / numberOfVerticesPerParticle;
  if (0xFFFF / numberOfVerticesPerParticle < number)
  {
    number = 0xFFFF / numberOfVerticesPerParticle;
  }

  v10 = width == *MEMORY[0x277CBF3A8] && i == *(MEMORY[0x277CBF3A8] + 8);
  if (!v10 && ((v11 = [objc_opt_class() willOverrideStartingPoints], number != 1) ? (v12 = v11 == 0) : (v12 = 0), v12))
  {
    numberCopy = width;
    if (width * height > number)
    {
      if (number)
      {
        v15 = round(sqrt(width * height));
        v16 = (ceil(width / v15) * ceil(height / v15));
        if (number <= v16)
        {
          do
          {
            v19 = v16;
            v15 = v15 + 1.0;
            v16 = (ceil(width / v15) * ceil(height / v15));
          }

          while (v15 > 2.0 && v16 > number);
          v18 = 2.0;
          if (v15 > 2.0)
          {
            v20 = v16 - number;
            if (v20 < 0)
            {
              v20 = -v20;
            }

            v21 = v19 - number;
            if (v21 < 0)
            {
              v21 = -v21;
            }

            if (v20 <= v21)
            {
              v18 = v15;
            }

            else
            {
              v18 = v15 + -1.0;
            }
          }
        }

        else
        {
          do
          {
            v17 = v16;
            v15 = v15 + -1.0;
            v16 = (ceil(width / v15) * ceil(height / v15));
          }

          while (v15 > 2.0 && number > v16);
          v18 = 2.0;
          if (v15 > 2.0)
          {
            if (vabdd_f64(v16, number) <= vabdd_f64(v17, number))
            {
              v18 = v15;
            }

            else
            {
              v18 = v15 + 1.0;
            }
          }
        }

        numberCopy = ceil(width / v18);
        for (i = ceil(height / v18); v9 < (numberCopy * i); i = ceil(height / v18))
        {
          v18 = v18 + 1.0;
          numberCopy = ceil(width / v18);
        }
      }

      else
      {
        i = 1.0;
        numberCopy = 1.0;
      }
    }
  }

  else
  {
    numberCopy = number;
    i = 1.0;
  }

  v14 = i;
  result.height = v14;
  result.width = numberCopy;
  return result;
}

- (void)p_logParticleInformation
{
  NSLog(@"%@", a2, self);
  visibilities = self->_visibilities;
  particleCount = [(TSDGPUParticleSystem *)self particleCount];
  if (visibilities)
  {
    if (particleCount)
    {
      v5 = 0;
      LODWORD(v6) = 0;
      do
      {
        v7 = self->_visibilities;
        v6 = v6 + v7[[objc_opt_class() numberOfVerticesPerParticle] * v5++];
      }

      while (v5 < [(TSDGPUParticleSystem *)self particleCount]);
    }

    else
    {
      v6 = 0;
    }

    NSLog(@"TSDGPUParticleSystem: Particles visible: %i (%.1f%%)", v6, v6 / [(TSDGPUParticleSystem *)self particleCount]* 100.0);
  }

  else
  {
    NSLog(@"TSDGPUParticleSystem: Particles visible: %li (ALL)", particleCount);
  }
}

@end