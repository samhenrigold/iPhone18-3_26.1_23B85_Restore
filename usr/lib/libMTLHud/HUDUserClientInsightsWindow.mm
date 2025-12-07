@interface HUDUserClientInsightsWindow
- (BOOL)draw:(HUDMTLLayerState *)draw drawableState:(HUDMTLLayerDrawableState *)state fontSize:(int)size frame:(id)frame width:(float *)width height:(float *)height;
- (BOOL)isInsightEnabled:(id)enabled;
- (HUDUserClientInsightsWindow)initWithFrame:(CGRect)frame;
- (id)addInsightGroup:(id)group;
- (void)addInsight:(HUDInsightDescriptor *)insight isPrototype:(BOOL)prototype;
- (void)enableInsight:(id)insight enabled:(BOOL)enabled;
@end

@implementation HUDUserClientInsightsWindow

- (HUDUserClientInsightsWindow)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = HUDUserClientInsightsWindow;
  v3 = [(HUDUserClientWindow *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_opt_new();
    insightGroups = v3->_insightGroups;
    v3->_insightGroups = v4;

    v6 = objc_opt_new();
    insightMap = v3->_insightMap;
    v3->_insightMap = v6;

    v8 = objc_opt_new();
    insightGroupMap = v3->_insightGroupMap;
    v3->_insightGroupMap = v8;

    v10 = [(HUDUserClientInsightsWindow *)v3 addInsightGroup:@"API Usage Patterns"];
    v11 = [(HUDUserClientInsightsWindow *)v3 addInsightGroup:@"Metal 4 Recommendations"];
    v12 = [(HUDUserClientInsightsWindow *)v3 addInsightGroup:@"Other Insights"];
  }

  return v3;
}

- (id)addInsightGroup:(id)group
{
  groupCopy = group;
  v5 = [(NSMutableDictionary *)self->_insightGroupMap objectForKeyedSubscript:groupCopy];
  if (!v5)
  {
    v5 = [[HUDUserClientInsightGroup alloc] initWithCategory:groupCopy];
    [(NSMutableDictionary *)self->_insightGroupMap setObject:v5 forKeyedSubscript:groupCopy];
    [(NSMutableArray *)self->_insightGroups addObject:v5];
  }

  return v5;
}

