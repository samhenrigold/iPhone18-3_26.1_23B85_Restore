@interface PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator
- (id)_layoutInfoWithDefaultDisappearance:(id)disappearance;
- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type;
@end

@implementation PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator

- (id)_layoutInfoWithDefaultDisappearance:(id)disappearance
{
  disappearanceCopy = disappearance;
  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldSlideAccessory])
  {
    tileKind = [disappearanceCopy tileKind];
    v6 = [tileKind isEqualToString:PUTileKindAccessory];

    if (v6)
    {
      viewModel2 = disappearanceCopy;
      viewModel = [(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self viewModel];
      assetsDataSource = [viewModel assetsDataSource];
      dataSourceIdentifier = [viewModel2 dataSourceIdentifier];
      identifier = [assetsDataSource identifier];
      v12 = [dataSourceIdentifier isEqualToString:identifier];

      if (!v12)
      {
        v61 = 0;
        goto LABEL_20;
      }

      v13 = objc_msgSend_indexPath(viewModel2);
      coordinateSystem = [assetsDataSource assetReferenceAtIndexPath:v13];

      v15 = [viewModel assetViewModelForAssetReference:coordinateSystem];
      [v15 contentOffset];
      v17 = v16;

      [viewModel2 untransformedContentFrame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [viewModel2 size];
      v27 = v26;
      v71.origin.x = v19;
      v71.origin.y = v21;
      v71.size.width = v23;
      v71.size.height = v25;
      v28 = v27 - (v17 + CGRectGetMaxY(v71));
      [viewModel2 minimumVisibleHeight];
      if (v28 >= v29)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      [viewModel2 center];
      v32 = v31;
      v34 = v33 + v30;
      [viewModel2 size];
      v36 = v35;
      v38 = v37;
      if (viewModel2)
      {
        objc_msgSend_transform(viewModel2);
      }

      else
      {
        v68 = 0;
        v69 = 0;
        v67 = 0;
      }

      v60 = [viewModel2 layoutInfoWithCenter:&v67 size:v32 alpha:v34 transform:{v36, v38, 0.0}];
LABEL_19:
      v61 = v60;

LABEL_20:
      if (v61)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldSlideAccessory])
  {
    tileKind2 = [disappearanceCopy tileKind];
    v40 = [tileKind2 isEqualToString:PUTileKindPeople];

    if (v40)
    {
      viewModel2 = [(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self viewModel];
      viewModel = [viewModel2 assetsDataSource];
      dataSourceIdentifier2 = [disappearanceCopy dataSourceIdentifier];
      identifier2 = [viewModel identifier];
      v43 = [dataSourceIdentifier2 isEqualToString:identifier2];

      if (v43)
      {
        v44 = objc_msgSend_indexPath(disappearanceCopy);
        assetsDataSource = [viewModel assetReferenceAtIndexPath:v44];

        v45 = [viewModel2 assetViewModelForAssetReference:assetsDataSource];
        [v45 contentOffset];
        v47 = v46;

        [disappearanceCopy size];
        v49 = v48 - v47;
        [disappearanceCopy center];
        v51 = v50;
        v68 = 0;
        v69 = 0;
        v53 = v52 + v49;
        v67 = 0;
        if (disappearanceCopy)
        {
          objc_msgSend_transform(disappearanceCopy);
        }

        v63[1] = v67;
        v63[2] = v68;
        v63[3] = v69;
        objc_msgSend__adjustDefaultDisappearanceTransform_(self);
        v67 = v64;
        v68 = v65;
        v69 = v66;
        [disappearanceCopy size];
        v55 = v54;
        v57 = v56;
        [disappearanceCopy zPosition];
        v59 = v58;
        coordinateSystem = [disappearanceCopy coordinateSystem];
        v64 = v67;
        v65 = v68;
        v66 = v69;
        v60 = [disappearanceCopy layoutInfoWithCenter:&v64 size:coordinateSystem alpha:v51 transform:v53 zPosition:v55 coordinateSystem:{v57, 0.0, v59}];
        goto LABEL_19;
      }
    }
  }

LABEL_21:
  v63[0].receiver = self;
  v63[0].super_class = PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator;
  v61 = [(objc_super *)v63 _layoutInfoWithDefaultDisappearance:disappearanceCopy];
LABEL_22:

  return v61;
}

- (id)optionsForAnimatingTileController:(id)controller toLayoutInfo:(id)info withAnimationType:(int64_t)type
{
  infoCopy = info;
  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldAnimateContent])
  {
    goto LABEL_2;
  }

  if ([(PUDefaultAccessoryViewVisibilityChangeTileTransitionCoordinator *)self shouldAnimateAccessory])
  {
    tileKind = [infoCopy tileKind];
    if ([tileKind isEqualToString:PUTileKindAccessory])
    {

LABEL_2:
      newTileAnimationOptions = [(PUTileTransitionCoordinator *)self newTileAnimationOptions];
      [newTileAnimationOptions setKind:1001];
      [newTileAnimationOptions setHighFrameRateReason:2228225];
      goto LABEL_8;
    }

    tileKind2 = [infoCopy tileKind];
    v10 = [tileKind2 isEqualToString:PUTileKindPeople];

    if (v10)
    {
      goto LABEL_2;
    }
  }

  newTileAnimationOptions = 0;
LABEL_8:

  return newTileAnimationOptions;
}

@end