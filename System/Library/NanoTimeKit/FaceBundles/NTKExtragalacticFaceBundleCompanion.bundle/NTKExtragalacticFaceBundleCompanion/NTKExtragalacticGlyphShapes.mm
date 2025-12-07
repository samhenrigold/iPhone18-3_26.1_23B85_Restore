@interface NTKExtragalacticGlyphShapes
- (NTKExtragalacticGlyphShapes)init;
- (void)removeAllPaths;
- (void)setPath:(id)path forGlyphColor:(unint64_t)color;
- (void)setPosition:(CGPoint)position;
- (void)setShapeFrame:(CGRect)frame;
- (void)setShapeLayer:(id)layer atGlyphColor:(unint64_t)color;
@end

@implementation NTKExtragalacticGlyphShapes

- (NTKExtragalacticGlyphShapes)init
{
  v6.receiver = self;
  v6.super_class = NTKExtragalacticGlyphShapes;
  v2 = [(NTKExtragalacticGlyphShapes *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:4];
    glyphLayers = v2->_glyphLayers;
    v2->_glyphLayers = v3;
  }

  return v2;
}

- (void)setPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_glyphLayers allValues];
  v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v10 + 1) + 8 * v9++) setPosition:{x, y}];
      }

      while (v7 != v9);
      v7 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)setShapeFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17 = *MEMORY[0x277D85DE8];
  self->_shapeFrame = frame;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_glyphLayers allValues];
  v8 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * v11++) setFrame:{x, y, width, height}];
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)setShapeLayer:(id)layer atGlyphColor:(unint64_t)color
{
  glyphLayers = self->_glyphLayers;
  v6 = MEMORY[0x277CCABB0];
  layerCopy = layer;
  v8 = [v6 numberWithUnsignedInteger:color];
  [(NSMutableDictionary *)glyphLayers setObject:layerCopy forKeyedSubscript:v8];
}

- (void)setPath:(id)path forGlyphColor:(unint64_t)color
{
  glyphLayers = self->_glyphLayers;
  v6 = MEMORY[0x277CCABB0];
  pathCopy = path;
  v10 = [v6 numberWithUnsignedInteger:color];
  v8 = [(NSMutableDictionary *)glyphLayers objectForKeyedSubscript:v10];
  cGPath = [pathCopy CGPath];

  [v8 setPath:cGPath];
}

- (void)removeAllPaths
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_glyphLayers allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v7 + 1) + 8 * v6++) setPath:0];
      }

      while (v4 != v6);
      v4 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end