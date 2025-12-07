@interface MTLumaDodgePillStyleSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation MTLumaDodgePillStyleSettings

- (void)setDefaultValues
{
  [(MTLumaDodgePillStyleSettings *)self setColorAddOpacity:?];
  [(MTLumaDodgePillStyleSettings *)self setLumaMapPlusColorOpacity:?];
  [(MTLumaDodgePillStyleSettings *)self setOverlayBlendOpacity:?];
  [(MTLumaDodgePillStyleSettings *)self setBlur:?];
  [(MTLumaDodgePillStyleSettings *)self setBrightness:?];

  [(MTLumaDodgePillStyleSettings *)self setSaturation:?];
}

+ (id)settingsControllerModule
{
  v14 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v12 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v15 = [v12 minValue:? maxValue:?];
  v16 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v11 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v17 = [v11 minValue:? maxValue:?];
  v18 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v10 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v19 = [v10 minValue:? maxValue:?];
  v20 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v2 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v21 = [v2 minValue:? maxValue:?];
  v22 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v3 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v23 = [v3 minValue:? maxValue:?];
  v24 = [MEMORY[0x277D431F0] rowWithTitle:? valueKeyPath:?];
  v4 = [MEMORY[0x277D43298] rowWithTitle:? valueKeyPath:?];
  v25 = [v4 minValue:? maxValue:?];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];

  v6 = MEMORY[0x277D43218];
  v13 = [MEMORY[0x277D43218] sectionWithRows:? title:?];
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v8 = [v6 moduleWithTitle:? contents:?];

  return v8;
}

@end