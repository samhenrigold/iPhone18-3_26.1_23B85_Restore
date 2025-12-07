@interface KNBuildAttributeTuple
+ (id)tupleForBuild:(id)build property:(id)property value:(id)value;
+ (id)tupleWithChunk:(id)chunk property:(id)property value:(id)value;
+ (id)tupleWithChunk:(id)chunk referent:(unint64_t)referent;
- (BOOL)isValidForSlide:(id)slide;
- (KNBuild)build;
- (KNBuildAttributeTuple)initWithBuild:(id)build chunk:(id)chunk property:(id)property value:(id)value;
- (KNBuildChunk)chunk;
- (id)description;
@end

@implementation KNBuildAttributeTuple

+ (id)tupleWithChunk:(id)chunk property:(id)property value:(id)value
{
  valueCopy = value;
  propertyCopy = property;
  chunkCopy = chunk;
  v11 = [[self alloc] initWithChunk:chunkCopy property:propertyCopy value:valueCopy];

  return v11;
}

+ (id)tupleForBuild:(id)build property:(id)property value:(id)value
{
  valueCopy = value;
  propertyCopy = property;
  buildCopy = build;
  v11 = [[self alloc] initWithBuild:buildCopy property:propertyCopy value:valueCopy];

  return v11;
}

+ (id)tupleWithChunk:(id)chunk referent:(unint64_t)referent
{
  chunkCopy = chunk;
  v7 = [self alloc];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:referent];
  v9 = [v7 initWithChunk:chunkCopy property:@"KNBuildChunkReferentProperty" value:v8];

  return v9;
}

- (KNBuildAttributeTuple)initWithBuild:(id)build chunk:(id)chunk property:(id)property value:(id)value
{
  buildCopy = build;
  chunkCopy = chunk;
  propertyCopy = property;
  valueCopy = value;
  if (chunkCopy)
  {
    v14 = chunkCopy;
  }

  else
  {
    v14 = buildCopy;
  }

  context = [v14 context];
  if (!context)
  {
    sub_275E6082C();
  }

  v41.receiver = self;
  v41.super_class = KNBuildAttributeTuple;
  v16 = [(KNBuildAttributeTuple *)&v41 initWithContext:context];
  if (v16)
  {
    if (!propertyCopy)
    {
      v17 = MEMORY[0x277D81150];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeTuple initWithBuild:chunk:property:value:]"];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m"];
      [v17 handleFailureInFunction:v18 file:v19 lineNumber:45 isFatal:0 description:{"Invalid parameter not satisfying: %{public}s", "property != nil"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v20 = [propertyCopy copy];
    property = v16->_property;
    v16->_property = v20;

    if (buildCopy)
    {
      if (chunkCopy)
      {
        v22 = MEMORY[0x277D81150];
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeTuple initWithBuild:chunk:property:value:]"];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m"];
        [v22 handleFailureInFunction:v23 file:v24 lineNumber:50 isFatal:0 description:{"expected nil value for '%{public}s'", "chunk"}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      objectUUID = [buildCopy objectUUID];
      if (!objectUUID)
      {
        v26 = MEMORY[0x277D81150];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeTuple initWithBuild:chunk:property:value:]"];
        v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m"];
        [v26 handleFailureInFunction:v27 file:v28 lineNumber:53 isFatal:0 description:{"invalid nil value for '%{public}s'", "buildId"}];

        [MEMORY[0x277D81150] logBacktraceThrottled];
      }

      buildId = v16->_buildId;
      v16->_buildId = objectUUID;

      v16->_definedBuildId = 1;
      if (!chunkCopy)
      {
LABEL_19:
        if (!valueCopy)
        {
          goto LABEL_24;
        }

        goto LABEL_20;
      }
    }

    else if (!chunkCopy)
    {
      v37 = MEMORY[0x277D81150];
      v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeTuple initWithBuild:chunk:property:value:]"];
      v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m"];
      [v37 handleFailureInFunction:v38 file:v39 lineNumber:66 isFatal:0 description:"Tried to initialize an instance of KNBuildAttributeTuple without a build or a chunk. This doesn't make sense.'"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      if (!valueCopy)
      {
        goto LABEL_24;
      }

LABEL_20:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = valueCopy;
      }

      else
      {
        v34 = [KNBuildAttributes attributeValueForProperty:propertyCopy value:valueCopy];
      }

      attributeValue = v16->_attributeValue;
      v16->_attributeValue = v34;

      v16->_definedAttributeValue = 1;
      goto LABEL_24;
    }

    chunkIdentifier = [chunkCopy chunkIdentifier];
    if (![(KNBuildChunkIdentifier *)chunkIdentifier isValid])
    {
      v40 = MEMORY[0x277D81150];
      v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNBuildAttributeTuple initWithBuild:chunk:property:value:]"];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNBuildAttributeTuple.m"];
      [v40 handleFailureInFunction:v31 file:v32 lineNumber:60 isFatal:0 description:"Expected a valid chunk ID"];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    buildChunkIdentifier = v16->_buildChunkIdentifier;
    v16->_buildChunkIdentifier = chunkIdentifier;

    v16->_definedBuildChunkIdentifier = 1;
    goto LABEL_19;
  }

LABEL_24:

  return v16;
}

- (KNBuildChunk)chunk
{
  buildChunkIdentifier = self->_buildChunkIdentifier;
  context = [(KNBuildAttributeTuple *)self context];
  v4 = [(KNBuildChunkIdentifier *)buildChunkIdentifier resolveToChunkUsingContext:context];

  return v4;
}

- (KNBuild)build
{
  context = [(KNBuildAttributeTuple *)self context];
  v4 = [context objectWithUUID:self->_buildId];

  objc_opt_class();
  v5 = TSUCheckedDynamicCast();

  return v5;
}

- (BOOL)isValidForSlide:(id)slide
{
  slideCopy = slide;
  if ([(KNBuildAttributeTuple *)self isChunkTuple])
  {
    buildChunks = [slideCopy buildChunks];
    chunk = [(KNBuildAttributeTuple *)self chunk];
  }

  else
  {
    if (![(KNBuildAttributeTuple *)self isBuildTuple])
    {
      v8 = 0;
      goto LABEL_7;
    }

    buildChunks = [slideCopy builds];
    chunk = [(KNBuildAttributeTuple *)self build];
  }

  v7 = chunk;
  v8 = [buildChunks containsObject:chunk];

LABEL_7:
  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  chunk = [(KNBuildAttributeTuple *)self chunk];
  build = [(KNBuildAttributeTuple *)self build];
  property = [(KNBuildAttributeTuple *)self property];
  value = [(KNBuildAttributeTuple *)self value];
  v9 = [v3 stringWithFormat:@"<%@ %p chunk:%p build:%p property:%@ value:%@>", v4, self, chunk, build, property, value];

  return v9;
}

@end