@interface WBSURLCompletionDatabase
+ (BOOL)_isMatchURLString:(id)string equivalentToBaseURLString:(id)lString;
+ (BOOL)_matchIsNotURLMatchAndTitleLooksLikeURLForBookmarkAndHistoryCompletionMatch:(const void *)match;
+ (BOOL)_matchMistookErrorTitleForPageTitleForBookmarkAndHistoryCompletionMatch:(const void *)match;
+ (BOOL)_redirectionChainsOfCompletionMatchData:(id)data containURLString:(id)string;
+ (BOOL)_shouldPreloadTopHit:(void *)hit forTypedString:(id)string withSearchParameters:(id)parameters;
+ (BOOL)_topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)f :(id)a5 DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>)a3 :RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch isOneOfManyUnremarkableMatchesInLocalHistoryMatches:inDomain:;
+ (BOOL)doesStringLookLikeURLHost:(id)host;
+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_synthesizeURLMatchWithURLString:(id)string title:(id)title topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)f :(void *)a7 DefaultRefDerefTraits<SafariShared:(id)shared :(double)a9 BookmarkAndHistoryCompletionMatch>>)a5 :(id)self0 RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch historyMatches:bookmarkMatches:typedString:timeNow:completionDataSource:;
+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_topHitFromBaseURLMatchForTopHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(BOOL *)f :(void *)a5 DefaultRefDerefTraits<SafariShared:(void *)shared :(id)a7 BookmarkAndHistoryCompletionMatch>>)a3 :(id)a8 RawPtrTraits<SafariShared:(double)safariShared :(id)self0 BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:;
+ (void)initializeURLCompletionOnMainThread;
- (WBSURLCompletionDataSource)dataSource;
- (WBSURLCompletionDatabase)init;
- (id).cxx_construct;
- (void)_getSortedMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier topHits:(void *)hits historyMatches:(void *)matches historyLimit:(unint64_t)limit bookmarkMatches:(void *)bookmarkMatches bookmarkLimit:(unint64_t)bookmarkLimit searchParameters:(id)self0 prefixMatchesOnly:(BOOL)self1;
- (void)_getUnsortedFullTextMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier historyMatches:(void *)matches bookmarkMatches:(void *)bookmarkMatches dataTypes:(unsigned int)types;
- (void)_getUnsortedPrefixMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier historyMatches:(void *)matches bookmarkMatches:(void *)bookmarkMatches;
- (void)_removeMatchesThatMistookErrorTitleForPageTitleFromMatches:(void *)matches;
- (void)_removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:(void *)matches;
- (void)clearBookmarkMatchesCachesKeepingEmptyValues:(BOOL)values;
- (void)clearHistoryMatchesCache;
- (void)clearMatchesCaches;
- (void)getBestMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier topHits:(id *)hits matches:(id *)matches limit:(unint64_t)limit forQueryID:(int64_t)d withSearchParameters:(id)parameters;
@end

@implementation WBSURLCompletionDatabase

- (WBSURLCompletionDatabase)init
{
  v5.receiver = self;
  v5.super_class = WBSURLCompletionDatabase;
  v2 = [(WBSURLCompletionDatabase *)&v5 init];
  if (v2)
  {
    [objc_opt_class() initializeURLCompletionOnMainThread];
    v3 = v2;
  }

  return v2;
}

+ (void)initializeURLCompletionOnMainThread
{
  if (+[WBSURLCompletionDatabase initializeURLCompletionOnMainThread]::onceToken != -1)
  {
    +[WBSURLCompletionDatabase initializeURLCompletionOnMainThread];
  }
}

- (void)getBestMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier topHits:(id *)hits matches:(id *)matches limit:(unint64_t)limit forQueryID:(int64_t)d withSearchParameters:(id)parameters
{
  stringCopy = string;
  identifierCopy = identifier;
  parametersCopy = parameters;
  v51 = 0;
  v52 = 0;
  v49 = 0;
  v50 = 0;
  v45 = identifierCopy;
  v18 = [[WBSURLCompletionUserTypedString alloc] initWithString:stringCopy];
  v47 = 0;
  v48 = 0;
  if (hits)
  {
    v19 = &v51;
  }

  else
  {
    v19 = 0;
  }

  v46 = v18;
  v20 = [(WBSURLCompletionDatabase *)self _getSortedPrefixMatchesForTypedString:v18 filterResultsUsingProfileIdentifier:identifierCopy topHits:v19 historyMatches:&v49 historyLimit:limit bookmarkMatches:&v47 bookmarkLimit:limit searchParameters:parametersCopy];
  v23 = HIDWORD(v48);
  if (HIDWORD(v48) + HIDWORD(v50) < limit)
  {
    WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v49, 0, v22);
    if (HIDWORD(v48) < limit)
    {
      WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v47, 0, v24);
    }

    v20 = [(WBSURLCompletionDatabase *)self _getSortedFullTextMatchesForTypedString:v46 filterResultsUsingProfileIdentifier:identifierCopy topHits:v19 historyMatches:&v49 historyLimit:limit bookmarkMatches:&v47 bookmarkLimit:limit searchParameters:parametersCopy];
    v23 = HIDWORD(v48);
  }

  if (v23)
  {
    WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendRange<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(&v49, v47, &v47[v23]);
    v53 = compareCompletionMatches;
    v25 = 126 - 2 * __clz(HIDWORD(v50));
    v26 = HIDWORD(v50) ? v25 : 0;
    std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,false>(v49, &v49[HIDWORD(v50)], &v53, v26, 1);
    if (HIDWORD(v50) > limit)
    {
      v20 = WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(&v49, limit);
    }
  }

  v27 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v20, v21);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
  if (v28)
  {
    if (HIDWORD(v50))
    {
      v30 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v28, v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:];
      }

      logMatches(&v49);
    }

    else
    {
      v31 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v28, v29);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:];
      }
    }
  }

  if (hits)
  {
    v32 = [MEMORY[0x1E695DF70] arrayWithCapacity:HIDWORD(v52)];
    *hits = v32;
    if (HIDWORD(v52))
    {
      v33 = v51;
      v34 = 8 * HIDWORD(v52);
      do
      {
        v35 = [WBSURLCompletionDatabase _shouldPreloadTopHit:*v33 forTypedString:stringCopy withSearchParameters:parametersCopy];
        v36 = [WBSTopHitCompletionMatch alloc];
        v53 = *v33;
        *v33 = 0;
        v37 = [(WBSTopHitCompletionMatch *)v36 initWithBookmarkAndHistoryCompletionMatch:&v53 userInput:stringCopy forQueryID:d shouldPreload:v35];
        [v32 addObject:v37];

        v38 = v53;
        v53 = 0;
        if (v38)
        {
          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v38);
        }

        ++v33;
        v34 -= 8;
      }

      while (v34);
    }
  }

  v39 = [MEMORY[0x1E695DF70] arrayWithCapacity:HIDWORD(v50)];
  *matches = v39;
  if (HIDWORD(v50))
  {
    v40 = v49;
    v41 = 8 * HIDWORD(v50);
    do
    {
      v42 = [WBSBookmarkAndHistoryCompletionMatch alloc];
      v53 = *v40;
      *v40 = 0;
      v43 = [(WBSBookmarkAndHistoryCompletionMatch *)v42 initWithBookmarkAndHistoryCompletionMatch:&v53 userInput:stringCopy forQueryID:d];
      [v39 addObject:v43];

      v44 = v53;
      v53 = 0;
      if (v44)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v44);
      }

      ++v40;
      v41 -= 8;
    }

    while (v41);
  }

  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v47);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v51);
}

