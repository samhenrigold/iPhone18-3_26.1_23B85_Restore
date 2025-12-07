@interface VOSSettingsItem
+ (NSArray)allSettingsItems;
+ (VOSSettingsItem)Activities;
+ (VOSSettingsItem)AudioDucking;
+ (VOSSettingsItem)BSIActivationGestures;
+ (VOSSettingsItem)BrailleAlerts;
+ (VOSSettingsItem)BrailleAutoAdvanceDuration;
+ (VOSSettingsItem)BrailleFormatting;
+ (VOSSettingsItem)BrailleInput;
+ (VOSSettingsItem)BrailleOutput;
+ (VOSSettingsItem)CaptionPanel;
+ (VOSSettingsItem)DirectTouch;
+ (VOSSettingsItem)DuckingAmount;
+ (VOSSettingsItem)GestureDirection;
+ (VOSSettingsItem)HardwareTypingFeedback;
+ (VOSSettingsItem)Hints;
+ (VOSSettingsItem)ImageDescriptions;
+ (VOSSettingsItem)LargeCursor;
+ (VOSSettingsItem)LiveRegions;
+ (VOSSettingsItem)MediaDescriptions;
+ (VOSSettingsItem)NavigateImages;
+ (VOSSettingsItem)NavigationStyle;
+ (VOSSettingsItem)PhoneticFeedback;
+ (VOSSettingsItem)Pitch;
+ (VOSSettingsItem)Punctuation;
+ (VOSSettingsItem)RotorActionConfirmation;
+ (VOSSettingsItem)ScreenRecognition;
+ (VOSSettingsItem)SendToHDMI;
+ (VOSSettingsItem)SlideToType;
+ (VOSSettingsItem)SoftwareTypingFeedback;
+ (VOSSettingsItem)SoundCurtain;
+ (VOSSettingsItem)Sounds;
+ (VOSSettingsItem)SpeakNotifications;
+ (VOSSettingsItem)SpeakingRate;
+ (VOSSettingsItem)TypingStyle;
+ (VOSSettingsItem)Voice;
+ (VOSSettingsItem)Volume;
+ (id)settingsIDtoItemMap:(id)map;
- (BOOL)isEqual:(id)equal;
- (NSString)localizedName;
- (id)_initWithIdentifier:(id)identifier itemType:(int64_t)type;
- (id)description;
- (unint64_t)hash;
@end

@implementation VOSSettingsItem

- (id)_initWithIdentifier:(id)identifier itemType:(int64_t)type
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = VOSSettingsItem;
  v7 = [(VOSSettingsItem *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(VOSSettingsItem *)v7 setIdentifier:identifierCopy];
    [(VOSSettingsItem *)v8 setItemType:type];
  }

  return v8;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(VOSSettingsItem *)self identifier];
  v4 = [v2 stringWithFormat:@"VOSSettingsItem '%@'", identifier];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [(VOSSettingsItem *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(VOSSettingsItem *)self identifier];
  v3 = [identifier hash];

  return v3;
}

+ (VOSSettingsItem)Sounds
{
  if (Sounds_onceToken != -1)
  {
    +[VOSSettingsItem Sounds];
  }

  v3 = Sounds__SettingsItem;

  return v3;
}

