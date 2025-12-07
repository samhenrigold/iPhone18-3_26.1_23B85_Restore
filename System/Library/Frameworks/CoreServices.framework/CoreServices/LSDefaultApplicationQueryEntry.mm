@interface LSDefaultApplicationQueryEntry
+ (id)createFromPlistRepresentation:(id)representation;
- (LSDefaultApplicationQueryEntry)initWithWindowOpenDate:(id)date refreshDate:(id)refreshDate defaultForCategory:(BOOL)category;
- (LSDefaultApplicationQueryEntry)initWithWindowOpenDates:(id)dates refreshDate:(id)date defaultForCategory:(BOOL)category;
- (id)newestWindowOpenDate;
- (id)oldestWindowOpenDate;
- (id)plistRepresentation;
- (id)updatedEntryRotatingInWindowOpenDate:(id)date refreshDate:(id)refreshDate defaultForCategory:(BOOL)category;
- (id)updatedEntryWithRefreshDate:(id)date defaultForCategory:(BOOL)category;
@end

@implementation LSDefaultApplicationQueryEntry

- (LSDefaultApplicationQueryEntry)initWithWindowOpenDate:(id)date refreshDate:(id)refreshDate defaultForCategory:(BOOL)category
{
  categoryCopy = category;
  v13[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  refreshDateCopy = refreshDate;
  v13[0] = dateCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v11 = [(LSDefaultApplicationQueryEntry *)self initWithWindowOpenDates:v10 refreshDate:refreshDateCopy defaultForCategory:categoryCopy];

  return v11;
}

- (LSDefaultApplicationQueryEntry)initWithWindowOpenDates:(id)dates refreshDate:(id)date defaultForCategory:(BOOL)category
{
  datesCopy = dates;
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = LSDefaultApplicationQueryEntry;
  v10 = [(LSDefaultApplicationQueryEntry *)&v14 init];
  if (v10)
  {
    v11 = [datesCopy sortedArrayUsingSelector:sel_compare_];
    windowOpenDates = v10->_windowOpenDates;
    v10->_windowOpenDates = v11;

    objc_storeStrong(&v10->_refreshDate, date);
    v10->_defaultForCategory = category;
  }

  return v10;
}

- (id)plistRepresentation
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6[0] = @"Open";
  v6[1] = @"Refresh";
  refreshDate = self->_refreshDate;
  v7[0] = self->_windowOpenDates;
  v7[1] = refreshDate;
  v6[2] = @"IsDefault";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:self->_defaultForCategory];
  v7[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

+ (id)createFromPlistRepresentation:(id)representation
{
  v16[1] = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_22;
  }

  v4 = [representationCopy objectForKey:@"Open"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
LABEL_7:
    v8 = v5;
    goto LABEL_9;
  }

  v7 = objc_opt_class();
  if (_LSIsArrayWithValuesOfClass(v4, v7))
  {
    v5 = v4;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_9:
  v9 = objc_opt_class();
  v10 = [representationCopy objectForKey:@"Refresh"];
  v11 = v10;
  if (v9 && v10 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v11 = 0;
  }

  v12 = objc_opt_class();
  v13 = [representationCopy objectForKey:@"IsDefault"];
  v14 = v13;
  if (v12 && v13 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v14 = 0;
  }

  v6 = 0;
  if ([v8 count] && v11 && v14)
  {
    v6 = -[LSDefaultApplicationQueryEntry initWithWindowOpenDates:refreshDate:defaultForCategory:]([LSDefaultApplicationQueryEntry alloc], "initWithWindowOpenDates:refreshDate:defaultForCategory:", v8, v11, [v14 BOOLValue]);
  }

LABEL_22:

  return v6;
}

- (id)oldestWindowOpenDate
{
  firstObject = [(NSArray *)self->_windowOpenDates firstObject];
  if (!firstObject)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSDefaultApplicationQueryBackend.mm" lineNumber:91 description:@"must have at least one known window"];
  }

  return firstObject;
}

- (id)newestWindowOpenDate
{
  lastObject = [(NSArray *)self->_windowOpenDates lastObject];
  if (!lastObject)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LSDefaultApplicationQueryBackend.mm" lineNumber:98 description:@"must have at least one known window"];
  }

  return lastObject;
}

- (id)updatedEntryRotatingInWindowOpenDate:(id)date refreshDate:(id)refreshDate defaultForCategory:(BOOL)category
{
  categoryCopy = category;
  dateCopy = date;
  refreshDateCopy = refreshDate;
    ;
  }

  [i addObject:dateCopy];
  v11 = [[LSDefaultApplicationQueryEntry alloc] initWithWindowOpenDates:i refreshDate:refreshDateCopy defaultForCategory:categoryCopy];

  return v11;
}

- (id)updatedEntryWithRefreshDate:(id)date defaultForCategory:(BOOL)category
{
  categoryCopy = category;
  dateCopy = date;
  v7 = [[LSDefaultApplicationQueryEntry alloc] initWithWindowOpenDates:self->_windowOpenDates refreshDate:dateCopy defaultForCategory:categoryCopy];

  return v7;
}

@end