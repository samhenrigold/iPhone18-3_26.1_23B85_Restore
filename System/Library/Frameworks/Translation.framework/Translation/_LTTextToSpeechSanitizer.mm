@interface _LTTextToSpeechSanitizer
+ (BOOL)stringContainsRedaction:(id)redaction;
+ (id)_regularExpression;
+ (id)_stringReplacingRedactionsInString:(id)string withMarker:(id)marker;
+ (id)stringReplacingRedactionsWithBeepMarker:(id)marker;
@end

@implementation _LTTextToSpeechSanitizer

+ (id)stringReplacingRedactionsWithBeepMarker:(id)marker
{
  v3 = [self _stringReplacingRedactionsInString:marker withMarker:@"_LT_Placeholder_##$#$#$"];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"_LT_Placeholder_##$#$#$" withString:@"\x1B\\mrk=play=beep.wav\"];

  return v4;
}

+ (BOOL)stringContainsRedaction:(id)redaction
{
  redactionCopy = redaction;
  _regularExpression = [self _regularExpression];
  if (_regularExpression)
  {
    v7 = [_regularExpression rangeOfFirstMatchInString:redactionCopy options:0 range:{0, objc_msgSend(redactionCopy, "length")}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = _LTOSLogTTS(0, v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_LTTextToSpeechSanitizer stringContainsRedaction:v8];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)_stringReplacingRedactionsInString:(id)string withMarker:(id)marker
{
  v24 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  markerCopy = marker;
  if ([stringCopy rangeOfString:@"*"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = _LTOSLogTTS(0x7FFFFFFFFFFFFFFFLL, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "Not attempting to sanitize string because it has no asterisks", &v20, 2u);
    }

    v10 = stringCopy;
  }

  else
  {
    _regularExpression = [self _regularExpression];
    if (_regularExpression)
    {
      v13 = [stringCopy mutableCopy];
      v14 = [_regularExpression replaceMatchesInString:v13 options:0 range:0 withTemplate:{objc_msgSend(v13, "length"), markerCopy}];
      v16 = _LTOSLogTTS(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = v16;
        v20 = 134218240;
        v21 = v14;
        v22 = 2048;
        v23 = [stringCopy length];
        _os_log_impl(&dword_23AAF5000, v17, OS_LOG_TYPE_INFO, "Replaced %zu censored words with beep marker in TTS string of length %zu", &v20, 0x16u);
      }

      v10 = [v13 copy];
    }

    else
    {
      v18 = _LTOSLogTTS(0, v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LTTextToSpeechSanitizer _stringReplacingRedactionsInString:v18 withMarker:?];
      }

      v10 = stringCopy;
    }
  }

  return v10;
}

+ (id)_regularExpression
{
  if (_regularExpression_onceToken[0] != -1)
  {
    +[_LTTextToSpeechSanitizer _regularExpression];
  }

  v3 = _regularExpression_regularExpression;

  return v3;
}

@end