@interface PXAssetsDataSourceChangeTransitionCoordinator
- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData;
- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (PXAssetsDataSourceChangeTransitionCoordinator)initWithTilingChange:(id)change changeHistory:(id)history;
- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)identifier animationType:(int64_t)type fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData;
- (void)_updateAnimationDelay;
- (void)setDelayInsertions:(BOOL)insertions;
- (void)setTreatRemovalsAsDeletes:(BOOL)deletes;
@end

@implementation PXAssetsDataSourceChangeTransitionCoordinator

- (BOOL)useDoubleSidedAnimationForUpdatedTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  dataCopy = data;
  userDataCopy = userData;
  v77.receiver = self;
  v77.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v14 = *&identifier->index[5];
  v53[2] = *&identifier->index[3];
  v53[3] = v14;
  v53[4] = *&identifier->index[7];
  *&v54 = identifier->index[9];
  v15 = *&identifier->index[1];
  v53[0] = *&identifier->length;
  v53[1] = v15;
  v16 = *&geometry->contentSize.height;
  v73 = *&geometry->hidden;
  v74 = v16;
  v17 = *&geometry->contentsRect.size.height;
  v75 = *&geometry->contentsRect.origin.y;
  v76 = v17;
  v18 = *&geometry->transform.c;
  v69 = *&geometry->transform.a;
  v70 = v18;
  v19 = *&geometry->alpha;
  v71 = *&geometry->transform.tx;
  v72 = v19;
  size = geometry->frame.size;
  v66.origin = geometry->frame.origin;
  v66.size = size;
  v21 = geometry->size;
  center = geometry->center;
  v68 = v21;
  v22 = *&toGeometry->contentSize.height;
  v62 = *&toGeometry->hidden;
  v63 = v22;
  v23 = *&toGeometry->contentsRect.size.height;
  v64 = *&toGeometry->contentsRect.origin.y;
  v65 = v23;
  v24 = *&toGeometry->transform.c;
  v58 = *&toGeometry->transform.a;
  v59 = v24;
  v25 = *&toGeometry->alpha;
  v60 = *&toGeometry->transform.tx;
  v61 = v25;
  v26 = toGeometry->frame.size;
  v55.origin = toGeometry->frame.origin;
  v55.size = v26;
  v27 = toGeometry->size;
  v56 = toGeometry->center;
  v57 = v27;
  v28 = [(PXAssetsTileTransitionCoordinator *)&v77 useDoubleSidedAnimationForUpdatedTileWithIdentifier:v53 fromGeometry:&v66 fromUserData:dataCopy toGeometry:&v55 toUserData:userDataCopy];
  if (identifier->length - 3 <= 2 && identifier->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = identifier->index[0];
    if (v29 == 6332437)
    {
      v28 = geometry->size.height != toGeometry->size.height || geometry->size.width != toGeometry->size.width;
    }

    else if (v29 == 6332435)
    {
      v30 = userDataCopy;
      if (v28)
      {
        v28 = 1;
      }

      else
      {
        badgeOptions = [dataCopy badgeOptions];
        v28 = badgeOptions != [v30 badgeOptions];
      }
    }
  }

  _toLayout = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
  [_toLayout visibleRect];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = +[PXTilingCoordinateSpaceConverter defaultConverter];
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  center = 0u;
  v68 = 0;
  memset(&v66, 0, sizeof(v66));
  [_toLayout coordinateSpaceIdentifier];
  if (v41)
  {
    v42 = *&geometry->contentSize.height;
    v62 = *&geometry->hidden;
    v63 = v42;
    v43 = *&geometry->contentsRect.size.height;
    v64 = *&geometry->contentsRect.origin.y;
    v65 = v43;
    v44 = *&geometry->transform.c;
    v58 = *&geometry->transform.a;
    v59 = v44;
    v45 = *&geometry->alpha;
    v60 = *&geometry->transform.tx;
    v61 = v45;
    v46 = geometry->frame.size;
    v55.origin = geometry->frame.origin;
    v55.size = v46;
    v47 = geometry->size;
    v56 = geometry->center;
    v57 = v47;
    objc_msgSend_convertTileGeometry_toCoordinateSpaceIdentifier_(v41);
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0;
    memset(&v55, 0, sizeof(v55));
    [_toLayout coordinateSpaceIdentifier];
    objc_msgSend_convertTileGeometry_toCoordinateSpaceIdentifier_(v41, *&toGeometry->frame.origin.x, *&toGeometry->frame.origin.y, *&toGeometry->frame.size.width, *&toGeometry->frame.size.height, *&toGeometry->center.x, *&toGeometry->center.y, *&toGeometry->size.width, *&toGeometry->size.height, *&toGeometry->transform.a, *&toGeometry->transform.b, *&toGeometry->transform.c, *&toGeometry->transform.d, *&toGeometry->transform.tx, *&toGeometry->transform.ty, *&toGeometry->alpha, *&toGeometry->zPosition, *&toGeometry->hidden, *&toGeometry->contentSize.width, *&toGeometry->contentSize.height, *&toGeometry->contentsRect.origin.x, *&toGeometry->contentsRect.origin.y, *&toGeometry->contentsRect.size.width, *&toGeometry->contentsRect.size.height, toGeometry->coordinateSpaceIdentifier);
    y = v55.origin.y;
    x = v55.origin.x;
    height = v55.size.height;
    width = v55.size.width;
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    center = 0u;
    v68 = 0;
    memset(&v66, 0, sizeof(v66));
    [_toLayout coordinateSpaceIdentifier];
    memset(&v55, 0, sizeof(v55));
    v56 = 0u;
    v57 = 0;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    height = 0.0;
    width = 0.0;
    y = 0.0;
    v64 = 0u;
    v65 = 0u;
    x = 0.0;
  }

  v78.origin.x = v34;
  v78.origin.y = v36;
  v78.size.width = v38;
  v78.size.height = v40;
  if (CGRectIntersectsRect(v78, *&x) && (v79.origin.x = v34, v79.origin.y = v36, v79.size.width = v38, v79.size.height = v40, !CGRectIntersectsRect(v79, v66)))
  {
    v84.origin.x = v34;
    v84.origin.y = v36;
    v84.size.width = v38;
    v84.size.height = v40;
    v85 = CGRectInset(v84, -(v66.size.width * 0.5 + 500.0), -(v66.size.height * 0.5 + 500.0));
    if (!CGRectContainsPoint(v85, center))
    {
      PXRectClampPoint();
    }
  }

  else
  {
    v80.origin.x = v34;
    v80.origin.y = v36;
    v80.size.width = v38;
    v80.size.height = v40;
    if (CGRectIntersectsRect(v80, v66))
    {
      v81.origin.x = v34;
      v81.origin.y = v36;
      v81.size.width = v38;
      v81.size.height = v40;
      if (!CGRectIntersectsRect(v81, v55))
      {
        v82.origin.x = v34;
        v82.origin.y = v36;
        v82.size.width = v38;
        v82.size.height = v40;
        v83 = CGRectInset(v82, -(v55.size.width * 0.5 + 500.0), -(v55.size.height * 0.5 + 500.0));
        if (!CGRectContainsPoint(v83, v56))
        {
          PXRectClampPoint();
        }
      }
    }
  }

  return v28;
}

