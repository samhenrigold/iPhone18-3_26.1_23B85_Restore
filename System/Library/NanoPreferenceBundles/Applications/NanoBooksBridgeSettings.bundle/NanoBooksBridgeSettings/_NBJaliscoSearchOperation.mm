@interface _NBJaliscoSearchOperation
- (_NBJaliscoSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string;
- (void)executeSearch;
@end

@implementation _NBJaliscoSearchOperation

- (_NBJaliscoSearchOperation)initWithSearchDataSource:(id)source searchString:(id)string
{
  v8.receiver = self;
  v8.super_class = _NBJaliscoSearchOperation;
  v4 = [(_NBSearchOperation *)&v8 initWithSearchDataSource:source searchString:string];
  v5 = v4;
  if (v4)
  {
    searchResults = v4->_searchResults;
    v4->_searchResults = &__NSArray0__struct;
  }

  return v5;
}

- (void)executeSearch
{
  v3 = +[NBBridgeUtilities isExplicitMaterialAllowed];
  v4 = v3 ^ 1;
  v5 = NBDefaultLog(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    dataSource = [(_NBSearchOperation *)self dataSource];
    familyDSIDs = [dataSource familyDSIDs];
    searchString = [(_NBSearchOperation *)self searchString];
    v16 = 138412802;
    v17 = familyDSIDs;
    v18 = 2112;
    v19 = searchString;
    v20 = 1024;
    v21 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "NBJaliscoSearchOperation executing jalisco fetch with dsid:(%@), searchString:(%@), isExplicitRestricted: (%i)", &v16, 0x1Cu);
  }

  v9 = +[BLJaliscoReadOnlyDAAPClient sharedClient];
  dataSource2 = [(_NBSearchOperation *)self dataSource];
  familyDSIDs2 = [dataSource2 familyDSIDs];
  searchString2 = [(_NBSearchOperation *)self searchString];
  v13 = [v9 searchAllServerItemsForDSIDs:familyDSIDs2 matchingSearchString:searchString2 isExplicitRestricted:v4];

  v14 = [v13 bu_arrayByRemovingItemsWithDuplicateValuesForKey:@"storeID"];
  searchResults = self->_searchResults;
  self->_searchResults = v14;
}

@end