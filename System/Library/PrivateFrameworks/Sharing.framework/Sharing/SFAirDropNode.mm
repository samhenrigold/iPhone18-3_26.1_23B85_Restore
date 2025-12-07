@interface SFAirDropNode
+ (id)nodeWithSFNode:(__SFNode *)node;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SFAirDropNode)init;
- (id)displayNameForLocale:(id)locale;
- (unint64_t)hash;
- (void)_updateDisplayIconWithSFNode:(__SFNode *)node;
- (void)appendDiscoveryInfoToDisplayName:(id)name;
- (void)cancelSend;
- (void)dealloc;
- (void)handleOperationCallback:(__SFOperation *)callback event:(int64_t)event withResults:(id)results;
- (void)setRangingMeasurement:(id)measurement;
- (void)startSendForBundleID:(id)d sessionID:(id)iD items:(id)items description:(id)description previewImage:(CGImage *)image fromShareSheet:(BOOL)sheet;
- (void)updateDisplayName;
- (void)updateWithSFNode:(__SFNode *)node;
@end

@implementation SFAirDropNode

+ (id)nodeWithSFNode:(__SFNode *)node
{
  v4 = objc_alloc_init(SFAirDropNode);
  [(SFAirDropNode *)v4 updateWithSFNode:node];

  return v4;
}