+ (BOOL)doesStringLookLikeURLHost:(id)host
{
  hostCopy = host;
  if (([hostCopy safari_containsInteriorWhitespace] & 1) != 0 || (v4 = objc_msgSend(hostCopy, "safari_firstLocationOfPeriodOrHomoglyphForPeriod"), v4 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v5 = 0;
  }

  else
  {
    v6 = [hostCopy substringFromIndex:v4];
    v5 = ![v6 length] || (objc_msgSend(v6, "containsString:", @"/") & 1) == 0;
  }

  return v5;
}

+ (BOOL)_shouldPreloadTopHit:(void *)hit forTypedString:(id)string withSearchParameters:(id)parameters
{
  stringCopy = string;
  parametersCopy = parameters;
  if (hit)
  {
    v9 = SafariShared::BookmarkAndHistoryCompletionMatch::data(hit);
    shouldPreload = [v9 shouldPreload];

    if (shouldPreload)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __85__WBSURLCompletionDatabase__shouldPreloadTopHit_forTypedString_withSearchParameters___block_invoke;
      v19[3] = &unk_1E7FCB1E0;
      hitCopy = hit;
      v11 = stringCopy;
      v20 = v11;
      v21 = parametersCopy;
      v12 = MEMORY[0x1BFB13CE0](v19);
      v13 = *(hit + 1);
      if (v13 <= 8 && ((1 << v13) & 0x1D8) != 0 || (SafariShared::BookmarkAndHistoryCompletionMatch::originalURLString(hit), v15 = objc_claimAutoreleasedReturnValue(), v16 = [[WBSURLCompletionUserTypedString alloc] initWithString:v11], v18 = SafariShared::computeURLMatchLocation(v15, &v16->super.isa, v17), v16, v15, v13 != v18))
      {
        LOBYTE(hit) = v12[2](v12);
      }

      else
      {
        LOBYTE(hit) = 1;
      }
    }

    else
    {
      LOBYTE(hit) = 0;
    }
  }

  return hit;
}

BOOL __85__WBSURLCompletionDatabase__shouldPreloadTopHit_forTypedString_withSearchParameters___block_invoke(uint64_t a1)
{
  v2 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(a1 + 48));
  if ([v2 matchesAutocompleteTrigger:*(a1 + 32) isStrengthened:{objc_msgSend(*(a1 + 40), "strengthenAutocompleteTriggerExtensionMatching")}])
  {
    v3 = *(*(a1 + 48) + 64) >= 1.0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)clearBookmarkMatchesCachesKeepingEmptyValues:(BOOL)values
{
  valuesCopy = values;
  v5 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(self, a2);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (valuesCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    fullTextBookmarkMatchesCacheString = self->_fullTextBookmarkMatchesCacheString;
    self->_fullTextBookmarkMatchesCacheString = 0;

    WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_fullTextBookmarkMatchesCache, 0);
LABEL_9:
    prefixBookmarkMatchesCacheString = self->_prefixBookmarkMatchesCacheString;
    self->_prefixBookmarkMatchesCacheString = 0;

    goto LABEL_10;
  }

  [WBSURLCompletionDatabase clearBookmarkMatchesCachesKeepingEmptyValues:];
  if (!valuesCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (self->_fullTextBookmarkMatchesCache.m_size)
  {
    v6 = self->_fullTextBookmarkMatchesCacheString;
    self->_fullTextBookmarkMatchesCacheString = 0;
  }

  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_fullTextBookmarkMatchesCache, 0);
  if (self->_prefixBookmarkMatchesCache.m_size)
  {
    goto LABEL_9;
  }

LABEL_10:
  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_prefixBookmarkMatchesCache, 0);
}

- (void)clearHistoryMatchesCache
{
  v3 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [WBSURLCompletionDatabase clearHistoryMatchesCache];
  }

  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_fullTextHistoryMatchesCache, 0);
  fullTextHistoryMatchesCacheString = self->_fullTextHistoryMatchesCacheString;
  self->_fullTextHistoryMatchesCacheString = 0;

  WTF::Vector<objc_object  {objcproto25WBSURLCompletionMatchData}* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&self->_prefixHistoryMatchesCache, 0);
  prefixHistoryMatchesCacheString = self->_prefixHistoryMatchesCacheString;
  self->_prefixHistoryMatchesCacheString = 0;

  prefixHistoryMatchesCacheProfileIdentifier = self->_prefixHistoryMatchesCacheProfileIdentifier;
  self->_prefixHistoryMatchesCacheProfileIdentifier = 0;

  fullTextHistoryMatchesCacheStringProfileIdentifier = self->_fullTextHistoryMatchesCacheStringProfileIdentifier;
  self->_fullTextHistoryMatchesCacheStringProfileIdentifier = 0;
}

- (void)clearMatchesCaches
{
  [(WBSURLCompletionDatabase *)self clearBookmarkMatchesCaches];

  [(WBSURLCompletionDatabase *)self clearHistoryMatchesCache];
}

+ (BOOL)_matchIsNotURLMatchAndTitleLooksLikeURLForBookmarkAndHistoryCompletionMatch:(const void *)match
{
  v3 = *(match + 1);
  v4 = v3 > 8;
  v5 = (1 << v3) & 0x1C8;
  if (v4 || v5 == 0)
  {
    return 0;
  }

  v8 = SafariShared::BookmarkAndHistoryCompletionMatch::title(match);
  v9 = [WBSURLCompletionDatabase doesStringLookLikeURLHost:v8]&& *(match + 2) == 0;

  return v9;
}

+ (BOOL)_matchMistookErrorTitleForPageTitleForBookmarkAndHistoryCompletionMatch:(const void *)match
{
  v3 = *(match + 1);
  if (v3 != 4)
  {
    v5 = SafariShared::BookmarkAndHistoryCompletionMatch::data(match);
    if ([v5 lastVisitWasFailure])
    {
      if (v3 <= 0xA)
      {
LABEL_5:
        v4 = 0x1C8u >> v3;
LABEL_11:

        return v4 & 1;
      }
    }

    else
    {
      visitWasClientError = [v5 visitWasClientError];
      if (v3 < 0xB)
      {
        v7 = visitWasClientError;
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        goto LABEL_5;
      }
    }

    LOBYTE(v4) = 0;
    goto LABEL_11;
  }

  LOBYTE(v4) = 0;
  return v4 & 1;
}

