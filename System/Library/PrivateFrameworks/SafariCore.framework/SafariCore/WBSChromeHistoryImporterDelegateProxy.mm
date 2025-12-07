@interface WBSChromeHistoryImporterDelegateProxy
- (WBSChromeHistoryImporterDelegateProxy)initWithDelegate:(id)delegate;
- (void)addVisitWithURLString:(id)string visitTime:(double)time title:(id)title loadSuccessful:(BOOL)successful httpGet:(BOOL)get redirectSourceURLString:(id)lString redirectSourceVisitTime:(double)visitTime redirectDestinationURLString:(id)self0 redirectDestinationVisitTime:(double)self1 visitCount:(unint64_t)self2;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation WBSChromeHistoryImporterDelegateProxy

- (WBSChromeHistoryImporterDelegateProxy)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = WBSChromeHistoryImporterDelegateProxy;
  v6 = [(WBSChromeHistoryImporterDelegateProxy *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, delegate);
    v8 = [MEMORY[0x1E695DFA8] set];
    uniqueHighLevelDomains = v7->_uniqueHighLevelDomains;
    v7->_uniqueHighLevelDomains = v8;

    v10 = v7;
  }

  return v7;
}

- (void)addVisitWithURLString:(id)string visitTime:(double)time title:(id)title loadSuccessful:(BOOL)successful httpGet:(BOOL)get redirectSourceURLString:(id)lString redirectSourceVisitTime:(double)visitTime redirectDestinationURLString:(id)self0 redirectDestinationVisitTime:(double)self1 visitCount:(unint64_t)self2
{
  getCopy = get;
  successfulCopy = successful;
  stringCopy = string;
  titleCopy = title;
  lStringCopy = lString;
  rLStringCopy = rLString;
  v24 = [(WBSHistoryImporterDelegate *)self->_delegate remoteObjectProxyWithErrorHandler:&__block_literal_global_15];
  v25 = [MEMORY[0x1E695DFF8] URLWithString:stringCopy];
  safari_highLevelDomain = [v25 safari_highLevelDomain];

  if (safari_highLevelDomain)
  {
    [(NSMutableSet *)self->_uniqueHighLevelDomains addObject:safari_highLevelDomain];
  }

  [v24 addVisitWithURLString:stringCopy visitTime:titleCopy title:successfulCopy loadSuccessful:getCopy httpGet:lStringCopy redirectSourceURLString:rLStringCopy redirectSourceVisitTime:time redirectDestinationURLString:visitTime redirectDestinationVisitTime:destinationVisitTime visitCount:count];
}

void __219__WBSChromeHistoryImporterDelegateProxy_addVisitWithURLString_visitTime_title_loadSuccessful_httpGet_redirectSourceURLString_redirectSourceVisitTime_redirectDestinationURLString_redirectDestinationVisitTime_visitCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXImport(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __219__WBSChromeHistoryImporterDelegateProxy_addVisitWithURLString_visitTime_title_loadSuccessful_httpGet_redirectSourceURLString_redirectSourceVisitTime_redirectDestinationURLString_redirectDestinationVisitTime_visitCount___block_invoke_cold_1(v4, v2);
  }
}

- (void)finishWithCompletionHandler:(id)handler
{
  uniqueHighLevelDomains = self->_uniqueHighLevelDomains;
  handlerCopy = handler;
  self->_numberOfVisitImported = [(NSMutableSet *)uniqueHighLevelDomains count];
  v6 = [(WBSHistoryImporterDelegate *)self->_delegate remoteObjectProxyWithErrorHandler:handlerCopy];
  [v6 finishWithCompletionHandler:handlerCopy];
}

void __219__WBSChromeHistoryImporterDelegateProxy_addVisitWithURLString_visitTime_title_loadSuccessful_httpGet_redirectSourceURLString_redirectSourceVisitTime_redirectDestinationURLString_redirectDestinationVisitTime_visitCount___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Failed to deliver visit to delegate: %{public}@", &v5, 0xCu);
}

@end