- (SFAirDropNode)init
{
  v6.receiver = self;
  v6.super_class = SFAirDropNode;
  v2 = [(SFAirDropNode *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    discoveryDate = v2->_discoveryDate;
    v2->_discoveryDate = v3;

    v2->_sender = 0;
  }

  return v2;
}

- (void)dealloc
{
  CGImageRelease(self->_displayIcon);
  v3.receiver = self;
  v3.super_class = SFAirDropNode;
  [(SFAirDropNode *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[SFAirDropNode isSuggestion](self, "isSuggestion") && [v5 isSuggestion])
    {
      realName = self->_realName;
      realName = [v5 realName];
      v8 = [(NSString *)realName isEqualToString:realName];
    }

    else
    {
      realName = [(SFAirDropNode *)self node];
      v8 = !valuesChanged(realName, [v5 node]);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  node = [(SFAirDropNode *)self node];
  v3 = CFHash(node);

  return v3;
}

- (NSString)description
{
  v36 = 0;
  v3 = objc_opt_class();
  NSAppendPrintF(&v36, "<%@: %{ptr}", v3, self);
  v4 = v36;
  v35 = v4;
  NSAppendPrintF(&v35, ", realName: %@", self->_realName);
  v5 = v35;

  v34 = v5;
  v6 = [(NSString *)self->_displayName stringByReplacingOccurrencesOfString:@"\n" withString:@" "];
  NSAppendPrintF(&v34, ", displayName: %@", v6);
  v7 = v34;

  v33 = v7;
  NSAppendPrintF(&v33, ", secondaryName: %@", self->_secondaryName);
  v8 = v33;

  v32 = v8;
  if (self->_me)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  NSAppendPrintF(&v32, ", isMe: %s", v9);
  v10 = v32;

  v31 = v10;
  if (self->_unknown)
  {
    v11 = "no";
  }

  else
  {
    v11 = "yes";
  }

  NSAppendPrintF(&v31, ", isKnown: %s", v11);
  v12 = v31;

  v30 = v12;
  if (self->_rapport)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  NSAppendPrintF(&v30, ", isRapport: %s", v13);
  v14 = v30;

  v29 = v14;
  if (self->_ultraWideBindCapable)
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  NSAppendPrintF(&v29, ", uwbCapable: %s", v15);
  v16 = v29;

  selectionReason = self->_selectionReason;
  if (selectionReason >= 1)
  {
    v28 = v16;
    v18 = "?";
    if (selectionReason == 1)
    {
      v18 = "Pointing";
    }

    if (selectionReason == 2)
    {
      v19 = "CozyUp";
    }

    else
    {
      v19 = v18;
    }

    NSAppendPrintF(&v28, ", selected (%s)", v19);
    v20 = v28;

    v16 = v20;
  }

  rangingMeasurement = self->_rangingMeasurement;
  if (rangingMeasurement)
  {
    v27 = v16;
    NSAppendPrintF(&v27, ", rangingMeasurement: %@", rangingMeasurement);
    v22 = v27;

    v16 = v22;
  }

  v26 = v16;
  NSAppendPrintF(&v26, ">");
  v23 = v26;
  v24 = v26;

  return v23;
}

- (void)updateWithSFNode:(__SFNode *)node
{
  [(SFAirDropNode *)self _updateDisplayIconWithSFNode:?];
  self->_selectionReason = SFNodeGetSelectionReason(node);
  self->_supportsCredentials = SFNodeSupportsCredentials(node) != 0;
  self->_supportsFMF = SFNodeSupportsFMF(node);
  self->_supportsPasses = SFNodeSupportsPasses(node) != 0;
  self->_supportsMixedTypes = SFNodeSupportsMixedTypes(node) != 0;
  self->_ultraWideBindCapable = SFNodeSupportsUWB(node) != 0;
  v14 = SFNodeCopyKinds(node);
  self->_disabled = [(__CFSet *)v14 containsObject:@"Disabled"];
  self->_me = [(__CFSet *)v14 containsObject:@"Me"];
  self->_unknown = [(__CFSet *)v14 containsObject:@"Unknown"];
  self->_monogram = [(__CFSet *)v14 containsObject:@"Monogram"];
  self->_classroom = [(__CFSet *)v14 containsObject:@"Classroom"];
  self->_classroomCourse = [(__CFSet *)v14 containsObject:@"ClassroomCourse"];
  self->_classroomGroup = [(__CFSet *)v14 containsObject:@"ClassroomGroup"];
  self->_suggestion = [(__CFSet *)v14 containsObject:@"Suggestion"];
  self->_rapport = [(__CFSet *)v14 containsObject:@"Rapport"];
  [(SFAirDropNode *)self setNode:node];
  v5 = SFNodeCopyRealName(node);
  [(SFAirDropNode *)self setRealName:v5];

  v6 = SFNodeCopySecondaryName(node);
  [(SFAirDropNode *)self setSecondaryName:v6];

  v7 = SFNodeCopyContactIdentifier(node);
  [(SFAirDropNode *)self setContactIdentifier:v7];

  v8 = SFNodeCopyModel(node);
  [(SFAirDropNode *)self setModel:v8];

  v9 = SFNodeCopyTransportBundleID(node);
  if (v9)
  {
    [(SFAirDropNode *)self setTransportBundleID:v9];
  }

  v10 = SFNodeCopyHandles(node);
  [(SFAirDropNode *)self setActualHandles:v10];

  v11 = SFNodeCopyRangingData(node);
  rangingMeasurement2 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
  if (IsAppleInternalBuild())
  {
    if (CFPreferencesGetAppBooleanValue(@"ShowKnownInMagicHead", @"com.apple.Sharing", 0))
    {
      rangingMeasurement = [(SFAirDropNode *)self rangingMeasurement];

      if (rangingMeasurement)
      {
        if (!rangingMeasurement2)
        {
          rangingMeasurement2 = [(SFAirDropNode *)self rangingMeasurement];
        }
      }
    }
  }

  [(SFAirDropNode *)self updateDisplayName];
  [(SFAirDropNode *)self setRangingMeasurement:rangingMeasurement2];
}

- (void)_updateDisplayIconWithSFNode:(__SFNode *)node
{
  node = [(SFAirDropNode *)self node];
  if (node)
  {
    node2 = [(SFAirDropNode *)self node];
    IconData = SFNodeGetIconData(node2);
  }

  else
  {
    IconData = 0;
  }

  if (node)
  {
    v8 = SFNodeGetIconData(node);
    if (v8)
    {
      v9 = v8;
      if (valuesChanged(IconData, v8))
      {
        v10 = SFCreateCGImageFromData(v9);
        [(SFAirDropNode *)self setDisplayIcon:v10];

        CGImageRelease(v10);
      }
    }
  }
}

- (void)setRangingMeasurement:(id)measurement
{
  measurementCopy = measurement;
  p_rangingMeasurement = &self->_rangingMeasurement;
  v7 = self->_rangingMeasurement;
  v8 = measurementCopy;
  v18 = v8;
  if (v7 == v8)
  {

LABEL_18:
    goto LABEL_19;
  }

  if ((v8 == 0) == (v7 != 0))
  {

    goto LABEL_7;
  }

  v9 = [(CURangingMeasurement *)v7 isEqual:v8];

  if ((v9 & 1) == 0)
  {
LABEL_7:
    objc_storeStrong(&self->_rangingMeasurement, measurement);
    v10 = +[SFSettingsDomain rootSettings];
    magicHeadSettings = [v10 magicHeadSettings];
    showRangingValues = [magicHeadSettings showRangingValues];

    if (!showRangingValues)
    {
      goto LABEL_19;
    }

    flags = [(CURangingMeasurement *)*p_rangingMeasurement flags];
    v14 = objc_opt_new();
    v7 = v14;
    if ((flags & 8) != 0)
    {
      [(CURangingMeasurement *)*p_rangingMeasurement ptsScore];
      [(CURangingMeasurement *)v7 appendFormat:@"%.2f", v15];
    }

    else
    {
      [(CURangingMeasurement *)v14 appendString:@"nil"];
    }

    [(CURangingMeasurement *)v7 appendString:@", "];
    if ((flags & 2) != 0)
    {
      [(CURangingMeasurement *)*p_rangingMeasurement horizontalAngle];
      [(CURangingMeasurement *)v7 appendFormat:@"%.2f", v16];
    }

    else
    {
      [(CURangingMeasurement *)v7 appendString:@"nil"];
    }

    [(CURangingMeasurement *)v7 appendString:@"°"];
    [(CURangingMeasurement *)v7 appendString:@", "];
    if (flags)
    {
      [(CURangingMeasurement *)*p_rangingMeasurement distanceMeters];
      [(CURangingMeasurement *)v7 appendFormat:@"%.2f", v17];
    }

    else
    {
      [(CURangingMeasurement *)v7 appendString:@"nil"];
    }

    [(CURangingMeasurement *)v7 appendString:@"↔︎"];
    [(SFAirDropNode *)self appendDiscoveryInfoToDisplayName:v7];
    [(SFAirDropNode *)self setDisplayName:v7];
    goto LABEL_18;
  }

LABEL_19:
}

- (void)updateDisplayName
{
  node = [(SFAirDropNode *)self node];

  if (self->_me && enableDeviceImages())
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = SFNodeCopyModel(node);
    v27 = [v4 stringWithFormat:@"My %@", v5];

    [(SFAirDropNode *)self setSecondaryName:&stru_1F1D30528];
    v6 = v27;
  }

  else
  {
    v6 = 0;
  }

  v28 = v6;
  if (![(__CFString *)v6 length]&& (self->_unknown || self->_classroom))
  {
    v8 = SFNodeCopyDisplayName(node);

    v7 = v8;
  }

  else
  {
    v7 = v28;
  }

  v29 = v7;
  if ([(__CFString *)v7 length]|| self->_me)
  {
    v9 = v29;
  }

  else
  {
    v26 = SFNodeCopyNickName(node);

    v9 = v26;
  }

  v30 = v9;
  if ([(__CFString *)v9 length]|| !self->_me)
  {
    v11 = v30;
  }

  else
  {
    v10 = SFNodeCopyComputerName(node);

    v11 = v10;
  }

  v31 = v11;
  if ([(__CFString *)v11 length]|| !self->_suggestion)
  {
    v13 = v31;
  }

  else
  {
    v12 = SFNodeCopyDisplayName(node);

    v13 = v12;
  }

  v32 = v13;
  if ([(__CFString *)v13 length])
  {
    v14 = v32;
  }

  else
  {
    Name = SFNodeCopyFirstName(node);
    v16 = SFNodeCopyLastName(node);
    v17 = objc_opt_new();
    nameComponents = self->_nameComponents;
    self->_nameComponents = v17;

    [(NSPersonNameComponents *)self->_nameComponents setGivenName:Name];
    [(NSPersonNameComponents *)self->_nameComponents setFamilyName:v16];
    v19 = objc_opt_new();
    [v19 setStyle:0];
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v19 set_locale:autoupdatingCurrentLocale];

    v21 = [v19 stringFromPersonNameComponents:self->_nameComponents];

    v14 = v21;
  }

  v33 = v14;
  [(SFAirDropNode *)self setDisplayName:v14];
  v22 = +[SFSettingsDomain rootSettings];
  magicHeadSettings = [v22 magicHeadSettings];
  showRangingValues = [magicHeadSettings showRangingValues];

  if (showRangingValues)
  {
    v25 = [v33 mutableCopy];
    [(SFAirDropNode *)self appendDiscoveryInfoToDisplayName:v25];
    [(SFAirDropNode *)self setDisplayName:v25];
  }
}

- (void)appendDiscoveryInfoToDisplayName:(id)name
{
  v21 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  node = [(SFAirDropNode *)self node];
  v6 = SFNodeCopySiblingNodes(node);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = v6;
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (!v8)
  {

    goto LABEL_18;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v17;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v17 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = SFNodeCopyKinds(*(*(&v16 + 1) + 8 * i));
      v15 = v14;
      if (v11 & v10)
      {
        v10 = 1;
LABEL_9:
        v11 = 1;
        goto LABEL_11;
      }

      if (([(__CFSet *)v14 containsObject:@"Rapport", v16]& 1) != 0)
      {
        goto LABEL_9;
      }

      v10 |= [(__CFSet *)v15 containsObject:@"Bonjour"];
LABEL_11:
    }

    v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  }

  while (v9);

  if (v11)
  {
    [nameCopy appendString:{@", B"}];
  }

  if (v10)
  {
    [nameCopy appendString:{@", A"}];
  }

LABEL_18:
}

