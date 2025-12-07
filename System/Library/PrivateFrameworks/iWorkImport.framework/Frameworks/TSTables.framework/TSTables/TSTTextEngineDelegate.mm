@interface TSTTextEngineDelegate
- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)padding verticalAlignment:(int)alignment locale:(id)locale shouldHyphenate:(BOOL)hyphenate styleProvidingSource:(id)source;
- (TSWPStyleProviding)styleProvidingSource;
@end

@implementation TSTTextEngineDelegate

- (TSTTextEngineDelegate)initWithPadding:(UIEdgeInsets)padding verticalAlignment:(int)alignment locale:(id)locale shouldHyphenate:(BOOL)hyphenate styleProvidingSource:(id)source
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  localeCopy = locale;
  sourceCopy = source;
  v26.receiver = self;
  v26.super_class = TSTTextEngineDelegate;
  v18 = [(TSTTextEngineDelegate *)&v26 init];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277D80EB0]);
    v23 = objc_msgSend_initWithTopInset_leftInset_bottomInset_rightInset_(v19, v20, v21, v22, top, left, bottom, right);
    mPadding = v18->mPadding;
    v18->mPadding = v23;

    v18->mVerticalAlignment = alignment;
    v18->mMaxWidthForChildren = 1.79769313e308;
    objc_storeStrong(&v18->mLocale, locale);
    v18->mShouldHyphenate = hyphenate;
    objc_storeWeak(&v18->mStyleProvidingSource, sourceCopy);
  }

  return v18;
}

- (TSWPStyleProviding)styleProvidingSource
{
  WeakRetained = objc_loadWeakRetained(&self->mStyleProvidingSource);

  return WeakRetained;
}

@end