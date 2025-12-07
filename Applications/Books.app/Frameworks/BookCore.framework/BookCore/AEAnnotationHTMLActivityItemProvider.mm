@interface AEAnnotationHTMLActivityItemProvider
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewController:(id)controller subjectForActivityType:(id)type;
- (id)activityViewControllerPlaceholderItem:(id)item;
- (id)annotationHTMLGeneratorAnnotationAtIndex:(unint64_t)index;
- (id)supportedActivityTypes;
- (unint64_t)annotationHTMLGeneratorNumberOfAnnotations;
- (void)populateHTMLGenerator:(id)generator;
@end

@implementation AEAnnotationHTMLActivityItemProvider

- (id)supportedActivityTypes
{
  v4 = UIActivityTypeMail;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  typeCopy = type;
  supportedActivityTypes = [(AEAnnotationHTMLActivityItemProvider *)self supportedActivityTypes];
  v7 = [supportedActivityTypes containsObject:typeCopy];

  if (v7)
  {
    v9 = objc_alloc_init(AESingleAnnotationHTMLGenerator);
    [(AEAnnotationHTMLActivityItemProvider *)self populateHTMLGenerator:v9];
    documentString = [(AESingleAnnotationHTMLGenerator *)v9 documentString];
  }

  else
  {
    v11 = AESharingLog(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = typeCopy;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%@ returning nil for activity:%@", &v15, 0x16u);
    }

    documentString = 0;
  }

  return documentString;
}

- (id)activityViewController:(id)controller subjectForActivityType:(id)type
{
  typeCopy = type;
  supportedActivityTypes = [(AEAnnotationHTMLActivityItemProvider *)self supportedActivityTypes];
  v7 = [supportedActivityTypes containsObject:typeCopy];

  if (v7)
  {
    propertyProvider = [(AEAssetActivityItemProviderSource *)self propertyProvider];
    author = [propertyProvider author];
    v10 = [author length];
    v11 = IMCommonCoreBundle(v10);
    v12 = v11;
    if (v10)
    {
      v13 = [v11 localizedStringForKey:@"Notes from \\U201C%@\\U201D by %@" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      title = [propertyProvider2 title];
      propertyProvider3 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      author2 = [propertyProvider3 author];
      v18 = [NSString stringWithFormat:v13, title, author2];
    }

    else
    {
      v13 = [v11 localizedStringForKey:@"Notes from \\U201C%@\\U201D" value:&stru_2D2930 table:@"BCCommonCoreLocalizable"];
      propertyProvider2 = [(AEAssetActivityItemProviderSource *)self propertyProvider];
      title = [propertyProvider2 title];
      v18 = [NSString stringWithFormat:v13, title];
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)activityViewControllerPlaceholderItem:(id)item
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (unint64_t)annotationHTMLGeneratorNumberOfAnnotations
{
  annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
  v3 = [annotations count];

  return v3;
}

- (id)annotationHTMLGeneratorAnnotationAtIndex:(unint64_t)index
{
  annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
  v5 = [annotations objectAtIndex:index];

  return v5;
}

- (void)populateHTMLGenerator:(id)generator
{
  v8.receiver = self;
  v8.super_class = AEAnnotationHTMLActivityItemProvider;
  generatorCopy = generator;
  [(AEAssetActivityItemProviderSource *)&v8 populateHTMLGenerator:generatorCopy];
  v5 = [(AEAssetActivityItemProviderSource *)self propertyProvider:v8.receiver];
  [generatorCopy setContentProtected:{objc_msgSend(v5, "contentProtected")}];

  [generatorCopy setCitationsAllowed:{-[AEAnnotationActivityItemProviderSource areCitationAllowed](self, "areCitationAllowed")}];
  paginationDataSource = [(AEAnnotationActivityItemProviderSource *)self paginationDataSource];
  [generatorCopy setPaginationDataSource:paginationDataSource];

  [generatorCopy setDataSource:self];
  annotations = [(AEAnnotationActivityItemProviderSource *)self annotations];
  [generatorCopy setAnnotations:annotations];
}

@end