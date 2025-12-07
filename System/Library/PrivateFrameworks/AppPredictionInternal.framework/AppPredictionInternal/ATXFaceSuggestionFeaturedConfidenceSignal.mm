@interface ATXFaceSuggestionFeaturedConfidenceSignal
- (double)valueForDescriptor:(id)descriptor;
@end

@implementation ATXFaceSuggestionFeaturedConfidenceSignal

- (double)valueForDescriptor:(id)descriptor
{
  galleryOptions = [descriptor galleryOptions];
  featuredConfidenceLevel = [galleryOptions featuredConfidenceLevel];

  if (featuredConfidenceLevel == 2)
  {
    return 2.0;
  }

  result = 1.0;
  if (!featuredConfidenceLevel)
  {
    v7 = __atxlog_handle_lock_screen(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXFaceSuggestionFeaturedConfidenceSignal valueForDescriptor:v7];
    }

    return -1000.0;
  }

  return result;
}

- (void)valueForDescriptor:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXFaceSuggestionFeaturedConfidenceSignal valueForDescriptor:]";
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "%s: warning: attempting to score descriptor with no featured confidence, returning -1000.0", &v1, 0xCu);
}

@end