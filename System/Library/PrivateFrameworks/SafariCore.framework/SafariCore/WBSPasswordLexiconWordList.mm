@interface WBSPasswordLexiconWordList
+ (id)lexiconWordListWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier;
- (WBSPasswordLexiconWordList)initWithIdentifier:(id)identifier lexicon:(_LXLexicon *)lexicon;
- (void)dealloc;
- (void)enumerateEntriesForString:(id)string withBlock:(id)block;
@end

@implementation WBSPasswordLexiconWordList

- (WBSPasswordLexiconWordList)initWithIdentifier:(id)identifier lexicon:(_LXLexicon *)lexicon
{
  v8.receiver = self;
  v8.super_class = WBSPasswordLexiconWordList;
  v5 = [(WBSPasswordWordList *)&v8 initWithIdentifier:identifier];
  if (v5)
  {
    v5->_lexicon = CFRetain(lexicon);
    v6 = v5;
  }

  return v5;
}

- (void)dealloc
{
  CFRelease(self->_lexicon);
  v3.receiver = self;
  v3.super_class = WBSPasswordLexiconWordList;
  [(WBSPasswordLexiconWordList *)&v3 dealloc];
}

- (void)enumerateEntriesForString:(id)string withBlock:(id)block
{
  blockCopy = block;
  stringCopy = string;
  identifier = [(WBSPasswordWordList *)self identifier];
  v11 = blockCopy;
  v8 = blockCopy;
  v9 = identifier;
  LXLexiconEnumerateEntriesForString();
}

void __66__WBSPasswordLexiconWordList_enumerateEntriesForString_withBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = LXEntryCopyString();
  LXEntryGetProbability();
  v4 = 1.0 / __exp10(v3);
  if (v4 < 1.0)
  {
    v4 = 1.0;
  }

  v5 = [[WBSPasswordWordListEntry alloc] initWithWord:v6 isSensitive:(LXEntryGetMetaFlags() & 0x3800000) != 0 wordListIdentifier:*(a1 + 32) guessesRequired:v4];
  (*(*(a1 + 40) + 16))();
}

+ (id)lexiconWordListWithIdentifier:(id)identifier localeIdentifier:(id)localeIdentifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  localeIdentifierCopy = localeIdentifier;
  v14 = *MEMORY[0x1E69ABFE8];
  v15[0] = localeIdentifierCopy;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v8 = LXLexiconCreate();
  if (v8)
  {
    v10 = v8;
    v11 = [[self alloc] initWithIdentifier:identifierCopy lexicon:v8];
    CFRelease(v10);
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXAutoFill(0, v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordLexiconWordList lexiconWordListWithIdentifier:v12 localeIdentifier:0];
    }

    v11 = 0;
  }

  return v11;
}

+ (void)lexiconWordListWithIdentifier:(void *)a1 localeIdentifier:(void *)a2 .cold.1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Failed to create lexicon word list: %{public}@", &v5, 0xCu);
}

@end