+ (BOOL)_redirectionChainsOfCompletionMatchData:(id)data containURLString:(id)string
{
  dataCopy = data;
  stringCopy = string;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    entries = [dataCopy entries];
    v9 = [entries count];
    do
    {
      v10 = --v9 > 0;
      if (v9 <= 0)
      {
        break;
      }

      0x7FFFFFFF = [entries objectAtIndexedSubscript:v9 & 0x7FFFFFFF];
      v12 = [0x7FFFFFFF url];
      v13 = [self _isMatchURLString:v12 equivalentToBaseURLString:stringCopy];
    }

    while ((v13 & 1) == 0);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_topHitFromBaseURLMatchForTopHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(BOOL *)f :(void *)a5 DefaultRefDerefTraits<SafariShared:(void *)shared :(id)a7 BookmarkAndHistoryCompletionMatch>>)a3 :(id)a8 RawPtrTraits<SafariShared:(double)safariShared :(id)self0 BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:
{
  v16 = v10;
  v115 = *MEMORY[0x1E69E9840];
  v17 = a7;
  v18 = a8;
  v19 = a10;
  if (!*a3.m_ptr || !(*(a5 + 3) | *(shared + 3)))
  {
    *v16 = 0;
    goto LABEL_14;
  }

  safari_bestURLForUserTypedString = [v17[1] safari_bestURLForUserTypedString];
  if (!safari_bestURLForUserTypedString || ([safari_bestURLForUserTypedString safari_userVisibleString], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "localizedCaseInsensitiveContainsString:", v17[1]), v20, (v21 & 1) == 0))
  {
    *v16 = 0;
    goto LABEL_13;
  }

  path = [safari_bestURLForUserTypedString path];
  if ([path length] && !objc_msgSend(path, "isEqualToString:", @"/") || (objc_msgSend(safari_bestURLForUserTypedString, "safari_hasCharactersBeyondPath") & 1) != 0 || objc_msgSend(v17[1], "hasSuffix:", @"?"))
  {
    *v16 = 0;
    goto LABEL_11;
  }

  v23 = MEMORY[0x1E695DFF8];
  v24 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(*a3.m_ptr);
  v25 = [v23 safari_URLWithUserTypedString:v24];

  v105 = v25;
  if (!v25)
  {
    v40 = WBS_LOG_CHANNEL_PREFIXHistory(v26, v27);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = SafariShared::BookmarkAndHistoryCompletionMatch::userVisibleURLString(*a3.m_ptr);
      [WBSURLCompletionDatabase _topHitFromBaseURLMatchForTopHitFromMatches:v41 shouldReplaceTopHitFromMatches:buf historyMatches:v40 bookmarkMatches:? typedString:? searchParameters:? timeNow:? completionDataSource:?];
    }

    *v16 = 0;
    goto LABEL_43;
  }

  path2 = [v25 path];
  if (*(*a3.m_ptr + 8) != 9 || ![path2 length] || objc_msgSend(path2, "isEqualToString:", @"/") && !objc_msgSend(v25, "safari_hasCharactersBeyondPath"))
  {
    goto LABEL_41;
  }

  host = [v25 host];
  if (![host length])
  {

    goto LABEL_41;
  }

  isFileURL = [v105 isFileURL];

  if (isFileURL)
  {
LABEL_41:
    *v16 = 0;
    goto LABEL_42;
  }

  v30 = [MEMORY[0x1E695DFF8] safari_URLWithDataAsString:@"/" relativeToURL:v105];
  safari_originalDataAsString = [v30 safari_originalDataAsString];

  v103 = safari_originalDataAsString;
  if ([safari_originalDataAsString safari_hasCaseInsensitivePrefix:@"feed:"] && (objc_msgSend(v17[1], "safari_hasCaseInsensitivePrefix:", @"feed:") & 1) == 0)
  {
    v32 = [safari_originalDataAsString stringByReplacingCharactersInRange:0 withString:{5, @"https:"}];

    v103 = v32;
  }

  v33 = objc_opt_class();
  v34 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*a3.m_ptr);
  v35 = [v33 _redirectionChainsOfCompletionMatchData:v34 containURLString:v103];

  if (v35)
  {
    v36 = SafariShared::BookmarkAndHistoryCompletionMatch::title(*a3.m_ptr);
    safari_userVisibleHost = v36;
    if (!v36)
    {
      safari_userVisibleHost = [v105 safari_userVisibleHost];
    }

    v38 = *a3.m_ptr;
    if (*a3.m_ptr)
    {
      ++*v38;
    }

    v113 = v38;
    [self _synthesizeURLMatchWithURLString:v103 title:safari_userVisibleHost topHitFromMatches:&v113 historyMatches:a5 bookmarkMatches:shared typedString:v17 timeNow:safariShared completionDataSource:v19];
    v39 = v113;
    v113 = 0;
    if (v39)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v39);
    }

    if (!v36)
    {
    }

    if (*v16)
    {
      logCompletionMatchToDebugChannel(&cfstr_WillReplaceTop.isa, *a3.m_ptr);
      goto LABEL_36;
    }
  }

  LODWORD(v42) = *(a5 + 3);
  if (!v42)
  {
LABEL_57:
    if (!*(shared + 3))
    {
LABEL_66:
      if (v42)
      {
        v56 = 0;
        do
        {
          v57 = *(*a5 + 8 * v56);
          if (v57)
          {
            ++*v57;
          }

          v102 = v57;
          if (*a3.m_ptr == v57)
          {
            v67 = 12;
          }

          else
          {
            v58 = objc_opt_class();
            v59 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v102);
            LODWORD(v58) = [v58 _redirectionChainsOfCompletionMatchData:v59 containURLString:v103];

            if (v58)
            {
              v62 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v60, v61);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
              {
                [WBSURLCompletionDatabase _topHitFromBaseURLMatchForTopHitFromMatches:buf shouldReplaceTopHitFromMatches:&buf[1] historyMatches:v62 bookmarkMatches:? typedString:? searchParameters:? timeNow:? completionDataSource:?];
              }

              v63 = SafariShared::BookmarkAndHistoryCompletionMatch::title(v102);
              v64 = v63;
              if (!v63)
              {
                safari_userVisibleHost2 = [v105 safari_userVisibleHost];
                v64 = safari_userVisibleHost2;
              }

              v65 = *a3.m_ptr;
              if (*a3.m_ptr)
              {
                ++*v65;
              }

              v112 = v65;
              [self _synthesizeURLMatchWithURLString:v103 title:v64 topHitFromMatches:&v112 historyMatches:a5 bookmarkMatches:shared typedString:v17 timeNow:safariShared completionDataSource:v19];
              v66 = v112;
              v112 = 0;
              if (v66)
              {
                WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v66);
              }

              if (!v63)
              {
              }

              v67 = 1;
            }

            else
            {
              v67 = 0;
            }
          }

          if (v102)
          {
            WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v102);
          }

          if (v67 != 12 && v67)
          {
            goto LABEL_123;
          }
        }

        while (++v56 < *(a5 + 3));
      }

      v68 = objc_opt_class();
      v69 = *a3.m_ptr;
      if (*a3.m_ptr)
      {
        ++*v69;
      }

      v111 = v69;
      host2 = [v105 host];
      v71 = [v68 _topHitFromMatches:&v111 isOneOfManyUnremarkableMatchesInLocalHistoryMatches:a5 inDomain:host2];

      v72 = v111;
      v111 = 0;
      if (v72)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v72);
      }

      if (!v71)
      {
        goto LABEL_102;
      }

      safari_userVisibleHost3 = [v105 safari_userVisibleHost];
      v74 = *a3.m_ptr;
      if (*a3.m_ptr)
      {
        ++*v74;
      }

      v110 = v74;
      [self _synthesizeURLMatchWithURLString:v103 title:safari_userVisibleHost3 topHitFromMatches:&v110 historyMatches:a5 bookmarkMatches:shared typedString:v17 timeNow:safariShared completionDataSource:v19];
      v75 = v110;
      v110 = 0;
      if (v75)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v75);
      }

      if (!*v16)
      {
LABEL_102:
        *v16 = 0;
        goto LABEL_123;
      }

      v78 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v76, v77);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
      {
        +[WBSURLCompletionDatabase _topHitFromBaseURLMatchForTopHitFromMatches:shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:];
      }

