@interface PGWallpaperSuggestionAccumulator
- (BOOL)accumulationIsComplete;
- (NSArray)suggestions;
- (PGWallpaperSuggestionAccumulator)initWithTargetNumberOfSuggestions:(unint64_t)suggestions targetMinimumNumberOfGatedSuggestions:(unint64_t)gatedSuggestions maximumNumberOfSuggestionsToTryForGating:(unint64_t)gating loggingConnection:(id)connection;
- (void)addSuggestion:(id)suggestion passingGating:(BOOL)gating;
@end

@implementation PGWallpaperSuggestionAccumulator

- (NSArray)suggestions
{
  targetNumberOfSuggestions = self->_targetNumberOfSuggestions;
  v4 = [(NSMutableArray *)self->_suggestions count];
  v5 = targetNumberOfSuggestions - v4;
  if (targetNumberOfSuggestions != v4)
  {
    v6 = [(NSMutableArray *)self->_gatingOverflow count];
    if (v6)
    {
      v7 = v6;
      v8 = self->_gatingOverflow;
      v9 = v8;
      if (v7 > v5)
      {
        v10 = [(NSMutableArray *)v8 subarrayWithRange:0, v5];

        v9 = v10;
      }

      [(NSMutableArray *)self->_suggestions addObjectsFromArray:v9];
    }
  }

  suggestions = self->_suggestions;

  return suggestions;
}

- (BOOL)accumulationIsComplete
{
  if ([(NSMutableArray *)self->_suggestions count]>= self->_targetNumberOfSuggestions)
  {
    return 1;
  }

  if (self->_numberOfSuggestionsReceived < self->_maximumNumberOfSuggestionsToTryForGating)
  {
    return 0;
  }

  v4 = [(NSMutableArray *)self->_suggestions count];
  return [(NSMutableArray *)self->_gatingOverflow count]+ v4 >= self->_targetNumberOfSuggestions;
}

