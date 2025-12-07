@interface GEOServerFormatStyleParser
- (NSArray)styles;
- (NSArray)tokenRanges;
- (void)_parse;
- (void)_parseIfNeeded;
@end

@implementation GEOServerFormatStyleParser

- (void)_parseIfNeeded
{
  if (!self->_parsed)
  {
    [(GEOServerFormatStyleParser *)self _parse];
  }
}

- (void)_parse
{
  v36 = *MEMORY[0x1E69E9840];
  if (_parse_onceToken != -1)
  {
    dispatch_once(&_parse_onceToken, &__block_literal_global_56650);
  }

  v3 = [_parse_regex matchesInString:self->_string options:0 range:{0, -[NSString length](self->_string, "length")}];
  results = self->_results;
  self->_results = v3;

  v5 = GEOGetFormatStyleParserLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(NSArray *)self->_results count];
    string = self->_string;
    *buf = 134218243;
    v33 = v6;
    v34 = 2113;
    v35 = string;
    _os_log_impl(&dword_18660C000, v5, OS_LOG_TYPE_DEBUG, "Found %lu tokens in string: %{private}@", buf, 0x16u);
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  styleNames = self->_styleNames;
  self->_styleNames = v8;

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  styleRanges = self->_styleRanges;
  self->_styleRanges = v10;

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  tokenRanges = self->_tokenRanges;
  self->_tokenRanges = v12;

  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  openStyleNames = self->_openStyleNames;
  self->_openStyleNames = v14;

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  openStyleLocations = self->_openStyleLocations;
  self->_openStyleLocations = v16;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = self->_results;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v27 + 1) + 8 * i);
        if (![(GEOServerFormatStyleParser *)self _handleOpeningResult:v23, v27]&& ![(GEOServerFormatStyleParser *)self _handleClosingResult:v23])
        {
          v24 = GEOGetFormatStyleParserLog();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_18660C000, v24, OS_LOG_TYPE_ERROR, "Received parsing result, but no opening or closing token found within", buf, 2u);
          }
        }
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v20);
  }

  v25 = self->_openStyleNames;
  self->_openStyleNames = 0;

  v26 = self->_openStyleLocations;
  self->_openStyleLocations = 0;

  self->_parsed = 1;
}

- (NSArray)styles
{
  [(GEOServerFormatStyleParser *)self _parseIfNeeded];
  v3 = [(NSMutableArray *)self->_styleNames copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (NSArray)tokenRanges
{
  [(GEOServerFormatStyleParser *)self _parseIfNeeded];
  v3 = [(NSMutableArray *)self->_tokenRanges copy];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

@end