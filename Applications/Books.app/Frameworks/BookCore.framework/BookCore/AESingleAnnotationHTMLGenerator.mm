@interface AESingleAnnotationHTMLGenerator
- (AEAnnotationPaginationDataSource)paginationDataSource;
- (id)annotation;
- (id)chapterTitle;
- (id)documentString;
- (id)excerpt;
@end

@implementation AESingleAnnotationHTMLGenerator

- (id)documentString
{
  styleSection = [(AEAssetHTMLGenerator *)self styleSection];
  v4 = IMCommonCoreBundle(styleSection);
  v18 = [v4 localizedStringForKey:@"All Excerpts From" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];

  excerpt = [(AESingleAnnotationHTMLGenerator *)self excerpt];
  bookInfoSection = [(AEAssetHTMLGenerator *)self bookInfoSection];
  disclaimerSection = [(AEAssetHTMLGenerator *)self disclaimerSection];
  if (bookInfoSection)
  {
    storeLink = 0;
    v8 = 0;
  }

  else
  {
    v8 = [(AEAssetHTMLGenerator *)self citationIncludingStoreURL:0];
    storeLink = [(AEAssetHTMLGenerator *)self storeLink];
  }

  chapterTitle = [(AESingleAnnotationHTMLGenerator *)self chapterTitle];
  v9 = objc_alloc_init(NSDateFormatter);
  [v9 setDateStyle:3];
  v10 = +[NSDate date];
  v15 = [v9 stringFromDate:v10];

  v11 = [(AEAssetHTMLGenerator *)self templateStringForName:@"AEAnnotationShare"];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%STYLESECTION%% -->" withString:styleSection];
  insertionHeaderSection = [(AEAssetHTMLGenerator *)self insertionHeaderSection];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%INSERTIONHEADER%% -->" withString:insertionHeaderSection];

  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%EXCERPT%% -->" withString:excerpt];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%EXERPTFROM%% -->" withString:v18];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%CITATION%% -->" withString:v8];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%STORELINK%% -->" withString:storeLink];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%BOOKINFO%% -->" withString:bookInfoSection];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%DISCLAIMERSECTION%% -->" withString:disclaimerSection];
  readingDirection = [(AEAssetHTMLGenerator *)self readingDirection];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%READINGDIRECTION%% -->" withString:readingDirection];

  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONDATE%% -->" withString:v15];
  [v11 AEReplaceTemplatePlaceholder:@"<!-- %%ANNOTATIONCHAPTER%% -->" withString:chapterTitle];

  return v11;
}

- (id)annotation
{
  annotations = [(AESingleAnnotationHTMLGenerator *)self annotations];
  lastObject = [annotations lastObject];

  return lastObject;
}

- (id)chapterTitle
{
  annotation = [(AESingleAnnotationHTMLGenerator *)self annotation];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0 || (-[AESingleAnnotationHTMLGenerator annotation](self, "annotation"), v5 = objc_claimAutoreleasedReturnValue(), [v5 chapterTitle], v6 = objc_claimAutoreleasedReturnValue(), v5, !v6))
  {
    paginationDataSource = [(AESingleAnnotationHTMLGenerator *)self paginationDataSource];
    annotation2 = [(AESingleAnnotationHTMLGenerator *)self annotation];
    v6 = [paginationDataSource chapterTitleForAnnotation:annotation2];
  }

  annotation3 = [(AESingleAnnotationHTMLGenerator *)self annotation];
  if (objc_opt_respondsToSelector())
  {
    annotation4 = [(AESingleAnnotationHTMLGenerator *)self annotation];
    physicalPageNumber = [annotation4 physicalPageNumber];
  }

  else
  {
    physicalPageNumber = &stru_2D2930;
  }

  v12 = [(__CFString *)physicalPageNumber length];
  if (v12)
  {
    v13 = IMCommonCoreBundle(v12);
    v14 = [v13 localizedStringForKey:@"p. %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v15 = [NSString stringWithFormat:v14, physicalPageNumber];

    v16 = [v6 stringByAppendingFormat:@", %@", v15];

    v6 = v16;
    physicalPageNumber = v15;
  }

  return v6;
}

- (id)excerpt
{
  annotation = [(AESingleAnnotationHTMLGenerator *)self annotation];
  v4 = [(AEAssetHTMLGenerator *)self characterCountLimitforAnnotation:annotation];
  v5 = [AEAnnotation contextAwareSelectedTextFromAnnotation:annotation];
  v6 = [v5 length];
  if (v4 < v6)
  {
    v7 = IMCommonCoreBundle(v6);
    v8 = [v7 localizedStringForKey:@"[\\U2026]" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
    v9 = [v5 stringByTruncatingToLength:v4 options:3 truncationString:v8];

    v5 = v9;
  }

  im_stringByReplacingNewLinesWithHTMLBreaks = [v5 im_stringByReplacingNewLinesWithHTMLBreaks];

  return im_stringByReplacingNewLinesWithHTMLBreaks;
}

- (AEAnnotationPaginationDataSource)paginationDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_paginationDataSource);

  return WeakRetained;
}

@end