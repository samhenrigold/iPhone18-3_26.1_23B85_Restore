@interface TUIElementSmartGrid
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementSmartGrid

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  contextCopy = context;
  v11 = [contextCopy modelIdentifierByAppendingString:@"scrollable" node:node.var0];
  [boxCopy setModelIdentifierForScrollable:v11];

  [boxCopy setAcceptsDrop:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 2, 0, node.var0)}];
  v12 = [attributesCopy stringForAttribute:65 node:node.var0];
  [boxCopy setDecelerationRate:{TUIBoxDecelerationRateFromString(v12, v13)}];

  [attributesCopy insetsForAttribute:112 node:node.var0];
  [boxCopy setInsets:?];
  v14 = [attributesCopy objectForAttribute:52 node:node.var0];
  [boxCopy setColumns:v14];

  [boxCopy setMaxColumns:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 128, 0x7FFFFFFFFFFFFFFFLL, node.var0)}];
  v15 = [attributesCopy lengthForAttribute:56 node:node.var0];
  [boxCopy setColumnWidth:{v15, v16}];
  v17 = [attributesCopy lengthForAttribute:54 node:node.var0];
  [boxCopy setColumnSpacing:{v17, v18}];
  [boxCopy setColumnMultiple:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 53, 1, node.var0)}];
  v19 = [attributesCopy stringForAttribute:120 node:node.var0];
  [boxCopy setLayoutMode:{+[TUISmartGridBox layoutModeFromString:](TUISmartGridBox, "layoutModeFromString:", v19)}];

  if ([boxCopy layoutMode])
  {
    v20 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = 1;
  }

  [boxCopy setRows:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 179, v20, node.var0)}];
  v21 = [attributesCopy lengthForAttribute:180 node:node.var0];
  [boxCopy setRowSpacing:{v21, v22}];
  environment = [contextCopy environment];

  v25 = 0;
  if ([environment deviceClass] == &dword_4 + 2)
  {
    v25 = TUISwooshUseUnboundedScroll(6, v24) ^ 1;
  }

  [boxCopy setPaginated:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 148, v25, node.var0)}];
  [boxCopy setMaxPages:{objc_msgSend(attributesCopy, "unsignedIntegerForAttribute:withDefault:node:", 130, 0x7FFFFFFFFFFFFFFFLL, node.var0)}];
  v26 = [attributesCopy stringForAttribute:222 node:node.var0];
  [boxCopy setVerticalPlacement:{+[TUISmartGridBox verticalPlacementFromString:](TUISmartGridBox, "verticalPlacementFromString:", v26)}];

  v27 = [attributesCopy snapForAttribute:226 node:node.var0];
  [boxCopy setWidthSnap:v27];

  [attributesCopy insetsForAttribute:91 node:node.var0];
  [boxCopy setGradientInsets:?];
  [attributesCopy insetsForAttribute:92 withDefault:node.var0 node:{1.0, 1.0, 1.0, 1.0}];
  [boxCopy setGradientFraction:?];
  [boxCopy setBalanceSections:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 31, node.var0)}];
  [boxCopy setTruncate:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 213, node.var0)}];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  if ([objectCopy acceptsDrop])
  {
    finalizeTriggers = [builderCopy finalizeTriggers];
    v10 = [finalizeTriggers behaviorDataForTrigger:@"drop"];

    if (v10)
    {
      v11 = [TUIElementActionTriggerHandler alloc];
      actionObject = [contextCopy actionObject];
      actionDelegate = [contextCopy actionDelegate];
      v14 = [(TUIElementActionTriggerHandler *)v11 initWithActionsData:finalizeTriggers actionObject:actionObject actionDelegate:actionDelegate];
      [objectCopy setDropHandler:v14];
    }
  }

  v15 = [builderCopy finalizeContentsWithContext:contextCopy];
  [objectCopy updateWithContents:v15];

  configuration = [builderCopy configuration];
  [objectCopy setConfiguration:configuration];
}

@end