- (void)addInsight:(HUDInsightDescriptor *)insight isPrototype:(BOOL)prototype
{
  prototypeCopy = prototype;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = [(NSMutableDictionary *)selfCopy->_insightMap objectForKeyedSubscript:insight->identifier];
  v8 = v7;
  if (!v7 || prototypeCopy)
  {
    v27 = [(NSMutableDictionary *)selfCopy->_insightMap objectForKeyedSubscript:insight->identifier];

    if (!v27)
    {
      category = insight->category;
      if (!category)
      {
        category = @"Other Insights";
      }

      v29 = category;
      v30 = [(HUDUserClientInsightsWindow *)selfCopy addInsightGroup:v29];
      v31 = [HUDUserClientInsight alloc];
      prototypeCopy = [(HUDUserClientInsight *)v31 initWithDescriptor:insight timeOut:(*(HUDGetGlobalConfig(v31 isPrototype:v32) + 30) * 1000000000.0), prototypeCopy];
      insights = [v30 insights];
      [insights addObject:prototypeCopy];

      [(NSMutableDictionary *)selfCopy->_insightMap setObject:prototypeCopy forKeyedSubscript:insight->identifier];
    }
  }

  else
  {
    v9 = [v7 update:insight];
    if ((insight->options & 2) == 0 || MTLHudIsInternalInstall(v9, v10))
    {
      v11 = +[_CADeveloperHUDProperties instance];
      frameMarker = [v11 frameMarker];

      v14 = HUDSignpostGetOSLog(1, v13);
      v15 = os_signpost_enabled(v14);

      if (v15)
      {
        v17 = HUDSignpostGetOSLog(1, v16);
        if (os_signpost_enabled(v17))
        {
          v18 = HUDCurrentTimeInNs();
          v20 = [NSString stringWithFormat:@"+%.2fs", (v18 - *(HUDGetGlobalConfig(v18, v19) + 19)) / 1000000000.0];
          GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v20, v21);
          CurrentFrame = HUDGPUTimeTrackerGetCurrentFrame(GlobalInstance);
          identifier = insight->identifier;
          message = insight->message;
          v26 = @"none";
          if (frameMarker)
          {
            v26 = frameMarker;
          }

          *buf = 138544386;
          v36 = v20;
          v37 = 2050;
          v38 = CurrentFrame;
          v39 = 2114;
          v40 = identifier;
          v41 = 2114;
          v42 = message;
          v43 = 2114;
          v44 = v26;
          _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "NewInsight", "time: %{public, name=time}@\nframe: %{public, name=frame}zu\nidentifier: %{public, name=identifier}@\nmessage: %{public, name=message}@\nmarker: %{public, name=marker}@", buf, 0x34u);
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)draw:(HUDMTLLayerState *)draw drawableState:(HUDMTLLayerDrawableState *)state fontSize:(int)size frame:(id)frame width:(float *)width height:(float *)height
{
  heightCopy = height;
  GlobalOverlay = HUDMTLOverlayGetGlobalOverlay(self, a2);
  v59 = 0;
  HUDUIFrameGetSizeInPoints(frame.var0, &v59 + 1, &v59);
  v10 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v12 = selfCopy->_insightGroups;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (v13)
  {
    v14 = *v56;
    do
    {
      v15 = 0;
      do
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(v12);
        }

        insights = [*(*(&v55 + 1) + 8 * v15) insights];
        [v10 addObjectsFromArray:insights];

        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v55 objects:v60 count:16];
    }

    while (v13);
  }

  objc_sync_exit(selfCopy);
  if ([v10 count])
  {
    HUDUIRectMake();
    v53 = HUDUIInvalidString;
    v54 = qword_784F8;
    HUDUIFrameBeginWindow(frame.var0, &v53, 3003121664, 1, v17, v18, v19, v20, 15.0);
    v21 = HUDCurrentTimeInNs();
    reverseObjectEnumerator = [v10 reverseObjectEnumerator];
    [reverseObjectEnumerator nextObject];
    v24 = v23 = 0;
    if (v24)
    {
      do
      {
        v25 = v21 - [v24 timeUpdated];
        if (v25 < [v24 timeOut] && objc_msgSend(v24, "enabled") && objc_msgSend(*(objc_msgSend(v24, "descriptor") + 2), "length"))
        {
          v53 = 0uLL;
          v54 = 0;
          HUDUIWrappedTemporaryString([*(objc_msgSend(v24 "descriptor") + 2)], frame.var0, size, &v53, (HIDWORD(v59) - 30), 99.0);
          v50 = v53;
          v51 = v54;
          v52 = 0;
          HUDUIWindowGetLabelSize(frame.var0, &v50, &v52 + 1, &v52);
          v26 = HUDUIWindowBeginRow(frame.var0);
          v27 = *&v26;
          v29 = v28;
          v31 = v30;
          v33 = v32;
          *width = fmaxf(*(&v52 + 1), *width);
          if (v25 >= ((([v24 timeOut] * 0xCCCCCCCCCCCCCCCDLL) >> 64) & 0xFFFFFFFFFFFFFFFCLL))
          {
            timeOut = [v24 timeOut];
            v36 = (v25 - (((timeOut * 0xCCCCCCCCCCCCCCCDLL) >> 64) & 0xFFFFFFFFFFFFFFFCLL)) / ([v24 timeOut] / 5);
            v37 = fmax(1.0 - (v36 * v36), 0.0);
            v34 = ((v37 * 255.0) << 24) | 0xFFFFFF;
          }

          else
          {
            v34 = -1;
          }

          HUDUIAllocUnicodeString(GlobalOverlay, size, @"⚠️", &v50);
          v48 = v53;
          v49 = v54;
          v46 = HUDUIInvalidString;
          v47 = qword_784F8;
          LODWORD(v38) = v33;
          HUDUIWindowAddLabelKeyValuePair2LA(frame.var0, &v50, v34, &v48, v34, &v46, v34, v27, v29, v31, v38);
          HUDUIWindowEmptyRow(frame.var0, 6.0);
          v23 = 1;
        }

        nextObject = [reverseObjectEnumerator nextObject];

        v24 = nextObject;
      }

      while (nextObject);
    }

    HUDUIWindowEmptyRow(frame.var0, 6.0);
    currentInsightWindowHeight = selfCopy->_currentInsightWindowHeight;
    if (currentInsightWindowHeight != HUDUIWindowCurrentHeight(frame.var0))
    {
      selfCopy->_currentInsightWindowHeight = HUDUIWindowCurrentHeight(frame.var0);
    }

    *heightCopy = HUDUIWindowCurrentHeight(frame.var0);
    HUDUIFrameEndWindow(frame.var0);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (void)enableInsight:(id)insight enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5 = [(NSMutableDictionary *)self->_insightMap objectForKeyedSubscript:insight];
  if (v5)
  {
    v6 = v5;
    [v5 setEnabled:enabledCopy];
    v5 = v6;
  }
}

- (BOOL)isInsightEnabled:(id)enabled
{
  v3 = [(NSMutableDictionary *)self->_insightMap objectForKeyedSubscript:enabled];
  v4 = v3;
  if (v3)
  {
    enabled = [v3 enabled];
  }

  else
  {
    enabled = 0;
  }

  return enabled;
}

@end