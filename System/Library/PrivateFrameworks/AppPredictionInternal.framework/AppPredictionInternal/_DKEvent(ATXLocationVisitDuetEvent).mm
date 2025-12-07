@interface _DKEvent(ATXLocationVisitDuetEvent)
- (ATXLocationVisitDuetEvent)atx_convertToLocationVisitEvent;
- (void)atx_convertToLocationVisitEvent;
@end

@implementation _DKEvent(ATXLocationVisitDuetEvent)

- (ATXLocationVisitDuetEvent)atx_convertToLocationVisitEvent
{
  metadata = [self metadata];
  identifier = [MEMORY[0x277CFE218] identifier];
  v4 = [metadata objectForKeyedSubscript:identifier];

  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
      if (v7)
      {
        v8 = [ATXLocationVisitDuetEvent alloc];
        startDate = [self startDate];
        endDate = [self endDate];
        v11 = [(ATXLocationVisitDuetEvent *)v8 initWithLocationOfInterestIdentifier:v7 startDate:startDate endDate:endDate];

        goto LABEL_13;
      }

      v12 = __atxlog_handle_default(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(_DKEvent(ATXLocationVisitDuetEvent) *)v4 atx_convertToLocationVisitEvent];
      }
    }

    else
    {
      v7 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(_DKEvent(ATXLocationVisitDuetEvent) *)v4 atx_convertToLocationVisitEvent];
      }
    }
  }

  else
  {
    v7 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(_DKEvent(ATXLocationVisitDuetEvent) *)v7 atx_convertToLocationVisitEvent];
    }
  }

  v11 = 0;
LABEL_13:

  return v11;
}

- (void)atx_convertToLocationVisitEvent
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "Failed to convert %@ to an NSUUID", &v2, 0xCu);
}

@end