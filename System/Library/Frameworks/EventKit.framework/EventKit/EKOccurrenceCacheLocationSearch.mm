@interface EKOccurrenceCacheLocationSearch
- (int)performSearchOperation:(unsigned int)operation inCalendars:(id)calendars withEventStore:(id)store andSearchTerm:(id)term;
@end

@implementation EKOccurrenceCacheLocationSearch

- (int)performSearchOperation:(unsigned int)operation inCalendars:(id)calendars withEventStore:(id)store andSearchTerm:(id)term
{
  v8 = *&operation;
  calendarsCopy = calendars;
  storeCopy = store;
  termCopy = term;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1007;
  connection = [storeCopy connection];
  cADOperationProxySync = [connection CADOperationProxySync];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __99__EKOccurrenceCacheLocationSearch_performSearchOperation_inCalendars_withEventStore_andSearchTerm___block_invoke;
  v15[3] = &unk_1E77FD310;
  v15[4] = &v16;
  [cADOperationProxySync CADOccurrenceCacheSearchLocationsWithTerm:termCopy inCalendars:calendarsCopy responseToken:v8 reply:v15];

  LODWORD(v8) = *(v17 + 6);
  _Block_object_dispose(&v16, 8);

  return v8;
}

@end