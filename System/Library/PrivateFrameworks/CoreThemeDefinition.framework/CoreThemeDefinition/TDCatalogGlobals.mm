@interface TDCatalogGlobals
- (BOOL)allowsCustomTintColors;
- (BOOL)allowsSystemTintColors;
- (BOOL)allowsVibrancy;
- (BOOL)supportsBrightnessAdjustments;
- (BOOL)supportsMultipleAppearancesForEffects;
- (BOOL)supportsWhitePointAdjustments;
- (id)dictionaryForArchiving;
- (unint64_t)defaultBlendMode;
- (void)setAllowsCustomTintColors:(BOOL)colors;
- (void)setAllowsSystemTintColors:(BOOL)colors;
- (void)setAllowsVibrancy:(BOOL)vibrancy;
- (void)setDefaultBlendMode:(unint64_t)mode;
- (void)setSupportsBrightnessAdjustments:(BOOL)adjustments;
- (void)setSupportsMultipleAppearancesForEffects:(BOOL)effects;
- (void)setSupportsWhitePointAdjustments:(BOOL)adjustments;
@end

@implementation TDCatalogGlobals

- (unint64_t)defaultBlendMode
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"defaultBlendMode"];
  defaultBlendMode = self->_defaultBlendMode;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"defaultBlendMode"];
  return defaultBlendMode;
}

- (void)setDefaultBlendMode:(unint64_t)mode
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"defaultBlendMode"];
  self->_defaultBlendMode = mode;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"defaultBlendMode"];
}

- (BOOL)allowsVibrancy
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"allowsVibrancy"];
  allowsVibrancy = self->_allowsVibrancy;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"allowsVibrancy"];
  return allowsVibrancy;
}

- (void)setAllowsVibrancy:(BOOL)vibrancy
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"allowsVibrancy"];
  self->_allowsVibrancy = vibrancy;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"allowsVibrancy"];
}

- (BOOL)supportsWhitePointAdjustments
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"supportsWhitePointAdjustments"];
  supportsBrightnessAdjustments = self->_supportsBrightnessAdjustments;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"supportsWhitePointAdjustments"];
  return supportsBrightnessAdjustments;
}

- (void)setSupportsWhitePointAdjustments:(BOOL)adjustments
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"supportsWhitePointAdjustments"];
  self->_supportsBrightnessAdjustments = adjustments;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"supportsWhitePointAdjustments"];
}

- (BOOL)supportsBrightnessAdjustments
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"supportsBrightnessAdjustments"];
  supportsBrightnessAdjustments = self->_supportsBrightnessAdjustments;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"supportsBrightnessAdjustments"];
  return supportsBrightnessAdjustments;
}

- (void)setSupportsBrightnessAdjustments:(BOOL)adjustments
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"supportsBrightnessAdjustments"];
  self->_supportsBrightnessAdjustments = adjustments;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"supportsBrightnessAdjustments"];
}

- (BOOL)allowsSystemTintColors
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"allowsSystemTintColors"];
  allowsSystemTintColors = self->_allowsSystemTintColors;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"allowsSystemTintColors"];
  return allowsSystemTintColors;
}

- (void)setAllowsSystemTintColors:(BOOL)colors
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"allowsSystemTintColors"];
  self->_allowsSystemTintColors = colors;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"allowsSystemTintColors"];
}

- (BOOL)allowsCustomTintColors
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"allowsCustomTintColors"];
  allowsCustomTintColors = self->_allowsCustomTintColors;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"allowsCustomTintColors"];
  return allowsCustomTintColors;
}

- (void)setAllowsCustomTintColors:(BOOL)colors
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"allowsCustomTintColors"];
  self->_allowsCustomTintColors = colors;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"allowsCustomTintColors"];
}

- (BOOL)supportsMultipleAppearancesForEffects
{
  [(TDCatalogGlobals *)self willAccessValueForKey:@"supportsMultipleAppearancesForEffects"];
  supportsMultipleAppearancesForEffects = self->_supportsMultipleAppearancesForEffects;
  [(TDCatalogGlobals *)self didAccessValueForKey:@"supportsMultipleAppearancesForEffects"];
  return supportsMultipleAppearancesForEffects;
}

- (void)setSupportsMultipleAppearancesForEffects:(BOOL)effects
{
  [(TDCatalogGlobals *)self willChangeValueForKey:@"supportsMultipleAppearancesForEffects"];
  self->_supportsMultipleAppearancesForEffects = effects;

  [(TDCatalogGlobals *)self didChangeValueForKey:@"supportsMultipleAppearancesForEffects"];
}

- (id)dictionaryForArchiving
{
  v5[7] = *MEMORY[0x277D85DE8];
  v4[0] = @"defaultBlendMode";
  v5[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[TDCatalogGlobals defaultBlendMode](self, "defaultBlendMode")}];
  v4[1] = @"allowsVibrancy";
  v5[1] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals allowsVibrancy](self, "allowsVibrancy")}];
  v4[2] = @"supportsWhitePointAdjustments";
  v5[2] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals supportsWhitePointAdjustments](self, "supportsWhitePointAdjustments")}];
  v4[3] = @"supportsBrightnessAdjustments";
  v5[3] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals supportsBrightnessAdjustments](self, "supportsBrightnessAdjustments")}];
  v4[4] = @"allowsSystemTintColors";
  v5[4] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals allowsSystemTintColors](self, "allowsSystemTintColors")}];
  v4[5] = @"allowsCustomTintColors";
  v5[5] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals allowsCustomTintColors](self, "allowsCustomTintColors")}];
  v4[6] = @"supportsMultipleAppearancesForEffects";
  v5[6] = [MEMORY[0x277CCABB0] numberWithBool:{-[TDCatalogGlobals supportsMultipleAppearancesForEffects](self, "supportsMultipleAppearancesForEffects")}];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:7];
}

@end