@interface KNSlideNodeDepthMap
- (KNSlideNodeDepthMap)initWithSlideNodes:(id)nodes depths:(id)depths;
- (void)enumerateSlideNodesAndDepthsUsingBlock:(id)block;
@end

@implementation KNSlideNodeDepthMap

- (KNSlideNodeDepthMap)initWithSlideNodes:(id)nodes depths:(id)depths
{
  nodesCopy = nodes;
  depthsCopy = depths;
  v18.receiver = self;
  v18.super_class = KNSlideNodeDepthMap;
  v8 = [(KNSlideNodeDepthMap *)&v18 init];
  if (v8)
  {
    v9 = [nodesCopy count];
    if (v9 != [depthsCopy count])
    {
      v10 = MEMORY[0x277D81150];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNodeDepthMap initWithSlideNodes:depths:]"];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodeDepthMap.m"];
      [v10 handleFailureInFunction:v11 file:v12 lineNumber:30 isFatal:0 description:"Slide node depths map must have equal number slide nodes to depths."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    v13 = [nodesCopy copy];
    slideNodes = v8->_slideNodes;
    v8->_slideNodes = v13;

    v15 = [depthsCopy copy];
    depthsOfSlideNodes = v8->_depthsOfSlideNodes;
    v8->_depthsOfSlideNodes = v15;
  }

  return v8;
}

- (void)enumerateSlideNodesAndDepthsUsingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    v4 = MEMORY[0x277D81150];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNSlideNodeDepthMap enumerateSlideNodesAndDepthsUsingBlock:]"];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNSlideNodeDepthMap.m"];
    [v4 handleFailureInFunction:v5 file:v6 lineNumber:40 isFatal:0 description:{"invalid nil value for '%{public}s'", "block"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  if ([(NSArray *)self->_slideNodes count])
  {
    v7 = 0;
    do
    {
      v8 = [(NSArray *)self->_slideNodes objectAtIndexedSubscript:v7];
      v9 = [(NSArray *)self->_depthsOfSlideNodes objectAtIndexedSubscript:v7];
      blockCopy[2](blockCopy, v8, [v9 unsignedIntegerValue]);

      ++v7;
    }

    while (v7 < [(NSArray *)self->_slideNodes count]);
  }
}

@end