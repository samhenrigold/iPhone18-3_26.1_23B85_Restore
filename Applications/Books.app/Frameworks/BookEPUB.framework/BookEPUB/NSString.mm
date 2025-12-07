@interface NSString
- (BOOL)be_isWhitespace;
- (id)be_redactedCFIString;
- (id)be_sanitizedFontFamilyName;
- (id)be_stringByRemovingPercentEscapes;
- (int64_t)be_compareToJSVersionString:(id)string;
@end

@implementation NSString

- (int64_t)be_compareToJSVersionString:(id)string
{
  stringCopy = string;
  v5 = [(NSString *)self componentsSeparatedByString:@"."];
  v6 = [stringCopy componentsSeparatedByString:@"."];
  if (![v5 count])
  {
    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    if (v7 >= [v6 count])
    {
      break;
    }

    if (v8)
    {
      break;
    }

    v9 = [v5 objectAtIndexedSubscript:v7];
    v10 = [v6 objectAtIndexedSubscript:v7];
    v8 = [v9 compare:v10 options:64];

    ++v7;
  }

  while (v7 < [v5 count]);
  if (!v8)
  {
LABEL_7:
    v11 = [v5 count];
    if (v11 <= [v6 count])
    {
      v12 = [v5 count];
      if (v12 >= [v6 count])
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  return v8;
}

- (id)be_sanitizedFontFamilyName
{
  v2 = [(NSString *)self stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"." withString:@"_"];

  return v3;
}

- (id)be_stringByRemovingPercentEscapes
{
  v2 = CFURLCreateStringByReplacingPercentEscapes(kCFAllocatorDefault, self, &stru_33E120);

  return v2;
}

- (BOOL)be_isWhitespace
{
  v3 = +[NSCharacterSet whitespaceCharacterSet];
  v4 = [(NSString *)self stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] == 0;

  return v5;
}

- (id)be_redactedCFIString
{
  selfCopy = self;
  if ([(NSString *)selfCopy hasPrefix:@"epubcfi(")]
  {
    v11 = 0;
    v3 = [NSRegularExpression regularExpressionWithPattern:@"\\[\\w+\\]" options:1 error:&v11];
    v4 = v11;
    v5 = v4;
    if (!v3)
    {
      v6 = _BookEPUBLog(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v5;
        _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "Failed to create redaction regular expression: %{public}@", buf, 0xCu);
      }
    }

    v7 = [v3 stringByReplacingMatchesInString:selfCopy options:0 range:0 withTemplate:{-[NSString length](selfCopy, "length"), @"[redacted]"}];
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = selfCopy;
  }

  v9 = v8;

  return v8;
}

@end