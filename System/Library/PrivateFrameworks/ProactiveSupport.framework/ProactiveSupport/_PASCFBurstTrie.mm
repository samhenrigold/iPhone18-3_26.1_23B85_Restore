@interface _PASCFBurstTrie
- (_PASCFBurstTrie)initWithPath:(id)path;
- (unsigned)payloadForString:(id)string;
- (unsigned)payloadForString:(id)string range:(_NSRange)range;
- (unsigned)payloadForUTF8String:(const char *)string length:(unint64_t)length;
- (void)dealloc;
@end

@implementation _PASCFBurstTrie

- (unsigned)payloadForUTF8String:(const char *)string length:(unint64_t)length
{
  if (!string)
  {
    return 0;
  }

  if (CFBurstTrieContainsUTF8String())
  {
    return 0;
  }

  return 0;
}

- (unsigned)payloadForString:(id)string range:(_NSRange)range
{
  v5 = [string substringWithRange:{range.location, range.length}];
  LODWORD(self) = [(_PASCFBurstTrie *)self payloadForString:v5];

  return self;
}

- (unsigned)payloadForString:(id)string
{
  v7 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = [(__CFString *)stringCopy length];
  if (CFStringGetCStringPtr(stringCopy, 0x600u))
  {
    goto LABEL_2;
  }

  if (v4 <= 0xFF && [(__CFString *)stringCopy getCString:__s maxLength:385 encoding:4])
  {
    strlen(__s);
LABEL_2:
    CFBurstTrieContainsUTF8String();
    goto LABEL_3;
  }

  if (stringCopy)
  {
    CFBurstTrieContains();
  }

LABEL_3:

  return 0;
}

- (void)dealloc
{
  if (self->_trie)
  {
    CFBurstTrieRelease();
  }

  v3.receiver = self;
  v3.super_class = _PASCFBurstTrie;
  [(_PASCFBurstTrie *)&v3 dealloc];
}

- (_PASCFBurstTrie)initWithPath:(id)path
{
  v14 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASCFBurstTrie.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v11.receiver = self;
  v11.super_class = _PASCFBurstTrie;
  v6 = [(_PASCFBurstTrie *)&v11 init];
  if (v6 && (v7 = CFBurstTrieCreateFromFile(), (v6->_trie = v7) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = pathCopy;
      _os_log_error_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not open trie: %@", buf, 0xCu);
    }

    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

@end