@interface WatchControlSettings(GreySupportFeatures)
@end

@implementation WatchControlSettings(GreySupportFeatures)

- (void)setWatchControlHandGeturesEnabled:()GreySupportFeatures .cold.1(char a1)
{
  v1 = NSStringFromBOOL();
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_2(&dword_2729FD000, v2, v3, "Set AssistiveTouch hand gestures: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)setVoiceOverHandGestures:()GreySupportFeatures .cold.1(char a1)
{
  v1 = NSStringFromBOOL();
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_2(&dword_2729FD000, v2, v3, "Set VoiceOver hand gestures: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)setZoomHandGestures:()GreySupportFeatures .cold.1(char a1)
{
  v1 = NSStringFromBOOL();
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_2(&dword_2729FD000, v2, v3, "Set zoom hand gestures: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end