- (id)displayNameForLocale:(id)locale
{
  localeCopy = locale;
  v5 = +[SFSettingsDomain rootSettings];
  magicHeadSettings = [v5 magicHeadSettings];
  showRangingValues = [magicHeadSettings showRangingValues];

  if (showRangingValues)
  {
    displayName = [(SFAirDropNode *)self displayName];
  }

  else
  {
    currentLocale = localeCopy;
    if (!currentLocale)
    {
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      v10 = airdrop_log(currentLocale);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(SFAirDropNode *)currentLocale displayNameForLocale:v10];
      }
    }

    v11 = self->_nameComponents;
    if (v11)
    {
      v12 = objc_opt_new();
      [v12 setStyle:0];
      [v12 set_locale:currentLocale];
      displayName = [v12 stringFromPersonNameComponents:v11];
    }

    else
    {
      displayName = [(SFAirDropNode *)self displayName];
    }
  }

  return displayName;
}

- (void)startSendForBundleID:(id)d sessionID:(id)iD items:(id)items description:(id)description previewImage:(CGImage *)image fromShareSheet:(BOOL)sheet
{
  sheetCopy = sheet;
  dCopy = d;
  iDCopy = iD;
  itemsCopy = items;
  descriptionCopy = description;
  v19 = descriptionCopy;
  if (!self->_sender)
  {
    v20 = airdrop_log(descriptionCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      [SFAirDropNode startSendForBundleID:a2 sessionID:itemsCopy items:v20 description:? previewImage:? fromShareSheet:?];
    }

    v21 = SFOperationCreate(0, @"Sender");
    self->_sender = v21;
    *&v22 = 0;
    *(&v22 + 1) = self;
    v23 = MEMORY[0x1E695D7C8];
    v24 = MEMORY[0x1E695D7C0];
    v25 = 0;
    SFOperationSetClient(v21, operationCallBack, &v22);
    SFOperationSetDispatchQueue(self->_sender, MEMORY[0x1E69E96A0]);
    SFOperationSetProperty(self->_sender, @"Node", self->_node);
    if (dCopy)
    {
      SFOperationSetProperty(self->_sender, @"BundleID", dCopy);
    }

    if (image)
    {
      SFOperationSetProperty(self->_sender, @"FileIcon", image);
    }

    SFOperationSetProperty(self->_sender, @"FromShareSheet", [MEMORY[0x1E696AD98] numberWithBool:sheetCopy]);
    SFOperationSetProperty(self->_sender, @"Items", itemsCopy);
    if (iDCopy)
    {
      SFOperationSetProperty(self->_sender, @"SessionID", iDCopy);
    }

    if (v19)
    {
      SFOperationSetProperty(self->_sender, @"ItemsDescription", v19);
    }

    SFOperationResume(self->_sender);
  }
}