- (BOOL)getFinalGeometry:(PXTileGeometry *)geometry finalUserData:(id *)data forDisappearingTileWithIdentifier:(PXTileIdentifier *)identifier fromGeometry:(PXTileGeometry *)fromGeometry fromUserData:(id)userData
{
  userDataCopy = userData;
  if ([(NSMutableDictionary *)self->_overrideFinalGeometryByTileIdentifier count])
  {
    overrideFinalGeometryByTileIdentifier = self->_overrideFinalGeometryByTileIdentifier;
    v13 = *&identifier->index[5];
    center = *&identifier->index[3];
    v75 = v13;
    v76 = *&identifier->index[7];
    *&v77 = identifier->index[9];
    v14 = *&identifier->index[1];
    origin = *&identifier->length;
    v73 = v14;
    v15 = [MEMORY[0x1E696B098] valueWithPXTileIdentifier:&origin];
    v16 = [(NSMutableDictionary *)overrideFinalGeometryByTileIdentifier objectForKeyedSubscript:v15];

    v17 = v16 != 0;
    if (v16)
    {
      objc_msgSend_PXTileGeometryValue(v16);
      v18 = v81;
      *&geometry->hidden = v80;
      *&geometry->contentSize.height = v18;
      v19 = v83;
      *&geometry->contentsRect.origin.y = v82;
      *&geometry->contentsRect.size.height = v19;
      v20 = v77;
      *&geometry->transform.a = v76;
      *&geometry->transform.c = v20;
      v21 = v79;
      *&geometry->transform.tx = v78;
      *&geometry->alpha = v21;
      v22 = v73;
      geometry->frame.origin = origin;
      geometry->frame.size = v22;
      v23 = v75;
      geometry->center = center;
      geometry->size = v23;
    }
  }

  else
  {
    v17 = 0;
  }

  v24 = 0x7FFFFFFFFFFFFFFFLL;
  if (identifier->length - 3 <= 2 && identifier->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = identifier->index[0];
  }

  _kindsCoveringContentTiles = [(PXAssetsTileTransitionCoordinator *)self _kindsCoveringContentTiles];
  v26 = [_kindsCoveringContentTiles containsIndex:v24];

  _kindsCenteredOnContentTiles = [(PXAssetsTileTransitionCoordinator *)self _kindsCenteredOnContentTiles];
  v28 = [_kindsCenteredOnContentTiles containsIndex:v24];

  if ((v26 & 1) == 0 && !v28 || (v62 = *&identifier->index[1], -[PXAssetsTileTransitionCoordinator _toLayout](self, "_toLayout", identifier->index[3], identifier->index[4]), v29 = objc_claimAutoreleasedReturnValue(), [v29 dataSource], v30 = objc_claimAutoreleasedReturnValue(), v63 = data, v31 = objc_msgSend(v30, "identifier"), v30, v29, v32 = v62 == v31, data = v63, !v32))
  {
    if (v17)
    {
LABEL_18:
      v51 = 1;
      v49 = userDataCopy;
      goto LABEL_21;
    }

LABEL_20:
    v65.receiver = self;
    v65.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
    v52 = *&identifier->index[5];
    v68 = *&identifier->index[3];
    v69 = v52;
    v70 = *&identifier->index[7];
    v71 = identifier->index[9];
    v53 = *&identifier->index[1];
    v66 = *&identifier->length;
    v67 = v53;
    v54 = *&fromGeometry->contentSize.height;
    v80 = *&fromGeometry->hidden;
    v81 = v54;
    v55 = *&fromGeometry->contentsRect.size.height;
    v82 = *&fromGeometry->contentsRect.origin.y;
    v83 = v55;
    v56 = *&fromGeometry->transform.c;
    v76 = *&fromGeometry->transform.a;
    v77 = v56;
    v57 = *&fromGeometry->alpha;
    v78 = *&fromGeometry->transform.tx;
    v79 = v57;
    size = fromGeometry->frame.size;
    origin = fromGeometry->frame.origin;
    v73 = size;
    v59 = fromGeometry->size;
    center = fromGeometry->center;
    v75 = v59;
    v49 = userDataCopy;
    v51 = [(PXAssetsTileTransitionCoordinator *)&v65 getFinalGeometry:geometry finalUserData:data forDisappearingTileWithIdentifier:&v66 fromGeometry:&origin fromUserData:userDataCopy];
    goto LABEL_21;
  }

  v33 = *(off_1E7722248 + 9);
  v80 = *(off_1E7722248 + 8);
  v81 = v33;
  v34 = *(off_1E7722248 + 11);
  v82 = *(off_1E7722248 + 10);
  v83 = v34;
  v35 = *(off_1E7722248 + 5);
  v76 = *(off_1E7722248 + 4);
  v77 = v35;
  v36 = *(off_1E7722248 + 7);
  v78 = *(off_1E7722248 + 6);
  v79 = v36;
  v37 = *(off_1E7722248 + 1);
  origin = *off_1E7722248;
  v73 = v37;
  v38 = *(off_1E7722248 + 3);
  center = *(off_1E7722248 + 2);
  v75 = v38;
  _toLayout = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
  v66 = xmmword_1A5380D20;
  v67 = v62;
  v68 = v61;
  v69 = 0u;
  v70 = 0u;
  v71 = 0;
  v40 = [_toLayout getGeometry:&origin group:0 userData:0 forTileWithIdentifier:&v66];

  if (!v40)
  {
    data = v63;
    if (v17)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  *&v79 = 0;
  _toLayout2 = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
  [_toLayout2 zPositionOffsetForKind:v24];
  *(&v79 + 1) = v42 + *(&v79 + 1);

  if (v28)
  {
    v75 = fromGeometry->size;
    PXRectWithCenterAndSize();
  }

  v43 = v81;
  *&geometry->hidden = v80;
  *&geometry->contentSize.height = v43;
  v44 = v83;
  *&geometry->contentsRect.origin.y = v82;
  *&geometry->contentsRect.size.height = v44;
  v45 = v77;
  *&geometry->transform.a = v76;
  *&geometry->transform.c = v45;
  v46 = v79;
  *&geometry->transform.tx = v78;
  *&geometry->alpha = v46;
  v47 = v73;
  geometry->frame.origin = origin;
  geometry->frame.size = v47;
  v48 = v75;
  geometry->center = center;
  geometry->size = v48;
  v49 = userDataCopy;
  v50 = userDataCopy;
  *v63 = userDataCopy;
  v51 = 1;
LABEL_21:

  return v51;
}

- (BOOL)getInitialGeometry:(PXTileGeometry *)geometry initialUserData:(id *)data forAppearingTileWithIdentifier:(PXTileIdentifier *)identifier toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  userDataCopy = userData;
  if ([(NSMutableDictionary *)self->_overrideInitialGeometryByTileIdentifier count])
  {
    overrideInitialGeometryByTileIdentifier = self->_overrideInitialGeometryByTileIdentifier;
    v14 = *&identifier->index[5];
    center = *&identifier->index[3];
    size = v14;
    v72 = *&identifier->index[7];
    *&v73 = identifier->index[9];
    v15 = *&identifier->index[1];
    origin = *&identifier->length;
    v69 = v15;
    v16 = [MEMORY[0x1E696B098] valueWithPXTileIdentifier:&origin];
    v17 = [(NSMutableDictionary *)overrideInitialGeometryByTileIdentifier objectForKeyedSubscript:v16];

    v18 = v17 != 0;
    if (v17)
    {
      objc_msgSend_PXTileGeometryValue(v17);
      v19 = v77;
      *&geometry->hidden = v76;
      *&geometry->contentSize.height = v19;
      v20 = v79;
      *&geometry->contentsRect.origin.y = v78;
      *&geometry->contentsRect.size.height = v20;
      v21 = v73;
      *&geometry->transform.a = v72;
      *&geometry->transform.c = v21;
      v22 = v75;
      *&geometry->transform.tx = v74;
      *&geometry->alpha = v22;
      v23 = v69;
      geometry->frame.origin = origin;
      geometry->frame.size = v23;
      v24 = size;
      geometry->center = center;
      geometry->size = v24;
    }
  }

  else
  {
    v18 = 0;
  }

  v25 = 0x7FFFFFFFFFFFFFFFLL;
  if (identifier->length - 3 <= 2 && identifier->index[1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = identifier->index[0];
  }

  _kindsCoveringContentTiles = [(PXAssetsTileTransitionCoordinator *)self _kindsCoveringContentTiles];
  v27 = [_kindsCoveringContentTiles containsIndex:v25];

  _kindsCenteredOnContentTiles = [(PXAssetsTileTransitionCoordinator *)self _kindsCenteredOnContentTiles];
  v29 = [_kindsCenteredOnContentTiles containsIndex:v25];

  if ((v27 & 1) != 0 || v29)
  {
    memset(v67, 0, sizeof(v67));
    v59 = *&identifier->index[1];
    v30 = [(PXAssetsTileTransitionCoordinator *)self _changeDetails:identifier->index[3]];
    origin = v59;
    v69 = v57;
    objc_msgSend_indexPathAfterRevertingChanges_fromIndexPath_hasIncrementalChanges_objectChanged_(off_1E77218B0);

    if (*off_1E7721F68)
    {
      dataCopy = data;
      v58 = *(v67 + 8);
      v40 = *(&v67[1] + 1);
      v41 = *(off_1E7722248 + 9);
      v76 = *(off_1E7722248 + 8);
      v77 = v41;
      v42 = *(off_1E7722248 + 11);
      v78 = *(off_1E7722248 + 10);
      v79 = v42;
      v43 = *(off_1E7722248 + 5);
      v72 = *(off_1E7722248 + 4);
      v73 = v43;
      v44 = *(off_1E7722248 + 7);
      v74 = *(off_1E7722248 + 6);
      v75 = v44;
      v45 = *(off_1E7722248 + 1);
      origin = *off_1E7722248;
      v69 = v45;
      v46 = *(off_1E7722248 + 3);
      center = *(off_1E7722248 + 2);
      size = v46;
      _fromLayout = [(PXAssetsTileTransitionCoordinator *)self _fromLayout];
      v62 = xmmword_1A5380D20;
      *v63 = 0;
      *&v63[8] = v58;
      *&v63[24] = v40;
      v64 = 0u;
      v65 = 0u;
      v66 = 0;
      v48 = [_fromLayout getGeometry:&origin group:0 userData:0 forTileWithIdentifier:&v62];

      if (v48)
      {
        *&v75 = 0;
        *(&v75 + 1) = *&toGeometry->zPosition;
        if (v29)
        {
          size = toGeometry->size;
          PXRectWithCenterAndSize();
        }

        v49 = v77;
        *&geometry->hidden = v76;
        *&geometry->contentSize.height = v49;
        v50 = v79;
        *&geometry->contentsRect.origin.y = v78;
        *&geometry->contentsRect.size.height = v50;
        v51 = v73;
        *&geometry->transform.a = v72;
        *&geometry->transform.c = v51;
        v52 = v75;
        *&geometry->transform.tx = v74;
        *&geometry->alpha = v52;
        v53 = v69;
        geometry->frame.origin = origin;
        geometry->frame.size = v53;
        v54 = size;
        geometry->center = center;
        geometry->size = v54;
        v55 = userDataCopy;
        *dataCopy = userDataCopy;
      }

      else
      {
        data = dataCopy;
        if (!v18)
        {
          goto LABEL_13;
        }
      }

LABEL_19:
      v39 = 1;
      goto LABEL_20;
    }
  }

  if (v18)
  {
    goto LABEL_19;
  }

LABEL_13:
  v61.receiver = self;
  v61.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v31 = *&identifier->index[5];
  *&v63[16] = *&identifier->index[3];
  v64 = v31;
  v65 = *&identifier->index[7];
  v66 = identifier->index[9];
  v32 = *&identifier->index[1];
  v62 = *&identifier->length;
  *v63 = v32;
  v33 = *&toGeometry->contentSize.height;
  v76 = *&toGeometry->hidden;
  v77 = v33;
  v34 = *&toGeometry->contentsRect.size.height;
  v78 = *&toGeometry->contentsRect.origin.y;
  v79 = v34;
  v35 = *&toGeometry->transform.c;
  v72 = *&toGeometry->transform.a;
  v73 = v35;
  v36 = *&toGeometry->alpha;
  v74 = *&toGeometry->transform.tx;
  v75 = v36;
  v37 = toGeometry->frame.size;
  origin = toGeometry->frame.origin;
  v69 = v37;
  v38 = toGeometry->size;
  center = toGeometry->center;
  size = v38;
  v39 = [(PXAssetsTileTransitionCoordinator *)&v61 getInitialGeometry:geometry initialUserData:data forAppearingTileWithIdentifier:&v62 toGeometry:&origin toUserData:userDataCopy];
LABEL_20:

  return v39;
}

- (id)optionsForAnimatingTileWithIdentifier:(PXTileIdentifier *)identifier animationType:(int64_t)type fromGeometry:(PXTileGeometry *)geometry fromUserData:(id)data toGeometry:(PXTileGeometry *)toGeometry toUserData:(id)userData
{
  v42.receiver = self;
  v42.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v11 = *&identifier->index[5];
  v40[2] = *&identifier->index[3];
  v40[3] = v11;
  v40[4] = *&identifier->index[7];
  v41 = identifier->index[9];
  v12 = *&identifier->index[1];
  v40[0] = *&identifier->length;
  v40[1] = v12;
  v13 = *&geometry->contentSize.height;
  v39[8] = *&geometry->hidden;
  v39[9] = v13;
  v14 = *&geometry->contentsRect.size.height;
  v39[10] = *&geometry->contentsRect.origin.y;
  v39[11] = v14;
  v15 = *&geometry->transform.c;
  v39[4] = *&geometry->transform.a;
  v39[5] = v15;
  v16 = *&geometry->alpha;
  v39[6] = *&geometry->transform.tx;
  v39[7] = v16;
  size = geometry->frame.size;
  v39[0] = geometry->frame.origin;
  v39[1] = size;
  v18 = geometry->size;
  v39[2] = geometry->center;
  v39[3] = v18;
  v19 = *&toGeometry->contentSize.height;
  v38[8] = *&toGeometry->hidden;
  v38[9] = v19;
  v20 = *&toGeometry->contentsRect.size.height;
  v38[10] = *&toGeometry->contentsRect.origin.y;
  v38[11] = v20;
  v21 = *&toGeometry->transform.c;
  v38[4] = *&toGeometry->transform.a;
  v38[5] = v21;
  v22 = *&toGeometry->alpha;
  v38[6] = *&toGeometry->transform.tx;
  v38[7] = v22;
  v23 = toGeometry->frame.size;
  v38[0] = toGeometry->frame.origin;
  v38[1] = v23;
  v24 = toGeometry->size;
  v38[2] = toGeometry->center;
  v38[3] = v24;
  v25 = [(PXAssetsTileTransitionCoordinator *)&v42 optionsForAnimatingTileWithIdentifier:v40 animationType:type fromGeometry:v39 fromUserData:data toGeometry:v38 toUserData:userData];
  if (identifier->length - 3 <= 2)
  {
    v26 = identifier->index[1];
    if (v26 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = identifier->index[2];
      v27 = identifier->index[3];
      v29 = identifier->index[4];
      LOBYTE(v40[0]) = 0;
      if (type == 1)
      {
        _changeDetails = [(PXAssetsTileTransitionCoordinator *)self _changeDetails];
        objc_msgSend_indexPathAfterRevertingChanges_fromIndexPath_hasIncrementalChanges_objectChanged_(off_1E77218B0, v26, v28, v27, v29);

        if (v40[0])
        {
          v34 = &OBJC_IVAR___PXAssetsDataSourceChangeTransitionCoordinator__insertAnimationOptions;
LABEL_9:
          v35 = *(&self->super.super.isa + *v34);
LABEL_16:

          v25 = v35;
          goto LABEL_17;
        }
      }

      else
      {
        if (type != 3)
        {
          goto LABEL_17;
        }

        _toLayout = [(PXAssetsTileTransitionCoordinator *)self _toLayout];
        dataSource = [_toLayout dataSource];
        identifier = [dataSource identifier];

        if (v26 == identifier)
        {
          LOBYTE(v40[0]) = 1;
        }

        else
        {
          _changeDetails2 = [(PXAssetsTileTransitionCoordinator *)self _changeDetails];
          objc_msgSend_indexPathAfterApplyingChanges_toIndexPath_hasIncrementalChanges_objectChanged_(off_1E77218B0, v26, v28, v27, v29);

          if ((v40[0] & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        if (![(PXAssetsTileTransitionCoordinator *)self treatRemovalsAsDeletes])
        {
          goto LABEL_17;
        }

        if (identifier->length == 5 && identifier->index[0] == 6432423)
        {
          v34 = &OBJC_IVAR___PXAssetsDataSourceChangeTransitionCoordinator__deleteAnimationOptions;
          goto LABEL_9;
        }
      }

LABEL_15:
      v35 = 0;
      goto LABEL_16;
    }
  }

LABEL_17:

  return v25;
}

- (void)setDelayInsertions:(BOOL)insertions
{
  insertionsCopy = insertions;
  delayInsertions = [(PXAssetsTileTransitionCoordinator *)self delayInsertions];
  v6.receiver = self;
  v6.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  [(PXAssetsTileTransitionCoordinator *)&v6 setDelayInsertions:insertionsCopy];
  if (delayInsertions != insertionsCopy)
  {
    [(PXAssetsDataSourceChangeTransitionCoordinator *)self _updateAnimationDelay];
  }
}

- (void)setTreatRemovalsAsDeletes:(BOOL)deletes
{
  deletesCopy = deletes;
  treatRemovalsAsDeletes = [(PXAssetsTileTransitionCoordinator *)self treatRemovalsAsDeletes];
  v6.receiver = self;
  v6.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  [(PXAssetsTileTransitionCoordinator *)&v6 setTreatRemovalsAsDeletes:deletesCopy];
  if (treatRemovalsAsDeletes != deletesCopy)
  {
    [(PXAssetsDataSourceChangeTransitionCoordinator *)self _updateAnimationDelay];
  }
}

- (void)_updateAnimationDelay
{
  treatRemovalsAsDeletes = [(PXAssetsTileTransitionCoordinator *)self treatRemovalsAsDeletes];
  _basicAnimationOptions = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
  v5 = _basicAnimationOptions;
  if (treatRemovalsAsDeletes)
  {
    _basicAnimationOptions2 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
    objc_msgSend_duration(_basicAnimationOptions2);
    [v5 setDelay:v7 * 0.5];
  }

  else
  {
    [_basicAnimationOptions setDelay:0.0];
  }

  _basicAnimationOptions3 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
  v9 = [_basicAnimationOptions3 copy];
  insertAnimationOptions = self->_insertAnimationOptions;
  self->_insertAnimationOptions = v9;

  if ([(PXAssetsTileTransitionCoordinator *)self delayInsertions])
  {
    v11 = self->_insertAnimationOptions;
    _basicAnimationOptions4 = [(PXAssetsTileTransitionCoordinator *)self _basicAnimationOptions];
    objc_msgSend_duration(_basicAnimationOptions4);
    [(PXBasicTileAnimationOptions *)v11 setDelay:v12 * 0.5];
  }
}

- (PXAssetsDataSourceChangeTransitionCoordinator)initWithTilingChange:(id)change changeHistory:(id)history
{
  v13.receiver = self;
  v13.super_class = PXAssetsDataSourceChangeTransitionCoordinator;
  v4 = [(PXAssetsTileTransitionCoordinator *)&v13 initWithTilingChange:change changeHistory:history];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    overrideInitialGeometryByTileIdentifier = v4->_overrideInitialGeometryByTileIdentifier;
    v4->_overrideInitialGeometryByTileIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    overrideFinalGeometryByTileIdentifier = v4->_overrideFinalGeometryByTileIdentifier;
    v4->_overrideFinalGeometryByTileIdentifier = v7;

    _basicAnimationOptions = [(PXAssetsTileTransitionCoordinator *)v4 _basicAnimationOptions];
    v10 = [_basicAnimationOptions copy];
    deleteAnimationOptions = v4->_deleteAnimationOptions;
    v4->_deleteAnimationOptions = v10;

    [(PXBasicTileAnimationOptions *)v4->_deleteAnimationOptions setStyle:1];
    [(PXAssetsDataSourceChangeTransitionCoordinator *)v4 _updateAnimationDelay];
  }

  return v4;
}

@end