LABEL_36:
      *f = 1;
      goto LABEL_123;
    }

    v50 = 0;
    v51 = -8;
    while (1)
    {
      safari_userVisibleHost2 = v51;
      v52 = *(*shared + 8 * v50);
      if (v52)
      {
        ++*v52;
      }

      *v16 = v52;
      v53 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v52);
      originalURLString = [v53 originalURLString];
      v101 = [self _isMatchURLString:originalURLString equivalentToBaseURLString:v103];

      if (v101)
      {
        break;
      }

      v55 = *v16;
      *v16 = 0;
      if (v55)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v55);
      }

      ++v50;
      v51 = safari_userVisibleHost2 - 8;
      if (v50 >= *(shared + 3))
      {
        LODWORD(v42) = *(a5 + 3);
        goto LABEL_66;
      }
    }

    if (!v50)
    {
      goto LABEL_123;
    }

    v79 = *(shared + 3);
    if (v50 < v79)
    {
      v80 = *shared;
      v81 = (*shared + 8 * v50);
      v82 = *v81;
      *v81 = 0;
      if (v82)
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v82);
        v79 = *(shared + 3);
      }

      memmove(v81, v81 + 1, safari_userVisibleHost2 + *shared + 8 * v79 - v80);
      v83 = *(shared + 2);
      v84 = (*(shared + 3) - 1);
      *(shared + 3) = v84;
      if (v84 == v83)
      {
        v85 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(shared, v84 + 1, v16);
        LODWORD(v84) = *(shared + 3);
        v16 = v85;
      }

      v86 = *shared;
      memmove((*shared + 8), *shared, 8 * v84);
      v87 = *v16;
      if (*v16)
      {
        ++*v87;
      }

      *v86 = v87;
      ++*(shared + 3);
      goto LABEL_123;
    }

    goto LABEL_124;
  }

  v43 = 0;
  v44 = -8;
  while (1)
  {
    v98 = v44;
    v45 = *(*a5 + 8 * v43);
    if (v45)
    {
      ++*v45;
    }

    *buf = v45;
    safari_userVisibleHost2 = v45;
    v46 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v45);
    originalURLString2 = [v46 originalURLString];
    v100 = [self _isMatchURLString:originalURLString2 equivalentToBaseURLString:v103];

    if (v100)
    {
      break;
    }

LABEL_53:
    if (safari_userVisibleHost2)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(safari_userVisibleHost2);
    }

    if (v100)
    {
      goto LABEL_123;
    }

    ++v43;
    v42 = *(a5 + 3);
    v44 = v98 - 8;
    if (v43 >= v42)
    {
      goto LABEL_57;
    }
  }

  v97 = SafariShared::BookmarkAndHistoryCompletionMatch::data(safari_userVisibleHost2);
  if ([v97 lastVisitWasFailure])
  {

LABEL_52:
    *v16 = 0;
    goto LABEL_53;
  }

  v48 = SafariShared::BookmarkAndHistoryCompletionMatch::data(safari_userVisibleHost2);
  visitWasClientError = [v48 visitWasClientError];

  if (visitWasClientError)
  {
    goto LABEL_52;
  }

  if (!v43)
  {
    goto LABEL_122;
  }

  v88 = *(a5 + 3);
  if (v43 >= v88)
  {
LABEL_124:
    __break(1u);
    return v22;
  }

  v89 = *a5;
  v90 = (*a5 + 8 * v43);
  v91 = *v90;
  *v90 = 0;
  if (v91)
  {
    WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v91);
    v88 = *(a5 + 3);
  }

  memmove(v90, v90 + 1, *a5 + 8 * v88 - v89 + v98);
  v92 = *(a5 + 2);
  v93 = (*(a5 + 3) - 1);
  *(a5 + 3) = v93;
  if (v93 == v92)
  {
    v94 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a5, v93 + 1, buf);
    LODWORD(v93) = *(a5 + 3);
  }

  else
  {
    v94 = buf;
  }

  v95 = *a5;
  memmove((*a5 + 8), *a5, 8 * v93);
  v96 = *v94;
  if (*v94)
  {
    ++*v96;
  }

  *v95 = v96;
  ++*(a5 + 3);
  safari_userVisibleHost2 = *buf;
LABEL_122:
  *v16 = safari_userVisibleHost2;
LABEL_123:

LABEL_42:
LABEL_43:

LABEL_11:
LABEL_13:

LABEL_14:
  return v22;
}

+ (BOOL)_isMatchURLString:(id)string equivalentToBaseURLString:(id)lString
{
  stringCopy = string;
  lStringCopy = lString;
  v7 = [stringCopy length];
  if (v7 == [lStringCopy length] - 1)
  {
    v8 = [lStringCopy hasPrefix:stringCopy];
  }

  else
  {
    v8 = [lStringCopy isEqualToString:stringCopy];
  }

  v9 = v8;

  return v9;
}

+ (BOOL)_topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)f :(id)a5 DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>)a3 :RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch isOneOfManyUnremarkableMatchesInLocalHistoryMatches:inDomain:
{
  v7 = a5;
  v8 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*a3.m_ptr);
  containsBookmark = [v8 containsBookmark];

  if ((containsBookmark & 1) == 0 && *(f + 3))
  {
    v10 = 0;
    v11 = *(*a3.m_ptr + 48);
    while (1)
    {
      v12 = *(*f + 8 * v10);
      if (!v12)
      {
        break;
      }

      ++*v12;
      if (*a3.m_ptr != v12)
      {
        goto LABEL_6;
      }

LABEL_9:
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v12);
LABEL_10:
      if (++v10 >= *(f + 3))
      {
        goto LABEL_14;
      }
    }

    if (!*a3.m_ptr)
    {
      goto LABEL_10;
    }

LABEL_6:
    v13 = v11 - *(v12 + 48);
    if (v13 >= 0.0)
    {
      v14 = v13 <= 0.5;
      if (v13 > 0.5 || (SafariShared::BookmarkAndHistoryCompletionMatch::originalURLString(v12), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 containsString:v7], v15, (v16 & 1) != 0))
      {
        WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v12);
        goto LABEL_15;
      }
    }

    goto LABEL_9;
  }

LABEL_14:
  v14 = 0;
LABEL_15:

  return v14;
}

