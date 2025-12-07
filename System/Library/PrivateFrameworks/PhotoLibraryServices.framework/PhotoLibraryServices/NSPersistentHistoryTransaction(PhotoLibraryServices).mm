@interface NSPersistentHistoryTransaction(PhotoLibraryServices)
- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices;
@end

@implementation NSPersistentHistoryTransaction(PhotoLibraryServices)

- (id)_pl_prettyDescriptionWithIndent:()PhotoLibraryServices
{
  author = [self author];
  v5 = [PLPersistentHistoryTransactionModifiers transactionModifiersFromTransactionAuthor:author];

  v19 = MEMORY[0x1E696AEC0];
  v6 = PLIndentToString();
  transactionNumber = [self transactionNumber];
  timestamp = [self timestamp];
  v9 = PLDateToISO8160StringWithLocalTimeZone(timestamp);
  bundleID = [self bundleID];
  processID = [self processID];
  contextName = [self contextName];
  author2 = [self author];
  [v5 changeSource];
  v14 = PLStringFromXPCChangeSource();
  syncChangeMarker = [v5 syncChangeMarker];
  v16 = @"NO";
  if (syncChangeMarker)
  {
    v16 = @"YES";
  }

  v17 = [v19 stringWithFormat:@"%@Transaction %08lld: %@ process=%@ (%@) context=%@ author=%@ (changeSource=%@ isSyncableChange=%@)\n", v6, transactionNumber, v9, bundleID, processID, contextName, author2, v14, v16];

  return v17;
}

@end