- (void)cancelSend
{
  sender = self->_sender;
  if (sender)
  {
    SFOperationCancel(sender);
    CFRelease(self->_sender);
    self->_sender = 0;
  }
}

- (void)handleOperationCallback:(__SFOperation *)callback event:(int64_t)event withResults:(id)results
{
  resultsCopy = results;
  v9 = resultsCopy;
  if (event > 4)
  {
    if (event <= 0xF)
    {
      if (((1 << event) & 0xC9E0) != 0)
      {
        goto LABEL_17;
      }

      if (event != 9)
      {
        if (event == 10)
        {
          v10 = airdrop_log(resultsCopy);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [SFAirDropNode handleOperationCallback:v9 event:v10 withResults:?];
          }

          goto LABEL_12;
        }

        goto LABEL_14;
      }

LABEL_12:
      [(SFAirDropNode *)self cancelSend];
      goto LABEL_17;
    }

LABEL_14:
    v11 = airdrop_log(resultsCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SFAirDropNode handleOperationCallback:event event:v9 withResults:v11];
    }

    goto LABEL_17;
  }

  if (event == 2)
  {
    SFOperationResume(callback);
    goto LABEL_17;
  }

  if (event != 3)
  {
    if (event == 4)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_17:
}

- (void)displayNameForLocale:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "displayNameForLocale: inLocale = nil, using currentLocale: %@", &v2, 0xCu);
}

- (void)startSendForBundleID:(NSObject *)a3 sessionID:items:description:previewImage:fromShareSheet:.cold.1(const char *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 valueForKeyPath:@"class"];
  v7 = 138412802;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_1A9662000, a3, OS_LOG_TYPE_DEBUG, "AirDrop %@ Items \nTypes: [%@], \nValues: [%@]", &v7, 0x20u);
}

- (void)handleOperationCallback:(uint64_t)a1 event:(NSObject *)a2 withResults:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9662000, a2, OS_LOG_TYPE_ERROR, "Sender kSFOperationEventErrorOccured %@", &v2, 0xCu);
}

- (void)handleOperationCallback:(uint64_t)a1 event:(uint64_t)a2 withResults:(NSObject *)a3 .cold.2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = a1;
  v12 = *MEMORY[0x1E69E9840];
  v6 = 138412802;
  v7 = SFOperationEventToString(a1);
  v8 = 1024;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_error_impl(&dword_1A9662000, a3, OS_LOG_TYPE_ERROR, "Sender UNHANDLED EVENT %@ [%d] %@", &v6, 0x1Cu);
}

@end