+ (RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,)_synthesizeURLMatchWithURLString:(id)string title:(id)title topHitFromMatches:()RefPtr<SafariShared:()WTF:(WTF:(void *)f :(void *)a7 DefaultRefDerefTraits<SafariShared:(id)shared :(double)a9 BookmarkAndHistoryCompletionMatch>>)a5 :(id)self0 RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch> :BookmarkAndHistoryCompletionMatch historyMatches:bookmarkMatches:typedString:timeNow:completionDataSource:
{
  v17 = v10;
  stringCopy = string;
  titleCopy = title;
  sharedCopy = shared;
  v21 = a10;
  v22 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*a5.m_ptr);
  v23 = [v21 fakeBookmarkMatchDataWithURLString:stringCopy title:titleCopy shouldPreload:{objc_msgSend(v22, "shouldPreload")}];

  if (v23 && (v33 = 0, v34 = 0, (matched = SafariShared::BookmarkAndHistoryCompletionMatch::computeMatchLocation(v23, sharedCopy, &v34, &v33)) != 0))
  {
    SafariShared::BookmarkAndHistoryCompletionMatch::create(v23, 0, matched, v33, v34, &v32, a9);
    v25 = v32;
    *v17 = v32;
    v26 = SafariShared::BookmarkAndHistoryCompletionMatch::data(v25);
    if (![v26 containsBookmark])
    {
      a7 = f;
    }

    v27 = *(a7 + 3);
    if (v27 == *(a7 + 2))
    {
      v28 = WTF::Vector<OpaqueJSValue *,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a7, v27 + 1, v17);
      LODWORD(v27) = *(a7 + 3);
      v17 = v28;
    }

    v29 = *a7;
    memmove((*a7 + 8), *a7, 8 * v27);
    v30 = *v17;
    if (*v17)
    {
      ++*v30;
    }

    *v29 = v30;
    ++*(a7 + 3);
  }

  else
  {
    *v17 = 0;
  }

  return v31;
}

- (void)_removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:(void *)matches
{
  *&v20[5] = *MEMORY[0x1E69E9840];
  v17 = 0;
  v18 = 0;
  v4 = *matches;
  v5 = *(matches + 3);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      v7 = [objc_opt_class() _matchIsNotURLMatchAndTitleLooksLikeURLForBookmarkAndHistoryCompletionMatch:*v4];
      if (v7)
      {
        v9 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v7, v8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = SafariShared::BookmarkAndHistoryCompletionMatch::title(*v4);
          [(WBSURLCompletionDatabase *)v10 _removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:buf, v20, v9];
        }
      }

      else
      {
        v11 = HIDWORD(v18);
        if (HIDWORD(v18) == v18)
        {
          WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v17, v4);
        }

        else
        {
          v12 = v17;
          v13 = *v4;
          if (*v4)
          {
            ++*v13;
          }

          v12[v11] = v13;
          HIDWORD(v18) = v11 + 1;
        }
      }

      ++v4;
      v6 -= 8;
    }

    while (v6);
    v4 = *matches;
    v14 = v17;
    LODWORD(v5) = *(matches + 3);
    v15 = v18;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  *matches = v14;
  v17 = v4;
  v16 = *(matches + 2);
  *(matches + 1) = v15;
  v18 = __PAIR64__(v5, v16);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17);
}

- (void)_removeMatchesThatMistookErrorTitleForPageTitleFromMatches:(void *)matches
{
  v13 = 0;
  v14 = 0;
  v4 = *matches;
  v5 = *(matches + 3);
  if (v5)
  {
    v6 = 8 * v5;
    do
    {
      if (([objc_opt_class() _matchMistookErrorTitleForPageTitleForBookmarkAndHistoryCompletionMatch:*v4] & 1) == 0)
      {
        v7 = HIDWORD(v14);
        if (HIDWORD(v14) == v14)
        {
          WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v13, v4);
        }

        else
        {
          v8 = v13;
          v9 = *v4;
          if (*v4)
          {
            ++*v9;
          }

          v8[v7] = v9;
          HIDWORD(v14) = v7 + 1;
        }
      }

      ++v4;
      v6 -= 8;
    }

    while (v6);
    v4 = *matches;
    v10 = v13;
    LODWORD(v5) = *(matches + 3);
    v11 = v14;
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *matches = v10;
  v13 = v4;
  v12 = *(matches + 2);
  *(matches + 1) = v11;
  v14 = __PAIR64__(v5, v12);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13);
}

- (void)_getSortedMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier topHits:(void *)hits historyMatches:(void *)matches historyLimit:(unint64_t)limit bookmarkMatches:(void *)bookmarkMatches bookmarkLimit:(unint64_t)bookmarkLimit searchParameters:(id)self0 prefixMatchesOnly:(BOOL)self1
{
  v125 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  identifierCopy = identifier;
  v107 = stringCopy;
  parametersCopy = parameters;
  Current = CFAbsoluteTimeGetCurrent();
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  if (only)
  {
    v18 = [(WBSURLCompletionDatabase *)self _getUnsortedPrefixMatchesForTypedString:stringCopy filterResultsUsingProfileIdentifier:identifierCopy historyMatches:&v117 bookmarkMatches:&v115];
    v20 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v18, v19);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_33;
    }

    v21 = stringCopy[1];
    v22 = CFAbsoluteTimeGetCurrent();
    *buf = 138740739;
    *&buf[4] = v21;
    v120 = 2048;
    *v121 = (v22 - Current) * 1000.0;
    *&v121[8] = 1024;
    v122 = HIDWORD(v118);
    v123 = 1024;
    v124 = HIDWORD(v116);
    v23 = "Unsorted word prefix match for typed string %{sensitive}@ took %.3f milliseconds, found %d history matches, %d bookmark matches";
    goto LABEL_122;
  }

  v24 = *(matches + 3);
  if (v24)
  {
    v117 = *matches;
    LODWORD(v118) = *(matches + 2);
    HIDWORD(v118) = v24;
    *matches = 0;
    *(matches + 1) = 0;
    if (hits && *(hits + 3))
    {
      v25 = 0;
      v26 = 0;
      do
      {
        v27 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(*hits + 8 * v26));
        containsBookmark = [v27 containsBookmark];

        v29 = *(hits + 3);
        if ((containsBookmark & 1) == 0)
        {
          if (v26 >= v29)
          {
            __break(0xC471u);
            JUMPOUT(0x1BB870994);
          }

          v30 = *hits;
          v31 = HIDWORD(v118);
          if (HIDWORD(v118) == v118)
          {
            WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v117, v30 + v25);
            v29 = *(hits + 3);
          }

          else
          {
            v32 = v117;
            v33 = *(v30 + 8 * v26);
            if (v33)
            {
              ++*v33;
            }

            v32[v31] = v33;
            HIDWORD(v118) = v31 + 1;
          }
        }

        ++v26;
        v25 += 8;
      }

      while (v26 < v29);
    }

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = *(bookmarkMatches + 3);
  if (v35)
  {
    v36 = v115;
    v115 = *bookmarkMatches;
    *bookmarkMatches = v36;
    v37 = v116;
    LODWORD(v116) = *(bookmarkMatches + 2);
    HIDWORD(v116) = v35;
    *(bookmarkMatches + 1) = v37;
    if (hits && *(hits + 3))
    {
      v38 = 0;
      for (i = 0; i < v42; ++i)
      {
        v40 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(*hits + 8 * i));
        containsBookmark2 = [v40 containsBookmark];

        v42 = *(hits + 3);
        if (containsBookmark2)
        {
          if (i >= v42)
          {
            __break(0xC471u);
            goto LABEL_126;
          }

          v43 = *hits;
          v44 = HIDWORD(v116);
          if (HIDWORD(v116) == v116)
          {
            WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&>(&v115, v43 + v38);
            v42 = *(hits + 3);
          }

          else
          {
            v45 = v115;
            v46 = *(v43 + 8 * i);
            if (v46)
            {
              ++*v46;
            }

            v45[v44] = v46;
            HIDWORD(v116) = v44 + 1;
          }
        }

        v38 += 8;
      }
    }
  }

  else
  {
    v34 = v34 | 2;
  }

  v47 = [(WBSURLCompletionDatabase *)self _getUnsortedFullTextMatchesForTypedString:stringCopy filterResultsUsingProfileIdentifier:identifierCopy historyMatches:&v117 bookmarkMatches:&v115 dataTypes:v34];
  v20 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v47, v48);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v105 = stringCopy[1];
    v106 = CFAbsoluteTimeGetCurrent();
    *buf = 138740739;
    *&buf[4] = v105;
    v120 = 2048;
    *v121 = (v106 - Current) * 1000.0;
    *&v121[8] = 1024;
    v122 = HIDWORD(v118);
    v123 = 1024;
    v124 = HIDWORD(v116);
    v23 = "Unsorted URL match for typed string %{sensitive}@ took %.3f milliseconds, found %d history matches, %d bookmark matches";
