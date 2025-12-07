@interface KNImager
- (BOOL)isInfoAKeynoteTemplateObject:(id)object;
- (KNAbstractSlide)slide;
- (KNImager)initWithDocumentRoot:(id)root renderForWideGamut:(BOOL)gamut renderHDRContent:(BOOL)content;
- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)info;
@end

@implementation KNImager

- (KNImager)initWithDocumentRoot:(id)root renderForWideGamut:(BOOL)gamut renderHDRContent:(BOOL)content
{
  v8.receiver = self;
  v8.super_class = KNImager;
  v5 = [(TSDImager *)&v8 initWithDocumentRoot:root renderForWideGamut:gamut renderHDRContent:content];
  v6 = v5;
  if (v5)
  {
    v5->_slideNumber = 0x7FFFFFFFFFFFFFFFLL;
    [(TSDImager *)v5 setShouldShowComments:0];
    [(TSDImager *)v6 setShouldShowTextCommentHighlights:0];
  }

  return v6;
}

- (BOOL)isInfoAKeynoteTemplateObject:(id)object
{
  v3 = [KNAbstractSlide parentSlideForInfo:object];
  isTemplateSlide = [v3 isTemplateSlide];

  return isTemplateSlide;
}

- (id)infoToConnectToForConnectionLineConnectedToInfo:(id)info
{
  infoCopy = info;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v6 = infoCopy;
  v7 = v6;
  if (v5)
  {
    objc_opt_class();
    slide = [(KNImager *)self slide];
    v9 = TSUDynamicCast();

    v10 = [KNSlideNode parentSlideNodeForInfo:v5];
    slide2 = [v10 slide];

    templateSlide = [v9 templateSlide];

    v7 = v6;
    if (slide2 == templateSlide)
    {
      v13 = [v9 infoCorrespondingToTemplateSlideInfo:v6];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v5;
      }

      v7 = v15;
    }

    objc_opt_class();
    slide3 = [(KNImager *)self slide];
    v17 = TSUDynamicCast();

    if (!v17)
    {
      goto LABEL_15;
    }

    titlePlaceholder = [v17 titlePlaceholder];

    if (v5 == titlePlaceholder)
    {
      replacementTitlePlaceholder = [(KNImager *)self replacementTitlePlaceholder];
    }

    else
    {
      bodyPlaceholder = [v17 bodyPlaceholder];

      if (v5 != bodyPlaceholder)
      {
        goto LABEL_13;
      }

      replacementTitlePlaceholder = [(KNImager *)self replacementBodyPlaceholder];
    }

    v21 = replacementTitlePlaceholder;

    v7 = v21;
LABEL_13:
    if (!v7)
    {
      v7 = v5;
    }

LABEL_15:
  }

  return v7;
}

- (KNAbstractSlide)slide
{
  WeakRetained = objc_loadWeakRetained(&self->_slide);

  return WeakRetained;
}

@end