@interface DOCDateParser
- (DOCDateParser)init;
- (id)parse:(id)parse;
- (void)dealloc;
@end

@implementation DOCDateParser

- (DOCDateParser)init
{
  v6.receiver = self;
  v6.super_class = DOCDateParser;
  v2 = [(DOCDateParser *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v2->_searchParser = NLSearchParserCreate();
    NLSearchParserSetContext();
    NLSearchParserSetIndex();
    v4 = v2;
  }

  return v2;
}

- (id)parse:(id)parse
{
  parseCopy = parse;
  NLSearchParserSetString();
  v4 = NLSearchParserCopyParseWithOptions();
  v5 = NLSearchParseCandidateCopyAttributedInput();
  CFRelease(v4);
  firstObject = [v5 firstObject];
  v7 = MEMORY[0x277D06310];
  v8 = *MEMORY[0x277D06310];
  if (!*MEMORY[0x277D06310])
  {
    DOCInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(DOCDateParser *)parseCopy parse:firstObject, v8];
  }

  return firstObject;
}

- (void)dealloc
{
  searchParser = self->_searchParser;
  if (searchParser)
  {
    CFRelease(searchParser);
  }

  v4.receiver = self;
  v4.super_class = DOCDateParser;
  [(DOCDateParser *)&v4 dealloc];
}

- (void)parse:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = @"YES";
  if (a2)
  {
    v3 = @"NO";
  }

  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_249CE0000, log, OS_LOG_TYPE_DEBUG, "DOCDateParser: Did find an NLP annotation in the current input '%@': %@", &v4, 0x16u);
}

@end