LABEL_122:
    _os_log_debug_impl(&dword_1BB6F3000, v20, OS_LOG_TYPE_DEBUG, v23, buf, 0x22u);
  }

LABEL_33:

  [(WBSURLCompletionDatabase *)self _removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:&v117];
  [(WBSURLCompletionDatabase *)self _removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:&v115];
  [(WBSURLCompletionDatabase *)self _removeMatchesThatMistookErrorTitleForPageTitleFromMatches:&v117];
  if (limit + 1 < HIDWORD(v118))
  {
    v50 = limit + 1;
  }

  else
  {
    v50 = HIDWORD(v118);
  }

  *buf = compareCompletionMatches;
  if (v50)
  {
    std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v117, &v117[v50], &v117[HIDWORD(v118)], buf);
  }

  bookmarkLimitCopy = bookmarkLimit;
  if (bookmarkLimit + 1 < HIDWORD(v116))
  {
    v52 = bookmarkLimit + 1;
  }

  else
  {
    v52 = HIDWORD(v116);
  }

  v53 = v115;
  *buf = compareCompletionMatches;
  if (v52)
  {
    v53 = std::__partial_sort_impl[abi:sn200100]<std::_ClassicAlgPolicy,BOOL (*&)(WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>> const&),WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*,WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>*>(v115, &v115[v52], &v115[HIDWORD(v116)], buf);
  }

  v54 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v53, v49);
  v55 = os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG);
  if (v55)
  {
    if (HIDWORD(v118))
    {
      v57 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v55, v56);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase _getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:];
      }

      logMatches(&v117);
    }

    if (HIDWORD(v116))
    {
      v58 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v55, v56);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        [WBSURLCompletionDatabase _getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:];
      }

      logMatches(&v115);
    }
  }

  if (hits)
  {
    v59 = stringCopy;
    v60 = parametersCopy;
    if (v59[8])
    {
      firstTopHitCandidate(&v117, v59, v60);
      v62 = v61;
      firstTopHitCandidate(&v115, v59, v60);
      v64 = v63;
      v66 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v63, v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
      {
        logCompletionMatchToDebugChannel(&cfstr_HistorymatchCa.isa, v62);
        logCompletionMatchToDebugChannel(&cfstr_BookmarkmatchC.isa, v64);
      }

      if (v62)
      {
        if (v64)
        {
          ++*v62;
          ++*v64;
          if (SafariShared::BookmarkAndHistoryCompletionMatch::compare(v62, v64) >= 0)
          {
            v67 = v64;
          }

          else
          {
            v67 = v62;
          }

          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v64);
          WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v62);
          v64 = v67;
        }

        else
        {
          v64 = v62;
        }
      }
    }

    else
    {
      v64 = 0;
    }

    *buf = v64;
    v114 = 0;
    v68 = objc_opt_class();
    v69 = *buf;
    if (*buf)
    {
      ++**buf;
    }

    v112 = v69;
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    v71 = WeakRetained;
    if (v68)
    {
      objc_msgSend__topHitFromBaseURLMatchForTopHitFromMatches_shouldReplaceTopHitFromMatches_historyMatches_bookmarkMatches_typedString_searchParameters_timeNow_completionDataSource_(v68, Current, WeakRetained);
    }

    else
    {
      v113 = 0;
    }

    v73 = v112;
    v112 = 0;
    if (v73)
    {
      WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v73);
    }

    if (v113)
    {
      v111 = v113;
      logCompletionMatchToDebugChannel(&cfstr_BaseurlTophit.isa, v113);
      if (v114 == 1)
      {
        *buf = 0;
      }
    }

    else
    {
      v111 = 0;
    }

    WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(hits, 0, v72);
    v74 = v111;
    if (v111)
    {
      v75 = *(hits + 3);
      if (v75 == *(hits + 2))
      {
        WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,SafariShared::BookmarkAndHistoryCompletionMatch*&>(hits, &v111);
      }

      else
      {
        v76 = *hits;
        ++*v111;
        *(v76 + 8 * v75) = v74;
        *(hits + 3) = v75 + 1;
      }
    }

    v77 = *buf;
    if (*buf)
    {
      v78 = *(hits + 3);
      if (v78 == *(hits + 2))
      {
        WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,SafariShared::BookmarkAndHistoryCompletionMatch*&>(hits, buf);
      }

      else
      {
        v79 = *hits;
        ++**buf;
        *(v79 + 8 * v78) = v77;
        *(hits + 3) = v78 + 1;
      }
    }

    if (*(hits + 3))
    {
      v80 = 0;
      while (1)
      {
        v81 = SafariShared::BookmarkAndHistoryCompletionMatch::data(*(*hits + 8 * v80));
        containsBookmark3 = [v81 containsBookmark];

        v83 = *(hits + 3);
        if (v80 >= v83)
        {
          break;
        }

        if (containsBookmark3)
        {
          v84 = &v115;
        }

        else
        {
          v84 = &v117;
        }

        v85 = *(v84 + 3);
        if (v85)
        {
          v86 = *v84;
          v87 = *(*hits + 8 * v80);
          v88 = **v84;
          if (v88 == v87)
          {
            v89 = 0;
LABEL_96:
            v90 = &v86[v89];
            *v90 = 0;
            if (v87)
            {
              WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v88);
              v85 = *(v84 + 3);
            }

            memmove(v90, v90 + 1, &(*v84)[v85] - (v90 + 1));
            --*(v84 + 3);
            v83 = *(hits + 3);
          }

          else
          {
            v89 = 0;
            while (v85 - 1 != v89)
            {
              v88 = v86[++v89];
              if (v88 == v87)
              {
                goto LABEL_96;
              }
            }
          }
        }

        if (++v80 >= v83)
        {
          goto LABEL_100;
        }
      }

      __break(0xC471u);
LABEL_126:
      JUMPOUT(0x1BB87098CLL);
    }

