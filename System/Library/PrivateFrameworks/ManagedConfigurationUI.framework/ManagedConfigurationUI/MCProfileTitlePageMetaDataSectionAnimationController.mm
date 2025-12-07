@interface MCProfileTitlePageMetaDataSectionAnimationController
- (BOOL)_putBackViewIfNeeded:(id)needed toView:(id)view;
- (BOOL)_relocateViewIfNeeded:(id)needed fromView:(id)view toView:(id)toView;
- (CGRect)iconViewOriginFrame;
- (CGRect)titleLabelOriginFrame;
- (MCProfileTitlePageMetaDataSectionController)sectionController;
- (UITableView)tableView;
- (UIView)iconView;
- (UIView)orgView;
- (UIView)subtitleView;
- (UIView)titleView;
- (UIView)topBar;
- (double)_alphaWithProgress:(double)progress keys:(id)keys values:(id)values;
- (unint64_t)_binarySearch:(id)search target:(double)target;
- (void)_animateView:(id)view progress:(double)progress startFrame:(CGRect)frame endY:(double)y endScale:(double)scale extraYOffset:(double)offset;
- (void)startTrackingWithMetaDataSectionController:(id)controller topBar:(id)bar;
- (void)updateProgressWithTranslationDistance:(double)distance referenceDistance:(double)referenceDistance isScrolling:(BOOL)scrolling;
@end

@implementation MCProfileTitlePageMetaDataSectionAnimationController

- (void)startTrackingWithMetaDataSectionController:(id)controller topBar:(id)bar
{
  barCopy = bar;
  controllerCopy = controller;
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setSectionController:controllerCopy];
  titleCell = [controllerCopy titleCell];
  titleLabel = [titleCell titleLabel];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTitleView:titleLabel];

  subtitleCell = [controllerCopy subtitleCell];
  titleLabel2 = [subtitleCell titleLabel];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setSubtitleView:titleLabel2];

  iconCell = [controllerCopy iconCell];
  iconImageView = [iconCell iconImageView];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setIconView:iconImageView];

  orgCell = [controllerCopy orgCell];
  contentView = [orgCell contentView];
  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setOrgView:contentView];

  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTopBar:barCopy];
  tableView = [controllerCopy tableView];

  [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTableView:tableView];
}

