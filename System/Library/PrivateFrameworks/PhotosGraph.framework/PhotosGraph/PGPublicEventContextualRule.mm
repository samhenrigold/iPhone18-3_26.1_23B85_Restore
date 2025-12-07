@interface PGPublicEventContextualRule
- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options;
- (PGPublicEventContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection;
- (id)highlightNodesMatchingYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options;
- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block;
@end

@implementation PGPublicEventContextualRule

- (id)highlightNodesMatchingYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options
{
  filterCopy = filter;
  v7 = [PGContextualRuleUtils onThisDayLocalDateForYearHighlight:highlight withOptions:options];
  v8 = [v7 dateByAddingTimeInterval:-1209600.0];
  v9 = [v7 dateByAddingTimeInterval:1209600.0];
  v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v8 endDate:v9];
  v11 = [(PGGraphMomentNodeCollection *)self->_momentNodesMatchingPublicEvents subsetForLocalDateInterval:v10];
  highlightNodes = [v11 highlightNodes];
  v13 = [PGHighlightEnrichmentUtilities filteredHighlightNodesWithHighlightNodes:highlightNodes forSharingFilter:filterCopy];

  return v13;
}

- (void)enumerateContextualKeyAssetsForYearHighlight:(id)highlight sharingFilter:(unsigned __int16)filter withOptions:(id)options modelReader:(id)reader curationContext:(id)context usingBlock:(id)block
{
  filterCopy = filter;
  v37 = *MEMORY[0x277D85DE8];
  highlightCopy = highlight;
  optionsCopy = options;
  readerCopy = reader;
  contextCopy = context;
  blockCopy = block;
  if (blockCopy && [(MAElementCollection *)self->_publicEventNodes count]&& [(MAElementCollection *)self->_momentNodesMatchingPublicEvents count])
  {
    v19 = [(PGPublicEventContextualRule *)self highlightNodesMatchingYearHighlight:highlightCopy sharingFilter:filterCopy withOptions:optionsCopy];
    loggingConnection = self->_loggingConnection;
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      publicEventNodes = self->_publicEventNodes;
      v22 = loggingConnection;
      *buf = 138412802;
      v32 = publicEventNodes;
      v33 = 2048;
      v34 = [v19 count];
      v35 = 2112;
      v36 = highlightCopy;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Public event nodes %@ matched %tu highlight nodes for year %@", buf, 0x20u);
    }

    v23 = [PGContextualRuleUtils onThisDayLocalDateForYearHighlight:highlightCopy withOptions:optionsCopy];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __141__PGPublicEventContextualRule_enumerateContextualKeyAssetsForYearHighlight_sharingFilter_withOptions_modelReader_curationContext_usingBlock___block_invoke;
    v25[3] = &unk_278883AE0;
    v26 = v23;
    v30 = filterCopy;
    v27 = highlightCopy;
    selfCopy = self;
    v29 = blockCopy;
    v24 = v23;
    [v19 enumerateNodesUsingBlock:v25];
  }
}

void __141__PGPublicEventContextualRule_enumerateContextualKeyAssetsForYearHighlight_sharingFilter_withOptions_modelReader_curationContext_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 localStartDate];
  [v3 timeIntervalSinceDate:*(a1 + 32)];
  v5 = fabs(v4);

  if (v5 / 86400.0 <= 0.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 1.0 / (v5 / 86400.0);
  }

  [PGContextualRuleUtils returnContextualKeyAssetForHighlightNode:v7 yearHighlight:*(a1 + 40) sharingFilter:*(a1 + 64) score:*(*(a1 + 48) + 32) inPhotoLibrary:*(*(a1 + 48) + 40) loggingConnection:*(a1 + 56) usingBlock:v6];
}

- (BOOL)canProvideContextualKeyAssetsWithOptions:(id)options
{
  v43 = *MEMORY[0x277D85DE8];
  localToday = [options localToday];
  v5 = [PGGraphMonthDayNodeCollection monthDayNodesForLocalDate:localToday inGraph:self->_graph];
  dateNodes = [v5 dateNodes];
  momentNodes = [dateNodes momentNodes];

  publicEventNodes = [momentNodes publicEventNodes];
  isEmpty = [publicEventNodes isEmpty];
  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [localToday dateByAddingTimeInterval:-172800.0];
  v11 = [v9 initWithStartDate:v10 endDate:localToday];

  v12 = [PGGraphMomentNodeCollection momentNodesForLocalDateInterval:v11 inGraph:self->_graph];
  publicEventNodes2 = [v12 publicEventNodes];
  isEmpty2 = [publicEventNodes2 isEmpty];
  v14 = [publicEventNodes collectionByFormingUnionWith:publicEventNodes2];
  publicEventNodes = self->_publicEventNodes;
  self->_publicEventNodes = v14;

  v16 = [(MAElementCollection *)self->_publicEventNodes count];
  if (v16)
  {
    categoryNodes = [(PGGraphPublicEventNodeCollection *)self->_publicEventNodes categoryNodes];
    [categoryNodes labels];
    v30 = localToday;
    v18 = publicEventNodes;
    v19 = v12;
    v20 = v11;
    v21 = momentNodes;
    v23 = v22 = v5;

    v24 = [PGGraphPublicEventNodeCollection publicEventNodesWithCategories:v23 inGraph:self->_graph];
    momentNodes2 = [v24 momentNodes];
    momentNodesMatchingPublicEvents = self->_momentNodesMatchingPublicEvents;
    self->_momentNodesMatchingPublicEvents = momentNodes2;

    v5 = v22;
    momentNodes = v21;
    v11 = v20;
    v12 = v19;
    publicEventNodes = v18;
    localToday = v30;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
  {
    v28 = self->_publicEventNodes;
    *buf = 138413314;
    selfCopy = self;
    v35 = 1024;
    v36 = v16 != 0;
    v37 = 2112;
    v38 = v28;
    v39 = 1024;
    v40 = isEmpty2 ^ 1;
    v41 = 1024;
    v42 = isEmpty ^ 1;
    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "%@: canProvideContextualKeyAssets: %d\n\tMatched public events: %@\n\tRecently at public event: %d\n\tMatched on this day public event: %d", buf, 0x28u);
  }

  return v16 != 0;
}

- (PGPublicEventContextualRule)initWithGraph:(id)graph photoLibrary:(id)library loggingConnection:(id)connection
{
  graphCopy = graph;
  libraryCopy = library;
  connectionCopy = connection;
  v15.receiver = self;
  v15.super_class = PGPublicEventContextualRule;
  v12 = [(PGPublicEventContextualRule *)&v15 init];
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