LABEL_100:
    v55 = v113;
    v113 = 0;
    if (v55)
    {
      v55 = WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v55);
    }
  }

  if (HIDWORD(v118) >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = HIDWORD(v118);
  }

  if (HIDWORD(v118) > limit)
  {
    v92 = &v117[limitCopy];
    v93 = 8 * HIDWORD(v118) - 8 * limitCopy;
    do
    {
      v55 = *v92;
      *v92 = 0;
      if (v55)
      {
        v55 = WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v55);
      }

      ++v92;
      v93 -= 8;
    }

    while (v93);
  }

  HIDWORD(v118) = limitCopy;
  v94 = v115;
  if (HIDWORD(v116) < bookmarkLimit)
  {
    bookmarkLimitCopy = HIDWORD(v116);
  }

  if (HIDWORD(v116) > bookmarkLimit)
  {
    v95 = &v115[bookmarkLimitCopy];
    v96 = 8 * HIDWORD(v116) - 8 * bookmarkLimitCopy;
    do
    {
      v55 = *v95;
      *v95 = 0;
      if (v55)
      {
        v55 = WTF::RefCounted<SafariShared::BookmarkAndHistoryCompletionMatch>::deref(v55);
      }

      ++v95;
      v96 -= 8;
    }

    while (v96);
    LODWORD(limitCopy) = HIDWORD(v118);
    v94 = v115;
  }

  v97 = *matches;
  *matches = v117;
  v117 = v97;
  v98 = *(matches + 1);
  *(matches + 2) = v118;
  *(matches + 3) = limitCopy;
  v118 = v98;
  v99 = *bookmarkMatches;
  *bookmarkMatches = v94;
  v115 = v99;
  v100 = *(bookmarkMatches + 1);
  *(bookmarkMatches + 2) = v116;
  *(bookmarkMatches + 3) = bookmarkLimitCopy;
  v116 = v100;
  v101 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v55, v56);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEBUG))
  {
    v102 = CFAbsoluteTimeGetCurrent();
    v103 = *(matches + 3);
    v104 = *(bookmarkMatches + 3);
    *buf = 134218496;
    *&buf[4] = (v102 - Current) * 1000.0;
    v120 = 1024;
    *v121 = v103;
    *&v121[4] = 1024;
    *&v121[6] = v104;
    _os_log_debug_impl(&dword_1BB6F3000, v101, OS_LOG_TYPE_DEBUG, "Final sorted auto-complete query took %.3f milliseconds, found %d history matches, %d bookmark matches", buf, 0x18u);
  }

  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v115);
  WTF::Vector<WTF::RefPtr<SafariShared::BookmarkAndHistoryCompletionMatch,WTF::RawPtrTraits<SafariShared::BookmarkAndHistoryCompletionMatch>,WTF::DefaultRefDerefTraits<SafariShared::BookmarkAndHistoryCompletionMatch>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v117);
}

- (void)_getUnsortedFullTextMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier historyMatches:(void *)matches bookmarkMatches:(void *)bookmarkMatches dataTypes:(unsigned int)types
{
  stringCopy = string;
  identifierCopy = identifier;
  if ((types & 3) != 0)
  {
    v37 = self->_fullTextHistoryMatchesCacheString;
    m_buffer = 0;
    v52 = 0;
    if (types)
    {
      m_buffer = self->_fullTextHistoryMatchesCache.m_buffer;
      v52 = *&self->_fullTextHistoryMatchesCache.var0;
      self->_fullTextHistoryMatchesCache.m_buffer = 0;
      *&self->_fullTextHistoryMatchesCache.var0 = 0;
      v13 = [stringCopy[1] copy];
      fullTextHistoryMatchesCacheString = self->_fullTextHistoryMatchesCacheString;
      self->_fullTextHistoryMatchesCacheString = v13;
    }

    v15 = self->_fullTextBookmarkMatchesCacheString;
    v49 = 0;
    v50 = 0;
    v36 = v15;
    if ((types & 2) != 0)
    {
      v49 = self->_fullTextBookmarkMatchesCache.m_buffer;
      v50 = *&self->_fullTextBookmarkMatchesCache.var0;
      self->_fullTextBookmarkMatchesCache.m_buffer = 0;
      *&self->_fullTextBookmarkMatchesCache.var0 = 0;
      v16 = [stringCopy[1] copy];
      fullTextBookmarkMatchesCacheString = self->_fullTextBookmarkMatchesCacheString;
      self->_fullTextBookmarkMatchesCacheString = v16;
    }

    Current = CFAbsoluteTimeGetCurrent();
    v19 = [stringCopy[1] safari_hasPrefix:v15];
    v20 = [(NSString *)self->_fullTextHistoryMatchesCacheStringProfileIdentifier isEqualToString:identifierCopy];
    if (v20)
    {
      v20 = [stringCopy[1] safari_hasPrefix:v37];
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    if ((v19 & ((types & 2) >> 1)) == 1)
    {
      v23 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v20, v21);
      v20 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
      }

      if (HIDWORD(v50))
      {
        v24 = 0;
        do
        {
          v20 = recordItemIfFullTextMatch(v49[v24++], stringCopy, bookmarkMatches, &self->_fullTextBookmarkMatchesCache, Current);
        }

        while (v24 < HIDWORD(v50));
      }
    }

    if (types & v22)
    {
      v25 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v20, v21);
      v20 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
      }

      if (HIDWORD(v52))
      {
        v26 = 0;
        do
        {
          v20 = recordItemIfFullTextMatch(m_buffer[v26++], stringCopy, matches, &self->_fullTextHistoryMatchesCache, Current);
        }

        while (v26 < HIDWORD(v52));
      }
    }

    v27 = (v19 ^ 1) & ((types & 2) >> 1);
    v28 = types & (v22 ^ 1);
    if (v27 & 1) != 0 || (v28)
    {
      if (v27)
      {
        v29 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v20, v21);
        v20 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
        if (v20)
        {
          [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
        }
      }

      v30 = v28 & 1;
      if (v28)
      {
        v31 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v20, v21);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [WBSURLCompletionDatabase _getUnsortedFullTextMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:dataTypes:];
        }
      }

      objc_storeStrong(&self->_fullTextHistoryMatchesCacheStringProfileIdentifier, identifier);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __147__WBSURLCompletionDatabase__getUnsortedFullTextMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches_dataTypes___block_invoke;
      v47[3] = &unk_1E7FCB208;
      v34 = dictionary;
      v48 = v34;
      [WeakRetained enumerateMatchDataForTypedStringHint:stringCopy filterResultsUsingProfileIdentifier:identifierCopy options:2 withBlock:v47];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __147__WBSURLCompletionDatabase__getUnsortedFullTextMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches_dataTypes___block_invoke_2;
      v39[3] = &unk_1E7FCB230;
      v45 = v30;
      selfCopy = self;
      matchesCopy = matches;
      v40 = stringCopy;
      v43 = Current;
      v46 = v27;
      bookmarkMatchesCopy = bookmarkMatches;
      [v34 enumerateKeysAndObjectsUsingBlock:v39];
    }

    WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v49, v21);

    WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&m_buffer, v35);
  }
}