- (void)updateProgressWithTranslationDistance:(double)distance referenceDistance:(double)referenceDistance isScrolling:(BOOL)scrolling
{
  scrollingCopy = scrolling;
  titleView = [(MCProfileTitlePageMetaDataSectionAnimationController *)self titleView];
  iconView = [(MCProfileTitlePageMetaDataSectionAnimationController *)self iconView];
  subtitleView = [(MCProfileTitlePageMetaDataSectionAnimationController *)self subtitleView];
  orgView = [(MCProfileTitlePageMetaDataSectionAnimationController *)self orgView];
  if (distance != 0.0 || scrollingCopy)
  {
    referenceDistanceCopy = referenceDistance;
    v24 = distance / referenceDistance;
    v25 = 1.0;
    if (distance / referenceDistance <= 1.0)
    {
      v25 = distance / referenceDistance;
    }

    v26 = fmax(v25, 0.0);
    sectionController = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
    titleCell = [sectionController titleCell];
    contentView = [titleCell contentView];
    topBar = [(MCProfileTitlePageMetaDataSectionAnimationController *)self topBar];
    v31 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self _relocateViewIfNeeded:titleView fromView:contentView toView:topBar];

    if (v31)
    {
      [titleView frame];
      [(MCProfileTitlePageMetaDataSectionAnimationController *)self setTitleLabelOriginFrame:?];
    }

    else
    {
      [(MCProfileTitlePageMetaDataSectionAnimationController *)self titleLabelOriginFrame];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      topBar2 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self topBar];
      [topBar2 frame];
      MidY = CGRectGetMidY(v70);
      if (v24 >= 0.0)
      {
        distanceCopy = 0.0;
      }

      else
      {
        distanceCopy = distance;
      }

      [(MCProfileTitlePageMetaDataSectionAnimationController *)self _animateView:titleView progress:v26 startFrame:v33 endY:v35 endScale:v37 extraYOffset:v39, MidY, 0.6, distanceCopy];
    }

    v43 = fmax(distance, 0.0);
    sectionController2 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
    iconCell = [sectionController2 iconCell];
    contentView2 = [iconCell contentView];
    topBar3 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self topBar];
    v48 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self _relocateViewIfNeeded:iconView fromView:contentView2 toView:topBar3];

    if (v48)
    {
      [iconView frame];
      [(MCProfileTitlePageMetaDataSectionAnimationController *)self setIconViewOriginFrame:?];
    }

    else
    {
      [(MCProfileTitlePageMetaDataSectionAnimationController *)self iconViewOriginFrame];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;
      topBar4 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self topBar];
      [topBar4 frame];
      MinY = CGRectGetMinY(v71);
      if (v24 >= 0.0)
      {
        distanceCopy2 = 0.0;
      }

      else
      {
        distanceCopy2 = distance;
      }

      [(MCProfileTitlePageMetaDataSectionAnimationController *)self _animateView:iconView progress:v26 startFrame:v50 endY:v52 endScale:v54 extraYOffset:v56, MinY, 1.0, distanceCopy2];
    }

    sectionController3 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
    subtitleCell = [sectionController3 subtitleCell];
    [subtitleCell updateProgressWithTranslationDistance:scrollingCopy referenceDistance:v43 isScrolling:v67];

    sectionController4 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
    orgCell = [sectionController4 orgCell];
    [orgCell updateProgressWithTranslationDistance:scrollingCopy referenceDistance:v43 isScrolling:v67];

    if (updateProgressWithTranslationDistance_referenceDistance_isScrolling__onceToken != -1)
    {
      [MCProfileTitlePageMetaDataSectionAnimationController updateProgressWithTranslationDistance:referenceDistance:isScrolling:];
    }

    [(MCProfileTitlePageMetaDataSectionAnimationController *)self _alphaWithProgress:updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaKeyArray keys:updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaValueArray values:v26];
    [iconView setAlpha:?];
    [(MCProfileTitlePageMetaDataSectionAnimationController *)self _alphaWithProgress:updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaKeyArray keys:updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaValueArray values:v26];
    [subtitleView setAlpha:?];
    [(MCProfileTitlePageMetaDataSectionAnimationController *)self _alphaWithProgress:updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaKeyArray keys:updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaValueArray values:v26];
    [orgView setAlpha:?];
    topBar5 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self topBar];
    backgroundColor = [topBar5 backgroundColor];
    [(MCProfileTitlePageMetaDataSectionAnimationController *)self _alphaWithProgress:updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaKeyArray keys:updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaValueArray values:v26];
    sectionController8 = [backgroundColor colorWithAlphaComponent:?];

    topBar6 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self topBar];
    [topBar6 setBackgroundColor:sectionController8];
    goto LABEL_24;
  }

  sectionController5 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
  iconCell2 = [sectionController5 iconCell];
  contentView3 = [iconCell2 contentView];
  v15 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self _putBackViewIfNeeded:iconView toView:contentView3];

  if (v15)
  {
    sectionController6 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
    iconCell3 = [sectionController6 iconCell];
    [iconCell3 setNeedsLayout];
  }

  sectionController7 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
  titleCell2 = [sectionController7 titleCell];
  contentView4 = [titleCell2 contentView];
  v21 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self _putBackViewIfNeeded:titleView toView:contentView4];

  if (v21)
  {
    sectionController8 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self sectionController];
    topBar6 = [sectionController8 titleCell];
    [topBar6 setNeedsLayout];
LABEL_24:
  }
}

void __124__MCProfileTitlePageMetaDataSectionAnimationController_updateProgressWithTranslationDistance_referenceDistance_isScrolling___block_invoke()
{
  v0 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaKeyArray = &unk_28694CAA0;

  v1 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__iconViewAlphaValueArray = &unk_28694CAB8;

  v2 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaKeyArray = &unk_28694CAD0;

  v3 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__subtitleViewAlphaValueArray = &unk_28694CAE8;

  v4 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaKeyArray = &unk_28694CB00;

  v5 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__orgViewAlphaValueArray = &unk_28694CB18;

  v6 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaKeyArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaKeyArray = &unk_28694CB30;

  v7 = updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaValueArray;
  updateProgressWithTranslationDistance_referenceDistance_isScrolling__topBarAlphaValueArray = &unk_28694CB48;
}

- (BOOL)_putBackViewIfNeeded:(id)needed toView:(id)view
{
  neededCopy = needed;
  viewCopy = view;
  superview = [neededCopy superview];

  if (superview != viewCopy)
  {
    [neededCopy removeFromSuperview];
    [viewCopy addSubview:neededCopy];
  }

  return superview != viewCopy;
}

