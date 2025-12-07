@interface SBPIPBackdropView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (NSString)groupName;
- (SBPIPBackdropView)initWithFrame:(CGRect)frame;
- (double)backdropScale;
- (double)gaussianBlurRadius;
- (void)_updateFilters;
- (void)dealloc;
- (void)setBackdropScale:(double)scale;
- (void)setGaussianBlurRadius:(double)radius;
- (void)setGroupName:(id)name;
@end

@implementation SBPIPBackdropView

- (SBPIPBackdropView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v9 = SBLogPIP();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPBackdropView *)self initWithFrame:a2];
  }

  v19.receiver = self;
  v19.super_class = SBPIPBackdropView;
  height = [(SBPIPBackdropView *)&v19 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    animatedLayerProperties = height->_animatedLayerProperties;
    height->_animatedLayerProperties = &unk_28336DEA8;

    v13 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA328]];
    [v13 setName:@"gaussianBlur"];
    [v13 setValue:&unk_28336F200 forKey:@"inputRadius"];
    v14 = MEMORY[0x277CBEC38];
    [v13 setValue:MEMORY[0x277CBEC38] forKey:@"inputNormalizeEdges"];
    [v13 setValue:v14 forKey:@"inputHardEdges"];
    gaussianBlurFilter = v11->_gaussianBlurFilter;
    v11->_gaussianBlurFilter = v13;
    v16 = v13;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v11 selector:sel__updateFilters name:*MEMORY[0x277D764C8] object:0];

    [(SBPIPBackdropView *)v11 _updateFilters];
  }

  return v11;
}

- (void)dealloc
{
  v4 = SBLogPIP();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPBackdropView *)self initWithFrame:a2];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = SBPIPBackdropView;
  [(SBPIPBackdropView *)&v6 dealloc];
}

- (void)_updateFilters
{
  v10 = [MEMORY[0x277CBEB18] arrayWithObject:self->_gaussianBlurFilter];
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    averageColorFilter = self->_averageColorFilter;
    if (!averageColorFilter)
    {
      v4 = [MEMORY[0x277CD9EA0] filterWithType:*MEMORY[0x277CDA268]];
      v5 = self->_averageColorFilter;
      self->_averageColorFilter = v4;

      averageColorFilter = self->_averageColorFilter;
    }

    [v10 addObject:averageColorFilter];
  }

  gaussianBlurFilter = self->_gaussianBlurFilter;
  v7 = MEMORY[0x277CCABB0];
  [(SBPIPBackdropView *)self gaussianBlurRadius];
  v8 = [v7 numberWithDouble:?];
  [(CAFilter *)gaussianBlurFilter setValue:v8 forKey:@"inputRadius"];

  layer = [(SBPIPBackdropView *)self layer];
  [layer setFilters:v10];
}

- (NSString)groupName
{
  layer = [(SBPIPBackdropView *)self layer];
  groupName = [layer groupName];

  return groupName;
}

- (void)setGroupName:(id)name
{
  nameCopy = name;
  layer = [(SBPIPBackdropView *)self layer];
  [layer setGroupName:nameCopy];
}

- (double)gaussianBlurRadius
{
  layer = [(SBPIPBackdropView *)self layer];
  v3 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)setGaussianBlurRadius:(double)radius
{
  layer = [(SBPIPBackdropView *)self layer];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)backdropScale
{
  layer = [(SBPIPBackdropView *)self layer];
  [layer scale];
  v4 = v3;

  return v4;
}

- (void)setBackdropScale:(double)scale
{
  layer = [(SBPIPBackdropView *)self layer];
  [layer setScale:scale];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if (objc_msgSend_containsObject_(self->_animatedLayerProperties))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBPIPBackdropView;
    v5 = [(SBPIPBackdropView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (void)initWithFrame:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = _SBFLoggingMethodProem();
  LODWORD(v9) = 138412290;
  *(&v9 + 4) = v2;
  OUTLINED_FUNCTION_0_13(&dword_21ED4E000, v3, v4, "%@", v5, v6, v7, v8, v9, DWORD2(v9));
}

@end