void __147__WBSURLCompletionDatabase__getUnsortedFullTextMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches_dataTypes___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 containsBookmark])
  {
    if (*(a1 + 73) != 1)
    {
      goto LABEL_7;
    }

    v4 = 8;
    v5 = 64;
  }

  else
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_7;
    }

    v4 = 24;
    v5 = 48;
  }

  recordItemIfFullTextMatch(v6, *(a1 + 32), *(a1 + v5), (*(a1 + 40) + v4), *(a1 + 56));
LABEL_7:
}

- (void)_getUnsortedPrefixMatchesForTypedString:(id)string filterResultsUsingProfileIdentifier:(id)identifier historyMatches:(void *)matches bookmarkMatches:(void *)bookmarkMatches
{
  stringCopy = string;
  identifierCopy = identifier;
  v34 = self->_prefixHistoryMatchesCacheString;
  prefixHistoryMatchesCache = self->_prefixHistoryMatchesCache;
  self->_prefixHistoryMatchesCache.m_buffer = 0;
  *&self->_prefixHistoryMatchesCache.var0 = 0;
  v11 = [stringCopy[1] copy];
  prefixHistoryMatchesCacheString = self->_prefixHistoryMatchesCacheString;
  self->_prefixHistoryMatchesCacheString = v11;

  v13 = self->_prefixBookmarkMatchesCacheString;
  prefixBookmarkMatchesCache = self->_prefixBookmarkMatchesCache;
  self->_prefixBookmarkMatchesCache.m_buffer = 0;
  *&self->_prefixBookmarkMatchesCache.var0 = 0;
  v33 = v13;
  v14 = [stringCopy[1] copy];
  prefixBookmarkMatchesCacheString = self->_prefixBookmarkMatchesCacheString;
  self->_prefixBookmarkMatchesCacheString = v14;

  Current = CFAbsoluteTimeGetCurrent();
  v17 = [stringCopy[1] safari_hasPrefix:v13];
  v18 = [(NSString *)self->_prefixHistoryMatchesCacheProfileIdentifier isEqualToString:identifierCopy];
  if (v18)
  {
    v18 = [stringCopy[1] safari_hasPrefix:v34];
    v20 = v18;
    if ((v17 & 1) == 0)
    {
      if (v18)
      {
        goto LABEL_16;
      }

LABEL_14:
      v23 = 1;
      v24 = 1;
      goto LABEL_23;
    }
  }

  else
  {
    v20 = 0;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  v21 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v18, v19);
  v18 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
  if (v18)
  {
    [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
  }

  if (prefixBookmarkMatchesCache.m_size)
  {
    v22 = 0;
    do
    {
      v18 = recordItemIfPrefixMatch(prefixBookmarkMatchesCache.m_buffer[v22++], stringCopy, bookmarkMatches, &self->_prefixBookmarkMatchesCache, Current);
    }

    while (v22 < prefixBookmarkMatchesCache.m_size);
    if ((v20 & 1) == 0)
    {
      v23 = v17 ^ 1;
      v24 = 1;
      if (v17)
      {
        goto LABEL_27;
      }

      v20 = 0;
      goto LABEL_23;
    }
  }

  else if ((v20 & 1) == 0)
  {
    v23 = 0;
    v24 = 1;
    goto LABEL_27;
  }

LABEL_16:
  v25 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v18, v19);
  v18 = os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG);
  if (v18)
  {
    [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
  }

  if (prefixHistoryMatchesCache.m_size)
  {
    v26 = 0;
    do
    {
      v18 = recordItemIfPrefixMatch(prefixHistoryMatchesCache.m_buffer[v26++], stringCopy, matches, &self->_prefixHistoryMatchesCache, Current);
    }

    while (v26 < prefixHistoryMatchesCache.m_size);
  }

  if ((v17 & 1) == 0)
  {
    v24 = 0;
    v20 = 1;
    v23 = 1;
LABEL_23:
    v27 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v18, v19);
    v18 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
    if (v18)
    {
      [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
      if (v20)
      {
        goto LABEL_29;
      }
    }

    else if (v20)
    {
LABEL_29:
      objc_storeStrong(&self->_prefixHistoryMatchesCacheProfileIdentifier, identifier);
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      WeakRetained = objc_loadWeakRetained(&self->_dataSource);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __135__WBSURLCompletionDatabase__getUnsortedPrefixMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches___block_invoke;
      v44[3] = &unk_1E7FCB208;
      v31 = dictionary;
      v45 = v31;
      [WeakRetained enumerateMatchDataForTypedStringHint:stringCopy filterResultsUsingProfileIdentifier:identifierCopy options:1 withBlock:v44];
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __135__WBSURLCompletionDatabase__getUnsortedPrefixMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches___block_invoke_2;
      v36[3] = &unk_1E7FCB230;
      v42 = v24;
      selfCopy = self;
      matchesCopy = matches;
      v37 = stringCopy;
      v40 = Current;
      v43 = v23;
      bookmarkMatchesCopy = bookmarkMatches;
      [v31 enumerateKeysAndObjectsUsingBlock:v36];

      goto LABEL_30;
    }

LABEL_27:
    v28 = WBS_LOG_CHANNEL_PREFIXURLAutocomplete(v18, v19);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [WBSURLCompletionDatabase _getUnsortedPrefixMatchesForTypedString:filterResultsUsingProfileIdentifier:historyMatches:bookmarkMatches:];
    }

    goto LABEL_29;
  }

LABEL_30:
  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&prefixBookmarkMatchesCache, v19);

  WTF::Vector<NSString const* {__strong},0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&prefixHistoryMatchesCache, v32);
}

void __135__WBSURLCompletionDatabase__getUnsortedPrefixMatchesForTypedString_filterResultsUsingProfileIdentifier_historyMatches_bookmarkMatches___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 containsBookmark])
  {
    if (*(a1 + 73) != 1)
    {
      goto LABEL_7;
    }

    v4 = 40;
    v5 = 64;
  }

  else
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      goto LABEL_7;
    }

    v4 = 56;
    v5 = 48;
  }

  recordItemIfPrefixMatch(v6, *(a1 + 32), *(a1 + v5), (*(a1 + 40) + v4), *(a1 + 56));
LABEL_7:
}

- (WBSURLCompletionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:.cold.1()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)getBestMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:matches:limit:forQueryID:withSearchParameters:.cold.2()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)_topHitFromBaseURLMatchForTopHitFromMatches:(os_log_t)log shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Found redirection result of baseURL in History matches.", buf, 2u);
}

+ (void)_topHitFromBaseURLMatchForTopHitFromMatches:(os_log_t)log shouldReplaceTopHitFromMatches:historyMatches:bookmarkMatches:typedString:searchParameters:timeNow:completionDataSource:.cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 141558275;
  *(buf + 4) = 1752392040;
  *(buf + 6) = 2117;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Best match in URL autocomplete list is not a URL: %{sensitive, mask.hash}@", buf, 0x16u);
}

- (void)_removeMatchesWithTitlesThatLookLikeURLsRemovedFromMatches:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138739971;
  *a3 = a1;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Excluding title match that looks like a URL: %{sensitive}@:", buf, 0xCu);
}

- (void)_getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:.cold.1()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_getSortedMatchesForTypedString:filterResultsUsingProfileIdentifier:topHits:historyMatches:historyLimit:bookmarkMatches:bookmarkLimit:searchParameters:prefixMatchesOnly:.cold.2()
{
  OUTLINED_FUNCTION_7_2();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end