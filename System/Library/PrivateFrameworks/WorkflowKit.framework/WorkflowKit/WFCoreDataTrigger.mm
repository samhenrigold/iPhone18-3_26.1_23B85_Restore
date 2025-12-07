@interface WFCoreDataTrigger
+ (id)recordPropertyMap;
- (id)descriptor;
- (id)trigger;
@end

@implementation WFCoreDataTrigger

- (id)trigger
{
  data = [(WFCoreDataTrigger *)self data];
  v3 = [WFTrigger triggerWithSerializedData:data];

  return v3;
}

- (id)descriptor
{
  v20 = [WFConfiguredTrigger alloc];
  identifier = [(WFCoreDataTrigger *)self identifier];
  shortcut = [(WFCoreDataTrigger *)self shortcut];
  workflowID = [shortcut workflowID];
  trigger = [(WFCoreDataTrigger *)self trigger];
  shouldPrompt = [(WFCoreDataTrigger *)self shouldPrompt];
  shouldNotify = [(WFCoreDataTrigger *)self shouldNotify];
  shouldRecur = [(WFCoreDataTrigger *)self shouldRecur];
  potentialLoopDetected = [(WFCoreDataTrigger *)self potentialLoopDetected];
  enabled = [(WFCoreDataTrigger *)self enabled];
  disablementReason = [(WFCoreDataTrigger *)self disablementReason];
  source = [(WFCoreDataTrigger *)self source];
  notificationLevel = [(WFCoreDataTrigger *)self notificationLevel];
  editableShortcut = [(WFCoreDataTrigger *)self editableShortcut];
  selectedEntryMetadata = [(WFCoreDataTrigger *)self selectedEntryMetadata];
  LOBYTE(v16) = editableShortcut;
  BYTE1(v15) = enabled;
  LOBYTE(v15) = potentialLoopDetected;
  v13 = [(WFConfiguredTrigger *)v20 initWithIdentifier:identifier workflowID:workflowID trigger:trigger shouldPrompt:shouldPrompt shouldNotify:shouldNotify shouldRecur:shouldRecur potentialLoopDetected:v15 enabled:disablementReason disablementReason:__PAIR64__(notificationLevel triggerSource:source) notificationLevel:v16 editableShortcut:selectedEntryMetadata selectedEntryMetadata:?];

  return v13;
}

+ (id)recordPropertyMap
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"triggerData";
  v5[0] = @"data";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

@end