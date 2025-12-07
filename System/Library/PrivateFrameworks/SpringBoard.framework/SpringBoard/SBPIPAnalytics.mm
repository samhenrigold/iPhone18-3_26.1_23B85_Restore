@interface SBPIPAnalytics
- (id)assistantForUUID:(id)d;
- (void)pictureInPictureAnalyticsSourceWithUUID:(id)d didBecomePossible:(BOOL)possible;
- (void)pictureInPictureDidActivateAnalyticsSessionWithUUID:(id)d analyticsSourceUUID:(id)iD automatically:(BOOL)automatically;
- (void)pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:(id)d stashed:(BOOL)stashed;
- (void)pictureInPictureDidCreateAnalyticsSessionWithUUID:(id)d bundleIdentifier:(id)identifier contentType:(int64_t)type;
- (void)pictureInPictureDidCreateAnalyticsSourceWithUUID:(id)d bundleIdentifier:(id)identifier contentType:(int64_t)type;
- (void)pictureInPictureDidDeactivateAnalyticsSessionWithUUID:(id)d analyticsSourceUUID:(id)iD appStoppedSession:(BOOL)session restoredFullScreen:(BOOL)screen;
- (void)pictureInPictureDidDestroyAnalyticsSessionWithUUID:(id)d;
- (void)pictureInPictureDidDestroyAnalyticsSourceWithUUID:(id)d;
@end

@implementation SBPIPAnalytics

- (id)assistantForUUID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:dCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  }

  v8 = v7;

  return v8;
}

- (void)pictureInPictureDidCreateAnalyticsSourceWithUUID:(id)d bundleIdentifier:(id)identifier contentType:(int64_t)type
{
  identifierCopy = identifier;
  dCopy = d;
  v10 = SBLogPIP();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v10 pictureInPictureDidCreateAnalyticsSourceWithUUID:v11 bundleIdentifier:v12 contentType:v13, v14, v15, v16, v17];
  }

  if (!self->_analyticsSourceAssistants)
  {
    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    analyticsSourceAssistants = self->_analyticsSourceAssistants;
    self->_analyticsSourceAssistants = v18;
  }

  v20 = [SBPIPAnalyticsSourceSummaryAssistant alloc];
  v21 = +[SBDefaults localDefaults];
  pipDefaults = [v21 pipDefaults];
  v23 = -[SBPIPAnalyticsSourceSummaryAssistant initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:](v20, "initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:", identifierCopy, type, [pipDefaults allowAutoPIP], &__block_literal_global_243);

  [(NSMutableDictionary *)self->_analyticsSourceAssistants setObject:v23 forKeyedSubscript:dCopy];
}

void __96__SBPIPAnalytics_pictureInPictureDidCreateAnalyticsSourceWithUUID_bundleIdentifier_contentType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (void)pictureInPictureDidDestroyAnalyticsSourceWithUUID:(id)d
{
  dCopy = d;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v5 pictureInPictureDidDestroyAnalyticsSourceWithUUID:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:dCopy];
  [v13 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];

  v14 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:dCopy];
  [v14 notePIPBecameProhibitedAtTime:CFAbsoluteTimeGetCurrent()];

  v15 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:dCopy];
  [v15 invalidate];

  [(NSMutableDictionary *)self->_analyticsSourceAssistants setObject:0 forKeyedSubscript:dCopy];
}

- (void)pictureInPictureAnalyticsSourceWithUUID:(id)d didBecomePossible:(BOOL)possible
{
  possibleCopy = possible;
  dCopy = d;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v7 pictureInPictureAnalyticsSourceWithUUID:v8 didBecomePossible:v9, v10, v11, v12, v13, v14];
  }

  v15 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:dCopy];
  Current = CFAbsoluteTimeGetCurrent();
  if (possibleCopy)
  {
    [v15 notePIPBecamePossibleAtTime:Current];
  }

  else
  {
    [v15 notePIPBecameProhibitedAtTime:Current];
  }
}

- (void)pictureInPictureDidCreateAnalyticsSessionWithUUID:(id)d bundleIdentifier:(id)identifier contentType:(int64_t)type
{
  dCopy = d;
  identifierCopy = identifier;
  if (!self->_analyticsSessionAssistants)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    analyticsSessionAssistants = self->_analyticsSessionAssistants;
    self->_analyticsSessionAssistants = v10;
  }

  v12 = SBLogPIP();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v12 pictureInPictureDidCreateAnalyticsSessionWithUUID:v13 bundleIdentifier:v14 contentType:v15, v16, v17, v18, v19];
  }

  v20 = [SBPIPAnalyticsSessionSummaryAssistant alloc];
  v21 = +[SBDefaults localDefaults];
  pipDefaults = [v21 pipDefaults];
  v23 = -[SBPIPAnalyticsSessionSummaryAssistant initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:](v20, "initWithBundleIdentifier:contentType:isAutoPIPEnabled:invalidationBlock:", identifierCopy, type, [pipDefaults allowAutoPIP], &__block_literal_global_6_1);
  [(NSMutableDictionary *)self->_analyticsSessionAssistants setObject:v23 forKeyedSubscript:dCopy];
}

