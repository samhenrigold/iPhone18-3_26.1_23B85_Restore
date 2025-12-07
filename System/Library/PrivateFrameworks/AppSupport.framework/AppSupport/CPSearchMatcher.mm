@interface CPSearchMatcher
- (BOOL)matches:(id)matches;
- (BOOL)matches:(id)matches matchType:(int)type;
- (BOOL)matchesASCIIString:(const char *)string matchType:(int)type;
- (BOOL)matchesUTF8String:(const char *)string matchType:(int)type matchOptions:(int)options;
- (CPSearchMatcher)initWithSearchString:(id)string andLocale:(id)locale andOptions:(int)options;
- (void)dealloc;
@end

@implementation CPSearchMatcher

- (BOOL)matchesASCIIString:(const char *)string matchType:(int)type
{
  v59 = *MEMORY[0x1E69E9840];
  bytes = [(NSData *)self->_wholeSearchStringData bytes];
  v8 = [(NSData *)self->_wholeSearchStringData length];
  if ((self->_options & 2) != 0)
  {
    v9 = MEMORY[0x1E69E9920];
  }

  else
  {
    v9 = MEMORY[0x1E69E9928];
  }

  v10 = MEMORY[0x1E69E9910];
  if ((self->_options & 2) == 0)
  {
    v10 = MEMORY[0x1E69E9930];
  }

  v39 = v10;
  v40 = v9;
  typeCopy = type;
  if (type == 4)
  {
    v11 = v8;
    if (strlen(string) == v8)
    {
      LOBYTE(v12) = v40(string, bytes, v11) == 0;
      return v12;
    }

LABEL_46:
    LOBYTE(v12) = 0;
    return v12;
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_asciiComponents;
  v38 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (!v38)
  {
    goto LABEL_46;
  }

  v36 = *v54;
LABEL_11:
  v13 = 0;
LABEL_12:
  if (*v54 != v36)
  {
    objc_enumerationMutation(obj);
  }

  v14 = *(*(&v53 + 1) + 8 * v13);
  bytes2 = [v14 bytes];
  v12 = v39(string, bytes2);
  if (v12)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v16 = [v14 length];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v42 = __48__CPSearchMatcher_matchesASCIIString_matchType___block_invoke;
    v43 = &unk_1E7450D70;
    v48 = typeCopy;
    v46 = v40;
    v47 = bytes2;
    v44 = &v49;
    v45 = v16 - 1;
    v57 = 0;
    if (!string)
    {
      goto LABEL_42;
    }

    v17 = *string;
    if (!*string)
    {
      goto LABEL_42;
    }

    v18 = 0;
    v19 = 1;
    stringCopy = string;
    stringCopy2 = string;
    v22 = 1;
    while (1)
    {
      v23 = v22;
      v24 = v17;
      if (v17 < 0)
      {
        v26 = __maskrune(v17, 0x8000uLL) == 0;
        LOBYTE(v27) = __maskrune(v24, 0x1000uLL) != 0;
        if (__maskrune(v24, 0x4000uLL))
        {
LABEL_22:
          v29 = v19 & !v26;
          goto LABEL_25;
        }

        v28 = __maskrune(v24, 0x2000uLL);
      }

      else
      {
        v25 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60);
        v26 = (v25 & 0x8000) == 0;
        v27 = (v25 >> 12) & 1;
        if ((v25 & 0x4000) != 0)
        {
          goto LABEL_22;
        }

        v28 = v25 & 0x2000;
      }

      v29 = v19 & !v26;
      if (!v28)
      {
        v22 = 0;
        v30 = 1;
        v19 = v27;
        goto LABEL_26;
      }

LABEL_25:
      v22 = 1;
      v19 = v27;
      v30 = v29;
LABEL_26:
      if (v23)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      if ((v23 & 1) == 0)
      {
        v29 |= v22;
      }

      if ((v29 & 1) != 0 && v18)
      {
        v42(v41, v18, &stringCopy2[-v18], &v57);
        if (v57)
        {
          goto LABEL_42;
        }

        v18 = 0;
      }

      if (v31)
      {
        v18 = stringCopy;
      }

      v32 = *++stringCopy;
      v17 = v32;
      ++stringCopy2;
      if (!v32)
      {
        if (v18)
        {
          v42(v41, v18, &stringCopy2[-v18], &v57);
        }

LABEL_42:
        v33 = *(v50 + 24);
        _Block_object_dispose(&v49, 8);
        if ((v33 & 1) == 0)
        {
          goto LABEL_46;
        }

        if (++v13 == v38)
        {
          v38 = [(NSArray *)obj countByEnumeratingWithState:&v53 objects:v58 count:16];
          LOBYTE(v12) = 1;
          if (!v38)
          {
            return v12;
          }

          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }
  }

  return v12;
}

uint64_t __48__CPSearchMatcher_matchesASCIIString_matchType___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (*(result + 64) == 6)
  {
    if (v6 != a3)
    {
      return result;
    }
  }

  else if (v6 > a3)
  {
    return result;
  }

  result = (*(result + 48))(a2, *(result + 56));
  if (!result)
  {
    *(*(*(v5 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)matchesUTF8String:(const char *)string matchType:(int)type matchOptions:(int)options
{
  v28 = *MEMORY[0x1E69E9840];
  if ((type & 0xFFFFFFFD) == 4)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 5;
  }

  if (string && self->_asciiComponents)
  {
    for (i = string; ; ++i)
    {
      v10 = *i;
      if (v10 < 0)
      {
        break;
      }

      if (!v10)
      {

        return [CPSearchMatcher matchesASCIIString:"matchesASCIIString:matchType:" matchType:?];
      }
    }
  }

  if (typeCopy != 4)
  {
    v16 = [(NSArray *)self->_components count]!= 0;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = self->_components;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = _ICUSQLiteMatch(string, [*(*(&v23 + 1) + 8 * j) bytes], objc_msgSend(*(*(&v23 + 1) + 8 * j), "length"), typeCopy, -[NSData bytes](self->_context, "bytes"));
          if ((options == 0) == v21)
          {
            return options == 0;
          }
        }

        v16 = v21;
        v18 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    return v16;
  }

  v12 = [(NSData *)self->_wholeSearchStringData length];
  wholeSearchStringData = self->_wholeSearchStringData;
  if (!wholeSearchStringData)
  {
    return 0;
  }

  bytes = [(NSData *)wholeSearchStringData bytes];
  bytes2 = [(NSData *)self->_context bytes];

  return _ICUSQLiteMatch(string, bytes, v12, 4, bytes2);
}

- (BOOL)matches:(id)matches
{
  uTF8String = [matches UTF8String];

  return [(CPSearchMatcher *)self matchesUTF8String:uTF8String];
}

- (BOOL)matches:(id)matches matchType:(int)type
{
  v4 = *&type;
  uTF8String = [matches UTF8String];

  return [(CPSearchMatcher *)self matchesUTF8String:uTF8String matchType:v4];
}

- (CPSearchMatcher)initWithSearchString:(id)string andLocale:(id)locale andOptions:(int)options
{
  v23 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = CPSearchMatcher;
  v8 = [(CPSearchMatcher *)&v21 init];
  v9 = v8;
  if (v8)
  {
    v8->_options = options;
    v8->_components = objc_alloc_init(MEMORY[0x1E695DF70]);
    v9->_wholeSearchStringData = [string dataUsingEncoding:4];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [string componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceCharacterSet", 0)}];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          -[NSArray addObject:](v9->_components, "addObject:", [*(*(&v17 + 1) + 8 * i) dataUsingEncoding:4]);
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v12);
    }

    inited = initICUSearchContext([locale UTF8String], options);
    v9->_context = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:inited length:malloc_size(inited) freeWhenDone:0];
  }

  return v9;
}

- (void)dealloc
{
  freeICUSearchContext([(NSData *)self->_context bytes]);

  v3.receiver = self;
  v3.super_class = CPSearchMatcher;
  [(CPSearchMatcher *)&v3 dealloc];
}

@end