@interface SBHFakeApplicationPlaceholder
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info;
- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (void)setProgress:(double)progress;
@end

@implementation SBHFakeApplicationPlaceholder

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  sbh_leafIconDataSourceNotificationCenter = [MEMORY[0x1E696AD88] sbh_leafIconDataSourceNotificationCenter];
  [sbh_leafIconDataSourceNotificationCenter postNotificationName:@"SBLeafIconDataSourceProgressDidChangeNotification" object:self];
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = [(SBHFakeApplicationPlaceholder *)self applicationBundleIdentifier:icon];
  v13 = SBHGetApplicationIconImage(v12, 0, v11, v10, v9, v8);

  return v13;
}

- (id)icon:(id)icon imageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  collectionCopy = collection;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  infoCopy = info;
  v17 = SBHIconServicesOptionsForImageOptions(collectionCopy);
  applicationBundleIdentifier = [(SBHFakeApplicationPlaceholder *)self applicationBundleIdentifier];
  v19 = SBHGetApplicationIconImageWithTraitCollection(applicationBundleIdentifier, infoCopy, v17, v14, v13, v12, v11);

  return v19;
}

@end