void __97__SBPIPAnalytics_pictureInPictureDidCreateAnalyticsSessionWithUUID_bundleIdentifier_contentType___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (void)pictureInPictureDidDestroyAnalyticsSessionWithUUID:(id)d
{
  dCopy = d;
  v5 = SBLogPIP();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v5 pictureInPictureDidDestroyAnalyticsSessionWithUUID:v6, v7, v8, v9, v10, v11, v12];
  }

  v13 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v13 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];

  v14 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v14 invalidate];

  [(NSMutableDictionary *)self->_analyticsSessionAssistants setObject:0 forKeyedSubscript:dCopy];
}

- (void)pictureInPictureDidActivateAnalyticsSessionWithUUID:(id)d analyticsSourceUUID:(id)iD automatically:(BOOL)automatically
{
  automaticallyCopy = automatically;
  iDCopy = iD;
  dCopy = d;
  v10 = SBLogPIP();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v10 pictureInPictureDidActivateAnalyticsSessionWithUUID:v11 analyticsSourceUUID:v12 automatically:v13, v14, v15, v16, v17];
  }

  v18 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v18 noteBecameActiveAtTime:CFAbsoluteTimeGetCurrent()];

  v19 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];

  [v19 noteStartedAutomatically:automaticallyCopy];
  v20 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:iDCopy];

  [v20 noteBecameActiveAtTime:CFAbsoluteTimeGetCurrent()];
}

- (void)pictureInPictureDidDeactivateAnalyticsSessionWithUUID:(id)d analyticsSourceUUID:(id)iD appStoppedSession:(BOOL)session restoredFullScreen:(BOOL)screen
{
  screenCopy = screen;
  sessionCopy = session;
  iDCopy = iD;
  dCopy = d;
  v12 = SBLogPIP();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v12 pictureInPictureDidDeactivateAnalyticsSessionWithUUID:v13 analyticsSourceUUID:v14 appStoppedSession:v15 restoredFullScreen:v16, v17, v18, v19];
  }

  v20 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v20 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];

  v21 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v21 noteBecameUnstashedAtTime:CFAbsoluteTimeGetCurrent()];

  v22 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v22 noteAppStoppedSession:sessionCopy];

  v23 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v23 noteRestoredFullScreen:screenCopy];

  v24 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  [v24 invalidate];

  [(NSMutableDictionary *)self->_analyticsSessionAssistants setObject:0 forKeyedSubscript:dCopy];
  v25 = [(NSMutableDictionary *)self->_analyticsSourceAssistants objectForKeyedSubscript:iDCopy];

  [v25 noteBecameInactiveAtTime:CFAbsoluteTimeGetCurrent()];
}

- (void)pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:(id)d stashed:(BOOL)stashed
{
  stashedCopy = stashed;
  dCopy = d;
  v7 = SBLogPIP();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(SBPIPAnalytics *)v7 pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:v8 stashed:v9, v10, v11, v12, v13, v14];
  }

  v15 = [(NSMutableDictionary *)self->_analyticsSessionAssistants objectForKeyedSubscript:dCopy];
  Current = CFAbsoluteTimeGetCurrent();
  if (stashedCopy)
  {
    [v15 noteBecameStashedAtTime:Current];
  }

  else
  {
    [v15 noteBecameUnstashedAtTime:Current];
  }
}

- (void)pictureInPictureDidCreateAnalyticsSourceWithUUID:(uint64_t)a3 bundleIdentifier:(uint64_t)a4 contentType:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureDidCreateAnalyticsSourceWithUUID:bundleIdentifier:contentType:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pictureInPictureDidDestroyAnalyticsSourceWithUUID:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureDidDestroyAnalyticsSourceWithUUID:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pictureInPictureAnalyticsSourceWithUUID:(uint64_t)a3 didBecomePossible:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureAnalyticsSourceWithUUID:didBecomePossible:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pictureInPictureDidCreateAnalyticsSessionWithUUID:(uint64_t)a3 bundleIdentifier:(uint64_t)a4 contentType:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureDidCreateAnalyticsSessionWithUUID:bundleIdentifier:contentType:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pictureInPictureDidDestroyAnalyticsSessionWithUUID:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureDidDestroyAnalyticsSessionWithUUID:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pictureInPictureDidActivateAnalyticsSessionWithUUID:(uint64_t)a3 analyticsSourceUUID:(uint64_t)a4 automatically:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureDidActivateAnalyticsSessionWithUUID:analyticsSourceUUID:automatically:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pictureInPictureDidDeactivateAnalyticsSessionWithUUID:(uint64_t)a3 analyticsSourceUUID:(uint64_t)a4 appStoppedSession:(uint64_t)a5 restoredFullScreen:(uint64_t)a6 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureDidDeactivateAnalyticsSessionWithUUID:analyticsSourceUUID:appStoppedSession:restoredFullScreen:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:(uint64_t)a3 stashed:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SBPIPAnalytics pictureInPictureDidChangeStashStateForAnalyticsSessionWithUUID:stashed:]";
  OUTLINED_FUNCTION_0_2(&dword_21ED4E000, a1, a3, "[Analytics] %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end