@interface GDCFBurstTrie
- (GDCFBurstTrie)initWithPath:(id)path;
- (unsigned)payloadForString:(id)string;
- (unsigned)payloadForString:(id)string range:(_NSRange)range;
- (unsigned)payloadForUTF8String:(const char *)string length:(unint64_t)length;
- (void)dealloc;
@end

@implementation GDCFBurstTrie

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
  v5 = objc_msgSend_substringWithRange_(string, a2, range.location, range.length);
  LODWORD(self) = objc_msgSend_payloadForString_(self, v6, v5, v7);

  return self;
}

- (unsigned)payloadForString:(id)string
{
  v35 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v7 = objc_msgSend_length(stringCopy, v4, v5, v6);
  if (CFStringGetCStringPtr(stringCopy, 0x600u))
  {
    goto LABEL_2;
  }

  if (v7 <= 0xFF)
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *__s = 0u;
    v11 = 0u;
    if (objc_msgSend_getCString_maxLength_encoding_(stringCopy, v8, __s, 385, 4))
    {
      strlen(__s);
LABEL_2:
      CFBurstTrieContainsUTF8String();
      goto LABEL_3;
    }
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
  v3.super_class = GDCFBurstTrie;
  [(GDCFBurstTrie *)&v3 dealloc];
}

- (GDCFBurstTrie)initWithPath:(id)path
{
  v18 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"GDCFBurstTrie.m", 32, @"Invalid parameter not satisfying: %@", @"path");
  }

  v15.receiver = self;
  v15.super_class = GDCFBurstTrie;
  v9 = [(GDCFBurstTrie *)&v15 init];
  if (v9 && (v10 = CFBurstTrieCreateFromFile(), (v9->_trie = v10) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = pathCopy;
      _os_log_error_impl(&dword_1C43F8000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not open trie: %@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  return v11;
}

@end