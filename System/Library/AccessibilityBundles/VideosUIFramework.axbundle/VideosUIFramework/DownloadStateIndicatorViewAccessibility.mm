@interface DownloadStateIndicatorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_localizedStringForDownloadState:(unint64_t)state;
- (id)accessibilityLabel;
@end

@implementation DownloadStateIndicatorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VideosUI.DownloadStateIndicatorView" hasSwiftField:@"viewModel" withSwiftType:"Optional<DownloadStateIndicatorViewModel>"];
  [validationsCopy validateClass:@"VideosUI.DownloadStateIndicatorViewModel" hasSwiftField:@"downloadModel" withSwiftType:"VUIDownloadButtonViewModel"];
  [validationsCopy validateClass:@"VUIDownloadButtonViewModel" hasProperty:@"downloadState" withType:"Q"];
}

- (id)accessibilityLabel
{
  v3 = [(DownloadStateIndicatorViewAccessibility *)self safeSwiftValueForKey:@"viewModel"];
  v4 = [v3 safeSwiftValueForKey:@"downloadModel"];
  v5 = -[DownloadStateIndicatorViewAccessibility _localizedStringForDownloadState:](self, "_localizedStringForDownloadState:", [v4 safeIntegerForKey:@"_downloadState"]);

  return v5;
}

- (id)_localizedStringForDownloadState:(unint64_t)state
{
  if (_localizedStringForDownloadState__onceToken != -1)
  {
    [DownloadStateIndicatorViewAccessibility _localizedStringForDownloadState:];
  }

  v4 = _localizedStringForDownloadState__stateToKeyMap;
  v5 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:state];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = accessibilityLocalizedString(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __76__DownloadStateIndicatorViewAccessibility__localizedStringForDownloadState___block_invoke()
{
  v3[5] = *MEMORY[0x29EDCA608];
  v2[0] = &unk_2A23AB1E8;
  v2[1] = &unk_2A23AB200;
  v3[0] = @"download.button.connecting";
  v3[1] = @"download.button.downloading";
  v2[2] = &unk_2A23AB218;
  v2[3] = &unk_2A23AB230;
  v3[2] = @"download.button.downloaded";
  v3[3] = @"download.button.paused";
  v2[4] = &unk_2A23AB248;
  v3[4] = @"download.button.enqueued";
  v0 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v3 forKeys:v2 count:5];
  v1 = _localizedStringForDownloadState__stateToKeyMap;
  _localizedStringForDownloadState__stateToKeyMap = v0;
}

@end