@interface CSDInterventionProvider
- (BOOL)interventionRequiredFor:(id)for callType:(unint64_t)type;
@end

@implementation CSDInterventionProvider

- (BOOL)interventionRequiredFor:(id)for callType:(unint64_t)type
{
  forCopy = for;
  v6 = objc_opt_respondsToSelector();
  if (v6)
  {
    v7 = [SCAnalysisHistory willNeedInterventionForOutgoingCallToParticipants:forCopy callType:type error:0];
    v8 = sub_100004778(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = @"NO";
      if (v7)
      {
        v9 = @"YES";
      }

      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sensitive analysis results: %@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "The selector for sensisitve content analysis does not exist. Not triggering intervention", &v11, 2u);
    }

    LOBYTE(v7) = 0;
  }

  return v7;
}

@end