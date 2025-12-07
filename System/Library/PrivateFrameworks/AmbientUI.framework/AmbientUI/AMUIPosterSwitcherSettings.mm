@interface AMUIPosterSwitcherSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation AMUIPosterSwitcherSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = AMUIPosterSwitcherSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_exitingCardBehaviorScaleDownOnly = 1;
  self->_verticalExitingCardTargetScale = 0.884615362;
  self->_horizontalExitingCardTargetScale = 0.61;
  self->_exitingCardTargetOpacity = 0.0;
  self->_verticalSwitcherCircular = 0;
  self->_horizontalSwitcherCircular = 0;
  self->_verticalScootch = 0.0;
  self->_forwardTimeFadeoutTargetProgress = 0.3;
  self->_reverseTimeFadeoutTargetProgress = 0.05;
  self->_chromeFadeoutTargetProgress = 0.05;
  self->_labelFadeinTargetProgress = 0.05;
  self->_useFallbackTitleAndSymbol = 0;
  self->_photoSymbolHugsEdge = 1;
  self->_horizontalScaleDampingRatio = 1.0;
  self->_horizontalScaleResponse = 0.35;
  self->_verticalScaleDampingRatio = 1.0;
  self->_verticalScaleResponse = 0.35;
}

+ (id)settingsControllerModule
{
  v58[9] = *MEMORY[0x277D85DE8];
  v52 = [MEMORY[0x277D432A0] rowWithTitle:@"Scale Down Only" valueKeyPath:@"exitingCardBehaviorScaleDownOnly"];
  v2 = [MEMORY[0x277D43298] rowWithTitle:@"Vertical Switching Target Scale" valueKeyPath:@"verticalExitingCardTargetScale"];
  v51 = [v2 minValue:0.0 maxValue:1.0];

  v3 = [MEMORY[0x277D43298] rowWithTitle:@"Horizontal Switching Target Scale" valueKeyPath:@"horizontalExitingCardTargetScale"];
  v50 = [v3 minValue:0.0 maxValue:1.0];

  v4 = [MEMORY[0x277D43298] rowWithTitle:@"Target Opacity" valueKeyPath:@"exitingCardTargetOpacity"];
  v49 = [v4 minValue:0.0 maxValue:1.0];

  v5 = [MEMORY[0x277D43298] rowWithTitle:@"Horizontal Scale Damping Ratio" valueKeyPath:@"horizontalScaleDampingRatio"];
  v48 = [v5 minValue:0.0 maxValue:2.0];

  v6 = [MEMORY[0x277D43298] rowWithTitle:@"Horizontal Scale Response" valueKeyPath:@"horizontalScaleResponse"];
  v47 = [v6 minValue:0.0 maxValue:2.0];

  v7 = [MEMORY[0x277D43298] rowWithTitle:@"Vertical Scale Damping Ratio" valueKeyPath:@"verticalScaleDampingRatio"];
  v46 = [v7 minValue:0.0 maxValue:2.0];

  v8 = [MEMORY[0x277D43298] rowWithTitle:@"Vertical Scale Response" valueKeyPath:@"verticalScaleResponse"];
  v45 = [v8 minValue:0.0 maxValue:2.0];

  v9 = [MEMORY[0x277D43298] rowWithTitle:@"Scootch" valueKeyPath:@"verticalScootch"];
  v44 = [v9 minValue:0.0 maxValue:200.0];

  v10 = MEMORY[0x277D43218];
  v58[0] = v52;
  v58[1] = v51;
  v58[2] = v50;
  v58[3] = v49;
  v58[4] = v48;
  v58[5] = v47;
  v58[6] = v46;
  v58[7] = v45;
  v58[8] = v44;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:9];
  v12 = [v10 sectionWithRows:v11 title:@"Outgoing Card Transitions"];

  v43 = [MEMORY[0x277D432A0] rowWithTitle:@"Circular - Vertical" valueKeyPath:@"verticalSwitcherCircular"];
  v42 = [MEMORY[0x277D432A0] rowWithTitle:@"Circular - Horizontal" valueKeyPath:@"horizontalSwitcherCircular"];
  v13 = MEMORY[0x277D43218];
  v57[0] = v43;
  v57[1] = v42;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:2];
  v41 = [v13 sectionWithRows:v14 title:@"Scrolling Behavior"];

  v15 = [MEMORY[0x277D43298] rowWithTitle:@"Forward Time Fadeout" valueKeyPath:@"forwardTimeFadeoutTargetProgress"];
  v40 = [v15 minValue:0.0 maxValue:0.5];

  v16 = [MEMORY[0x277D43298] rowWithTitle:@"Reverse Time Fadeout" valueKeyPath:@"reverseTimeFadeoutTargetProgress"];
  v39 = [v16 minValue:0.0 maxValue:0.25];

  v17 = [MEMORY[0x277D43298] rowWithTitle:@"Chrome Fadeout" valueKeyPath:@"chromeFadeoutTargetProgress"];
  v38 = [v17 minValue:0.0 maxValue:0.25];

  v18 = [MEMORY[0x277D43298] rowWithTitle:@"Label Fadein" valueKeyPath:@"labelFadeinTargetProgress"];
  v37 = [v18 minValue:0.0 maxValue:0.25];

  v19 = MEMORY[0x277D43218];
  v56[0] = v40;
  v56[1] = v39;
  v56[2] = v38;
  v56[3] = v37;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:4];
  v21 = [v19 sectionWithRows:v20 title:@"Transition Target Progresses"];

  v22 = [MEMORY[0x277D432A0] rowWithTitle:@"Use Fallback Title When Unavailable" valueKeyPath:@"useFallbackTitleAndSymbol"];
  v23 = [MEMORY[0x277D432A0] rowWithTitle:@"Symbols Hug Screen Edge" valueKeyPath:@"photoSymbolHugsEdge"];
  v24 = MEMORY[0x277D43218];
  v55[0] = v22;
  v55[1] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:2];
  v26 = [v24 sectionWithRows:v25 title:@"Photo Labels"];

  v27 = MEMORY[0x277D431A8];
  v28 = [MEMORY[0x277D43238] actionWithSettingsKeyPath:0];
  v29 = [v27 rowWithTitle:@"Restore Defaults" action:v28];

  v30 = MEMORY[0x277D43218];
  v54 = v29;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v32 = [v30 sectionWithRows:v31];

  v33 = MEMORY[0x277D43218];
  v53[0] = v12;
  v53[1] = v41;
  v53[2] = v21;
  v53[3] = v26;
  v53[4] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:5];
  v35 = [v33 moduleWithTitle:@"Quick Switching" contents:v34];

  return v35;
}

@end