- (void)addSuggestion:(id)suggestion passingGating:(BOOL)gating
{
  gatingCopy = gating;
  v49 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  suggestions = self->_suggestions;
  if (gatingCopy)
  {
    [(NSMutableArray *)suggestions addObject:suggestionCopy];
    ++self->_numberOfGatedSuggestions;
  }

  else
  {
    v8 = [(NSMutableArray *)suggestions count];
    v9 = self->_suggestions;
    if (v8 >= self->_targetNumberOfSuggestions - self->_targetMinimumNumberOfGatedSuggestions + self->_numberOfGatedSuggestions)
    {
      v28 = [(NSMutableArray *)v9 count];
      if ([(NSMutableArray *)self->_gatingOverflow count]+ v28 >= self->_targetNumberOfSuggestions)
      {
        loggingConnection = self->_loggingConnection;
        if (!os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v36 = self->_suggestions;
        v15 = loggingConnection;
        LODWORD(v36) = [(NSMutableArray *)v36 count];
        numberOfGatedSuggestions = self->_numberOfGatedSuggestions;
        targetNumberOfSuggestions = self->_targetNumberOfSuggestions;
        targetMinimumNumberOfGatedSuggestions = self->_targetMinimumNumberOfGatedSuggestions;
        v40 = [(NSMutableArray *)self->_gatingOverflow count];
        v41 = 67110144;
        *v42 = v36;
        *&v42[4] = 1024;
        *&v42[6] = targetNumberOfSuggestions;
        *v43 = 1024;
        *&v43[2] = numberOfGatedSuggestions;
        *v44 = 1024;
        *&v44[2] = targetMinimumNumberOfGatedSuggestions;
        *v45 = 1024;
        *&v45[2] = v40;
        v21 = "[PGWallpaperSuggestionAccumulator] Dropping non-gated suggestion, %d / %d, gated %d / %d, overflow %d";
      }

      else
      {
        [(NSMutableArray *)self->_gatingOverflow addObject:suggestionCopy];
        v29 = self->_loggingConnection;
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          goto LABEL_20;
        }

        v30 = self->_suggestions;
        v15 = v29;
        LODWORD(v30) = [(NSMutableArray *)v30 count];
        v31 = self->_numberOfGatedSuggestions;
        v32 = self->_targetNumberOfSuggestions;
        v33 = self->_targetMinimumNumberOfGatedSuggestions;
        v34 = [(NSMutableArray *)self->_gatingOverflow count];
        v41 = 67110144;
        *v42 = v30;
        *&v42[4] = 1024;
        *&v42[6] = v32;
        *v43 = 1024;
        *&v43[2] = v31;
        *v44 = 1024;
        *&v44[2] = v33;
        *v45 = 1024;
        *&v45[2] = v34;
        v21 = "[PGWallpaperSuggestionAccumulator] Sparing non-gated suggestion, %d / %d, gated %d / %d, overflow %d";
      }

      v22 = v15;
      v23 = 32;
LABEL_19:
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, v21, &v41, v23);

      goto LABEL_20;
    }

    [(NSMutableArray *)v9 addObject:suggestionCopy];
  }

  v10 = self->_targetMinimumNumberOfGatedSuggestions;
  v11 = self->_loggingConnection;
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      if (gatingCopy)
      {
        v13 = @"gated";
      }

      else
      {
        v13 = @"non-gated";
      }

      v14 = self->_suggestions;
      v15 = v11;
      v16 = [(NSMutableArray *)v14 count];
      v17 = self->_numberOfGatedSuggestions;
      v18 = self->_targetNumberOfSuggestions;
      v19 = self->_targetMinimumNumberOfGatedSuggestions;
      v20 = [(NSMutableArray *)self->_gatingOverflow count];
      v41 = 138413570;
      *v42 = v13;
      *&v42[8] = 1024;
      *v43 = v16;
      *&v43[4] = 1024;
      *v44 = v18;
      *&v44[4] = 1024;
      *v45 = v17;
      *&v45[4] = 1024;
      v46 = v19;
      v47 = 1024;
      v48 = v20;
      v21 = "[PGWallpaperSuggestionAccumulator] Adding %@ suggestion, %d / %d, gated %d / %d, overflow %d";
      v22 = v15;
      v23 = 42;
      goto LABEL_19;
    }
  }

  else if (v12)
  {
    v24 = self->_suggestions;
    v25 = v11;
    v26 = [(NSMutableArray *)v24 count];
    v27 = self->_targetNumberOfSuggestions;
    v41 = 67109376;
    *v42 = v26;
    *&v42[4] = 1024;
    *&v42[6] = v27;
    _os_log_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_INFO, "[PGWallpaperSuggestionAccumulator] Adding suggestion, %d / %d", &v41, 0xEu);
  }

LABEL_20:
  ++self->_numberOfSuggestionsReceived;
}

- (PGWallpaperSuggestionAccumulator)initWithTargetNumberOfSuggestions:(unint64_t)suggestions targetMinimumNumberOfGatedSuggestions:(unint64_t)gatedSuggestions maximumNumberOfSuggestionsToTryForGating:(unint64_t)gating loggingConnection:(id)connection
{
  connectionCopy = connection;
  v19.receiver = self;
  v19.super_class = PGWallpaperSuggestionAccumulator;
  v12 = [(PGWallpaperSuggestionAccumulator *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_targetNumberOfSuggestions = suggestions;
    v12->_targetMinimumNumberOfGatedSuggestions = gatedSuggestions;
    v12->_maximumNumberOfSuggestionsToTryForGating = gating;
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    suggestions = v13->_suggestions;
    v13->_suggestions = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    gatingOverflow = v13->_gatingOverflow;
    v13->_gatingOverflow = v16;

    objc_storeStrong(&v13->_loggingConnection, connection);
  }

  return v13;
}

@end