uint64_t __25__VOSSettingsItem_Sounds__block_invoke()
{
  Sounds__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Sounds" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)AudioDucking
{
  if (AudioDucking_onceToken != -1)
  {
    +[VOSSettingsItem AudioDucking];
  }

  v3 = AudioDucking__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_AudioDucking__block_invoke()
{
  AudioDucking__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"AudioDucking" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Volume
{
  if (Volume_onceToken != -1)
  {
    +[VOSSettingsItem Volume];
  }

  v3 = Volume__SettingsItem;

  return v3;
}

uint64_t __25__VOSSettingsItem_Volume__block_invoke()
{
  Volume__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Volume" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Pitch
{
  if (Pitch_onceToken != -1)
  {
    +[VOSSettingsItem Pitch];
  }

  v3 = Pitch__SettingsItem;

  return v3;
}

uint64_t __24__VOSSettingsItem_Pitch__block_invoke()
{
  Pitch__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Pitch" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)PhoneticFeedback
{
  if (PhoneticFeedback_onceToken != -1)
  {
    +[VOSSettingsItem PhoneticFeedback];
  }

  v3 = PhoneticFeedback__SettingsItem;

  return v3;
}

uint64_t __35__VOSSettingsItem_PhoneticFeedback__block_invoke()
{
  PhoneticFeedback__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"PhoneticFeedback" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SendToHDMI
{
  if (SendToHDMI_onceToken != -1)
  {
    +[VOSSettingsItem SendToHDMI];
  }

  v3 = SendToHDMI__SettingsItem;

  return v3;
}

uint64_t __29__VOSSettingsItem_SendToHDMI__block_invoke()
{
  SendToHDMI__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SendToHDMI" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SpeakNotifications
{
  if (SpeakNotifications_onceToken != -1)
  {
    +[VOSSettingsItem SpeakNotifications];
  }

  v3 = SpeakNotifications__SettingsItem;

  return v3;
}

uint64_t __37__VOSSettingsItem_SpeakNotifications__block_invoke()
{
  SpeakNotifications__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SpeakNotifications" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SoundCurtain
{
  if (SoundCurtain_onceToken != -1)
  {
    +[VOSSettingsItem SoundCurtain];
  }

  v3 = SoundCurtain__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_SoundCurtain__block_invoke()
{
  SoundCurtain__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SoundCurtain" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SpeakingRate
{
  if (SpeakingRate_onceToken != -1)
  {
    +[VOSSettingsItem SpeakingRate];
  }

  v3 = SpeakingRate__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_SpeakingRate__block_invoke()
{
  SpeakingRate__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SpeakingRate" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Voice
{
  if (Voice_onceToken != -1)
  {
    +[VOSSettingsItem Voice];
  }

  v3 = Voice__SettingsItem;

  return v3;
}

uint64_t __24__VOSSettingsItem_Voice__block_invoke()
{
  Voice__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Voice" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)DuckingAmount
{
  if (DuckingAmount_onceToken != -1)
  {
    +[VOSSettingsItem DuckingAmount];
  }

  v3 = DuckingAmount__SettingsItem;

  return v3;
}

uint64_t __32__VOSSettingsItem_DuckingAmount__block_invoke()
{
  DuckingAmount__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"DuckingAmount" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Hints
{
  if (Hints_onceToken != -1)
  {
    +[VOSSettingsItem Hints];
  }

  v3 = Hints__SettingsItem;

  return v3;
}

uint64_t __24__VOSSettingsItem_Hints__block_invoke()
{
  Hints__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Hints" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)MediaDescriptions
{
  if (MediaDescriptions_onceToken != -1)
  {
    +[VOSSettingsItem MediaDescriptions];
  }

  v3 = MediaDescriptions__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_MediaDescriptions__block_invoke()
{
  MediaDescriptions__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"MediaDescriptions" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)RotorActionConfirmation
{
  if (RotorActionConfirmation_onceToken != -1)
  {
    +[VOSSettingsItem RotorActionConfirmation];
  }

  v3 = RotorActionConfirmation__SettingsItem;

  return v3;
}

uint64_t __42__VOSSettingsItem_RotorActionConfirmation__block_invoke()
{
  RotorActionConfirmation__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"RotorActionConfirmation" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Activities
{
  if (Activities_onceToken != -1)
  {
    +[VOSSettingsItem Activities];
  }

  v3 = Activities__SettingsItem;

  return v3;
}

uint64_t __29__VOSSettingsItem_Activities__block_invoke()
{
  Activities__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Activities" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)Punctuation
{
  if (Punctuation_onceToken != -1)
  {
    +[VOSSettingsItem Punctuation];
  }

  v3 = Punctuation__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_Punctuation__block_invoke()
{
  Punctuation__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"Punctuation" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)ScreenRecognition
{
  if (ScreenRecognition_onceToken != -1)
  {
    +[VOSSettingsItem ScreenRecognition];
  }

  v3 = ScreenRecognition__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_ScreenRecognition__block_invoke()
{
  ScreenRecognition__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"ScreenRecognition" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)ImageDescriptions
{
  if (ImageDescriptions_onceToken != -1)
  {
    +[VOSSettingsItem ImageDescriptions];
  }

  v3 = ImageDescriptions__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_ImageDescriptions__block_invoke()
{
  ImageDescriptions__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"ImageDescriptions" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)DirectTouch
{
  if (DirectTouch_onceToken != -1)
  {
    +[VOSSettingsItem DirectTouch];
  }

  v3 = DirectTouch__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_DirectTouch__block_invoke()
{
  DirectTouch__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"DirectTouch" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)NavigationStyle
{
  if (NavigationStyle_onceToken != -1)
  {
    +[VOSSettingsItem NavigationStyle];
  }

  v3 = NavigationStyle__SettingsItem;

  return v3;
}

uint64_t __34__VOSSettingsItem_NavigationStyle__block_invoke()
{
  NavigationStyle__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"NavigationStyle" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)NavigateImages
{
  if (NavigateImages_onceToken != -1)
  {
    +[VOSSettingsItem NavigateImages];
  }

  v3 = NavigateImages__SettingsItem;

  return v3;
}

uint64_t __33__VOSSettingsItem_NavigateImages__block_invoke()
{
  NavigateImages__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"NavigateImages" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)GestureDirection
{
  if (GestureDirection_onceToken != -1)
  {
    +[VOSSettingsItem GestureDirection];
  }

  v3 = GestureDirection__SettingsItem;

  return v3;
}

uint64_t __35__VOSSettingsItem_GestureDirection__block_invoke()
{
  GestureDirection__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"GestureDirection" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)TypingStyle
{
  if (TypingStyle_onceToken != -1)
  {
    +[VOSSettingsItem TypingStyle];
  }

  v3 = TypingStyle__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_TypingStyle__block_invoke()
{
  TypingStyle__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"TypingStyle" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SoftwareTypingFeedback
{
  if (SoftwareTypingFeedback_onceToken != -1)
  {
    +[VOSSettingsItem SoftwareTypingFeedback];
  }

  v3 = SoftwareTypingFeedback__SettingsItem;

  return v3;
}

uint64_t __41__VOSSettingsItem_SoftwareTypingFeedback__block_invoke()
{
  SoftwareTypingFeedback__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SoftwareTypingFeedback" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)HardwareTypingFeedback
{
  if (HardwareTypingFeedback_onceToken != -1)
  {
    +[VOSSettingsItem HardwareTypingFeedback];
  }

  v3 = HardwareTypingFeedback__SettingsItem;

  return v3;
}

uint64_t __41__VOSSettingsItem_HardwareTypingFeedback__block_invoke()
{
  HardwareTypingFeedback__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"HardwareTypingFeedback" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)SlideToType
{
  if (SlideToType_onceToken != -1)
  {
    +[VOSSettingsItem SlideToType];
  }

  v3 = SlideToType__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_SlideToType__block_invoke()
{
  SlideToType__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"SlideToType" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)CaptionPanel
{
  if (CaptionPanel_onceToken != -1)
  {
    +[VOSSettingsItem CaptionPanel];
  }

  v3 = CaptionPanel__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_CaptionPanel__block_invoke()
{
  CaptionPanel__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"CaptionPanel" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)LargeCursor
{
  if (LargeCursor_onceToken != -1)
  {
    +[VOSSettingsItem LargeCursor];
  }

  v3 = LargeCursor__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_LargeCursor__block_invoke()
{
  LargeCursor__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"LargeCursor" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleAlerts
{
  if (BrailleAlerts_onceToken != -1)
  {
    +[VOSSettingsItem BrailleAlerts];
  }

  v3 = BrailleAlerts__SettingsItem;

  return v3;
}

uint64_t __32__VOSSettingsItem_BrailleAlerts__block_invoke()
{
  BrailleAlerts__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleAlerts" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleFormatting
{
  if (BrailleFormatting_onceToken != -1)
  {
    +[VOSSettingsItem BrailleFormatting];
  }

  v3 = BrailleFormatting__SettingsItem;

  return v3;
}

uint64_t __36__VOSSettingsItem_BrailleFormatting__block_invoke()
{
  BrailleFormatting__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleFormatting" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleAutoAdvanceDuration
{
  if (BrailleAutoAdvanceDuration_onceToken != -1)
  {
    +[VOSSettingsItem BrailleAutoAdvanceDuration];
  }

  v3 = BrailleAutoAdvanceDuration__SettingsItem;

  return v3;
}

uint64_t __45__VOSSettingsItem_BrailleAutoAdvanceDuration__block_invoke()
{
  BrailleAutoAdvanceDuration__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleAutoAdvanceDuration" itemType:1];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleOutput
{
  if (BrailleOutput_onceToken != -1)
  {
    +[VOSSettingsItem BrailleOutput];
  }

  v3 = BrailleOutput__SettingsItem;

  return v3;
}

uint64_t __32__VOSSettingsItem_BrailleOutput__block_invoke()
{
  BrailleOutput__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleOutput" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BrailleInput
{
  if (BrailleInput_onceToken != -1)
  {
    +[VOSSettingsItem BrailleInput];
  }

  v3 = BrailleInput__SettingsItem;

  return v3;
}

uint64_t __31__VOSSettingsItem_BrailleInput__block_invoke()
{
  BrailleInput__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BrailleInput" itemType:2];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)LiveRegions
{
  if (LiveRegions_onceToken != -1)
  {
    +[VOSSettingsItem LiveRegions];
  }

  v3 = LiveRegions__SettingsItem;

  return v3;
}

uint64_t __30__VOSSettingsItem_LiveRegions__block_invoke()
{
  LiveRegions__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"LiveRegions" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (VOSSettingsItem)BSIActivationGestures
{
  if (BSIActivationGestures_onceToken != -1)
  {
    +[VOSSettingsItem BSIActivationGestures];
  }

  v3 = BSIActivationGestures__SettingsItem;

  return v3;
}

uint64_t __40__VOSSettingsItem_BSIActivationGestures__block_invoke()
{
  BSIActivationGestures__SettingsItem = [[VOSSettingsItem alloc] _initWithIdentifier:@"BSIActivationGestures" itemType:0];

  return MEMORY[0x2821F96F8]();
}

+ (NSArray)allSettingsItems
{
  if (allSettingsItems_onceToken != -1)
  {
    +[VOSSettingsItem allSettingsItems];
  }

  v3 = allSettingsItems_FinalList;

  return v3;
}

void __35__VOSSettingsItem_allSettingsItems__block_invoke()
{
  v41[35] = *MEMORY[0x277D85DE8];
  v40 = +[VOSSettingsItem Sounds];
  v41[0] = v40;
  v39 = +[VOSSettingsItem AudioDucking];
  v41[1] = v39;
  v38 = +[VOSSettingsItem Volume];
  v41[2] = v38;
  v37 = +[VOSSettingsItem Pitch];
  v41[3] = v37;
  v36 = +[VOSSettingsItem PhoneticFeedback];
  v41[4] = v36;
  v35 = +[VOSSettingsItem SendToHDMI];
  v41[5] = v35;
  v34 = +[VOSSettingsItem SpeakNotifications];
  v41[6] = v34;
  v33 = +[VOSSettingsItem SoundCurtain];
  v41[7] = v33;
  v32 = +[VOSSettingsItem SpeakingRate];
  v41[8] = v32;
  v31 = +[VOSSettingsItem Voice];
  v41[9] = v31;
  v30 = +[VOSSettingsItem DuckingAmount];
  v41[10] = v30;
  v29 = +[VOSSettingsItem Hints];
  v41[11] = v29;
  v28 = +[VOSSettingsItem MediaDescriptions];
  v41[12] = v28;
  v27 = +[VOSSettingsItem RotorActionConfirmation];
  v41[13] = v27;
  v26 = +[VOSSettingsItem Activities];
  v41[14] = v26;
  v25 = +[VOSSettingsItem Punctuation];
  v41[15] = v25;
  v24 = +[VOSSettingsItem ScreenRecognition];
  v41[16] = v24;
  v23 = +[VOSSettingsItem ImageDescriptions];
  v41[17] = v23;
  v22 = +[VOSSettingsItem DirectTouch];
  v41[18] = v22;
  v21 = +[VOSSettingsItem NavigationStyle];
  v41[19] = v21;
  v20 = +[VOSSettingsItem NavigateImages];
  v41[20] = v20;
  v19 = +[VOSSettingsItem GestureDirection];
  v41[21] = v19;
  v18 = +[VOSSettingsItem TypingStyle];
  v41[22] = v18;
  v16 = +[VOSSettingsItem SoftwareTypingFeedback];
  v41[23] = v16;
  v15 = +[VOSSettingsItem HardwareTypingFeedback];
  v41[24] = v15;
  v14 = +[VOSSettingsItem SlideToType];
  v41[25] = v14;
  v0 = +[VOSSettingsItem CaptionPanel];
  v41[26] = v0;
  v1 = +[VOSSettingsItem LargeCursor];
  v41[27] = v1;
  v2 = +[VOSSettingsItem BrailleAlerts];
  v41[28] = v2;
  v3 = +[VOSSettingsItem BrailleFormatting];
  v41[29] = v3;
  v4 = +[VOSSettingsItem BrailleAutoAdvanceDuration];
  v41[30] = v4;
  v5 = +[VOSSettingsItem BrailleOutput];
  v41[31] = v5;
  v6 = +[VOSSettingsItem BrailleInput];
  v41[32] = v6;
  v7 = +[VOSSettingsItem LiveRegions];
  v41[33] = v7;
  v8 = +[VOSSettingsItem BSIActivationGestures];
  v41[34] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:35];
  v17 = [v9 mutableCopy];

  v10 = [v17 ax_filteredArrayUsingBlock:&__block_literal_global_463];
  v11 = allSettingsItems_FinalList;
  allSettingsItems_FinalList = v10;

  v12 = [allSettingsItems_FinalList sortedArrayUsingComparator:&__block_literal_global_467_0];
  v13 = allSettingsItems_FinalList;
  allSettingsItems_FinalList = v12;
}

uint64_t __35__VOSSettingsItem_allSettingsItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[VOSSettingsHelper sharedInstance];
  v4 = [v3 isItemSupported:v2];

  return v4;
}

uint64_t __35__VOSSettingsItem_allSettingsItems__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[VOSSettingsHelper sharedInstance];
  v7 = [v6 nameForItem:v5];

  v8 = +[VOSSettingsHelper sharedInstance];
  v9 = [v8 nameForItem:v4];

  v10 = [v7 localizedStandardCompare:v9];
  return v10;
}

+ (id)settingsIDtoItemMap:(id)map
{
  v18 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = mapCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        identifier = [v10 identifier];
        [dictionary setObject:v10 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (NSString)localizedName
{
  v2 = MEMORY[0x277CCACA8];
  identifier = [(VOSSettingsItem *)self identifier];
  v4 = [v2 stringWithFormat:@"VOSSettingsItem.%@", identifier];

  v5 = VOSLocString(v4);

  return v5;
}

@end