- (BOOL)_relocateViewIfNeeded:(id)needed fromView:(id)view toView:(id)toView
{
  neededCopy = needed;
  viewCopy = view;
  toViewCopy = toView;
  superview = [neededCopy superview];

  if (superview == viewCopy)
  {
    [neededCopy frame];
    [viewCopy convertRect:toViewCopy toView:?];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [neededCopy removeFromSuperview];
    [toViewCopy addSubview:neededCopy];
    [neededCopy setFrame:{v12, v14, v16, v18}];
  }

  return superview == viewCopy;
}

- (void)_animateView:(id)view progress:(double)progress startFrame:(CGRect)frame endY:(double)y endScale:(double)scale extraYOffset:(double)offset
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v17 = (CGRectGetMidY(v20) - y) * progress;
  CGAffineTransformMakeScale(&v19, 1.0 - (1.0 - scale) * progress, 1.0 - (1.0 - scale) * progress);
  v18 = v19;
  [viewCopy setTransform:&v18];
  [viewCopy setFrame:{x, y - (v17 + offset), width, height}];
}

- (double)_alphaWithProgress:(double)progress keys:(id)keys values:(id)values
{
  keysCopy = keys;
  valuesCopy = values;
  if ([keysCopy count] == 2)
  {
    v10 = 0;
    v11 = 1;
  }

  else
  {
    v10 = [(MCProfileTitlePageMetaDataSectionAnimationController *)self _binarySearch:keysCopy target:progress];
    if (v10 == [keysCopy count] - 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 1;
    }
  }

  v12 = [keysCopy objectAtIndexedSubscript:v10];
  [v12 floatValue];
  v14 = v13;

  v15 = [keysCopy objectAtIndexedSubscript:v11];
  [v15 floatValue];
  v17 = v16;

  v18 = [valuesCopy objectAtIndexedSubscript:v10];
  [v18 floatValue];
  v20 = v19;
  v21 = v19;

  v22 = [valuesCopy objectAtIndexedSubscript:v11];

  [v22 floatValue];
  v24 = v23;

  if (v20 != v24)
  {
    v21 = v21 + (v24 - v21) * ((progress - v14) / (v17 - v14));
  }

  return v21;
}

- (unint64_t)_binarySearch:(id)search target:(double)target
{
  searchCopy = search;
  v6 = [searchCopy count] - 1;
  if (v6 < 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = [searchCopy objectAtIndexedSubscript:v7 + ((v6 - v7) >> 1)];
      [v8 floatValue];
      v10 = v9;

      if (v10 <= target)
      {
        v7 += (v6 - v7) >> 1;
      }

      else
      {
        v6 = v7 + ((v6 - v7) >> 1);
      }
    }

    while (v7 + 1 < v6);
  }

  v11 = [searchCopy objectAtIndexedSubscript:v6];
  [v11 floatValue];
  v13 = v12;

  if (v13 > target)
  {
    v6 = v7;
  }

  return v6;
}

- (MCProfileTitlePageMetaDataSectionController)sectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_sectionController);

  return WeakRetained;
}

- (UIView)iconView
{
  WeakRetained = objc_loadWeakRetained(&self->_iconView);

  return WeakRetained;
}

- (UIView)titleView
{
  WeakRetained = objc_loadWeakRetained(&self->_titleView);

  return WeakRetained;
}

- (UIView)subtitleView
{
  WeakRetained = objc_loadWeakRetained(&self->_subtitleView);

  return WeakRetained;
}

- (UIView)orgView
{
  WeakRetained = objc_loadWeakRetained(&self->_orgView);

  return WeakRetained;
}

- (UIView)topBar
{
  WeakRetained = objc_loadWeakRetained(&self->_topBar);

  return WeakRetained;
}

- (UITableView)tableView
{
  WeakRetained = objc_loadWeakRetained(&self->_tableView);

  return WeakRetained;
}

- (CGRect)iconViewOriginFrame
{
  x = self->_iconViewOriginFrame.origin.x;
  y = self->_iconViewOriginFrame.origin.y;
  width = self->_iconViewOriginFrame.size.width;
  height = self->_iconViewOriginFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)titleLabelOriginFrame
{
  x = self->_titleLabelOriginFrame.origin.x;
  y = self->_titleLabelOriginFrame.origin.y;
  width = self->_titleLabelOriginFrame.size.width;
  height = self->_titleLabelOriginFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end