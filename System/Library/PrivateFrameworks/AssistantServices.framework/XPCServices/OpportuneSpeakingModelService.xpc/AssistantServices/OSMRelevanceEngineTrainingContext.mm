@interface OSMRelevanceEngineTrainingContext
- (void)trainWithUnmanagedElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction;
@end

@implementation OSMRelevanceEngineTrainingContext

- (void)trainWithUnmanagedElement:(id)element isPositiveEvent:(BOOL)event interaction:(id)interaction
{
  eventCopy = event;
  elementCopy = element;
  interactionCopy = interaction;
  v10 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    v11 = v10;
    identifier = [elementCopy identifier];
    v13 = identifier;
    v14 = @"negative";
    *buf = 136315906;
    v17 = "[OSMRelevanceEngineTrainingContext trainWithUnmanagedElement:isPositiveEvent:interaction:]";
    if (eventCopy)
    {
      v14 = @"positive";
    }

    v18 = 2112;
    v19 = identifier;
    v20 = 2112;
    v21 = v14;
    v22 = 2112;
    v23 = interactionCopy;
    _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s Training Element: %@ Feedback: %@ Interaction: %@", buf, 0x2Au);
  }

  v15.receiver = self;
  v15.super_class = OSMRelevanceEngineTrainingContext;
  [(OSMRelevanceEngineTrainingContext *)&v15 trainWithUnmanagedElement:elementCopy isPositiveEvent:eventCopy interaction:interactionCopy];
}

@end