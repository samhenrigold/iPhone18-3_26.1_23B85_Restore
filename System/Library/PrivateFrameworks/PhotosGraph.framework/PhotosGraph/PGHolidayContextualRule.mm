@interface PGHolidayContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options;
- (PGHolidayContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection;
- (id)highlightNodesMatchingYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options;
- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block;
@end

@implementation PGHolidayContextualRule

- (id)highlightNodesMatchingYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options
{
  filterCopy = filter;
  v23 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  localStartDate = [highlightCopy localStartDate];
  localEndDate = [highlightCopy localEndDate];
  v10 = localEndDate;
  if (localStartDate && localEndDate)
  {
    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:localStartDate endDate:localEndDate];
    v12 = [(PGGraphMomentNodeCollection *)self->_momentNodesForHoliday subsetForLocalDateInterval:v11];
    highlightNodes = [v12 highlightNodes];
    v14 = [PGHighlightEnrichmentUtilities filteredHighlightNodesWithHighlightNodes:highlightNodes forSharingFilter:filterCopy];
  }

  else
  {
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_FAULT))
    {
      v17 = 138412802;
      v18 = highlightCopy;
      v19 = 2112;
      v20 = localStartDate;
      v21 = 2112;
      v22 = v10;
      _os_log_fault_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_FAULT, "Could not match holiday to yearHighlight %@: invalid localStartDate %@, localEndDate %@", &v17, 0x20u);
    }

    v14 = [(MAElementCollection *)[PGGraphHighlightNodeCollection alloc] initWithGraph:self->_graph];
  }

  return v14;
}

- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block
{
  filterCopy = filter;
  v34 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  optionsCopy = options;
  readerCopy = reader;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy && self->_holidayNode && [(MAElementCollection *)self->_momentNodesForHoliday count])
  {
    v19 = [(PGHolidayContextualRule *)self highlightNodesMatchingYearHighlight:highlightCopy sharingFilter:filterCopy withOptions:optionsCopy];
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      holidayNode = self->_holidayNode;
      v22 = loggingConnection;
      *buf = 138412802;
      v29 = holidayNode;
      v30 = 2048;
      v31 = [v19 count];
      v32 = 2112;
      v33 = highlightCopy;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Holiday node %@ matched %tu highlight nodes for year %@", buf, 0x20u);
    }

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __137__PGHolidayContextualRule_enumerateContextualKeyAssetsForYearHighlight_sharingFilter_withOptions_modelReader_curationContext_usingBlock___block_invoke;
    v23[3] = &unk_2788824B8;
    v27 = filterCopy;
    v24 = highlightCopy;
    selfCopy = self;
    v26 = blockCopy;
    [v19 enumerateNodesUsingBlock:v23];
  }
}

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options
{
  v34[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277D276D8];
  optionsCopy = options;
  v6 = [v4 alloc];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v8 = [v6 initWithLocale:currentLocale];

  localToday = [optionsCopy localToday];

  v10 = [v8 eventRulesForLocalDate:localToday];

  if ([v10 count])
  {
    firstObject = [v10 firstObject];
    name = [firstObject name];
    graph = self->_graph;
    v33 = @"name";
    v34[0] = name;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v15 = [(MAGraph *)graph anyNodeForLabel:@"Holiday" domain:401 properties:v14];
    holidayNode = self->_holidayNode;
    self->_holidayNode = v15;

    v17 = self->_holidayNode;
    if (v17)
    {
      collection = [(PGGraphHolidayNode *)v17 collection];
      celebratingMomentNodes = [collection celebratingMomentNodes];
      momentNodesForHoliday = self->_momentNodesForHoliday;
      self->_momentNodesForHoliday = celebratingMomentNodes;
    }
  }

  else
  {
    name = 0;
  }

  v21 = [(MAElementCollection *)self->_momentNodesForHoliday count];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v23 = self->_holidayNode;
    v25 = 138413058;
    selfCopy = self;
    v27 = 1024;
    v28 = v21 != 0;
    v29 = 2112;
    v30 = name;
    v31 = 2112;
    v32 = v23;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d\n\tEvent rule: %@\n\tHoliday node %@", &v25, 0x26u);
  }

  return v21 != 0;
}

- (PGHolidayContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection
{
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PGHolidayContextualRule;
  v12 = [(PGHolidayContextualRule *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_graph, graph);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_loggingConnection, connection);
  }

  return v13;
}

@end