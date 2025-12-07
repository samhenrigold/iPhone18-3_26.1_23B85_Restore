@interface PKSelectionGlowRenderer
+ (id)sharedStrokePathCache;
+ (void)invalidateSharedStrokePathCache;
- (CGPoint)editMenuLocation;
- (PKSelectionGlowRenderer)initWithStrokeSelection:(id)selection renderingDelegate:(id)delegate;
- (PKSelectionModificationKnob)_newKnobWithLocation:(uint64_t)location;
- (double)_widthForStroke:(double)stroke withDrawingScale:;
- (id)_accessibilityUserTestingChildren;
- (id)_affordanceForLocationInSelectionView:(double)view inputType:(double)type;
- (id)_didEndDragKnobLocation:(uint64_t)location knobDragMode:(unint64_t)mode;
- (id)_resetKnobAppearance;
- (id)initForLiveSelectionWithRenderingDelegate:(id)delegate;
- (id)setKnobsVisible:(id *)result;
- (uint64_t)_highlightColor;
- (void)_createPathAroundStrokes:(id *)strokes inDrawing:(void *)drawing isLive:(void *)live liveScrollOffset:(int)offset;
- (void)_renderLiveSelectionPath:(CGPath *)path forStrokes:(id)strokes inDrawing:(id)drawing liveScrollOffset:(CGPoint)offset;
- (void)_setupHighlightIfNecessary;
- (void)_updateKnobAppearanceForDragAtKnobLocation:(double)location point:(double)point otherKnobPoint:(double)knobPoint selectionType:(double)type touchType:;
- (void)_updateKnobAppearanceForDragAtKnobLocation:(unint64_t)location point:(uint64_t)point knobDragMode:(uint64_t)mode selectionType:(double)type touchType:(double)touchType;
- (void)_willBeginDragKnobLocation:(unint64_t)location atPoint:(double)point knobDragMode:(double)mode;
@end

@implementation PKSelectionGlowRenderer

- (void)_setupHighlightIfNecessary
{
  if (self && !*(self + 8))
  {
    layer = [MEMORY[0x1E6979398] layer];
    v3 = *(self + 8);
    *(self + 8) = layer;

    layer2 = [MEMORY[0x1E6979398] layer];
    v5 = *(self + 16);
    *(self + 16) = layer2;

    WeakRetained = objc_loadWeakRetained((self + 88));
    drawing = [*(self + 80) drawing];
    [WeakRetained scaleForDrawing:drawing];
    v9 = v8;

    [*(self + 8) setContentsScale:v9];
    [*(self + 8) addSublayer:*(self + 16)];
    if (!*(self + 24))
    {
      v10 = [(PKSelectionGlowRenderer *)self _newKnobWithLocation:?];
      v11 = *(self + 24);
      *(self + 24) = v10;

      [*(self + 8) addSublayer:*(self + 24)];
    }

    if (!*(self + 32))
    {
      v12 = [(PKSelectionGlowRenderer *)self _newKnobWithLocation:?];
      v13 = *(self + 32);
      *(self + 32) = v12;

      [*(self + 8) addSublayer:*(self + 32)];
    }

    strokes = [*(self + 80) strokes];
    -[PKSelectionGlowRenderer setKnobsVisible:](self, [strokes count] != 0);

    v15 = *(self + 80);
    if (v15)
    {
      [v15 bounds];
      v18 = [MEMORY[0x1E69DC728] bezierPathWithRect:{0.0, 0.0, v9 * v16, v9 * v17}];
      v19 = *(self + 72);
      *(self + 72) = v18;
      v20 = v18;

      strokes2 = [*(self + 80) strokes];
      drawing2 = [*(self + 80) drawing];

      [PKSelectionGlowRenderer _createPathAroundStrokes:self inDrawing:strokes2 isLive:drawing2 liveScrollOffset:0];
    }
  }
}

- (uint64_t)_highlightColor
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 88));
  selectionColor = [WeakRetained selectionColor];

  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"internalSettings.drawing.enableLassolessSelectionDebugColors"];

  if (v5)
  {
    v6 = objc_loadWeakRetained((self + 88));
    currentIntersectionAlgorithm = [v6 currentIntersectionAlgorithm];

    if (currentIntersectionAlgorithm > 1)
    {
      if (currentIntersectionAlgorithm == 2)
      {
        systemOrangeColor = [MEMORY[0x1E69DC888] systemOrangeColor];
        goto LABEL_12;
      }

      if (currentIntersectionAlgorithm == 3)
      {
        systemOrangeColor = [MEMORY[0x1E69DC888] systemYellowColor];
        goto LABEL_12;
      }
    }

    else
    {
      if (!currentIntersectionAlgorithm)
      {
        systemOrangeColor = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_12;
      }

      if (currentIntersectionAlgorithm == 1)
      {
        systemOrangeColor = [MEMORY[0x1E69DC888] systemBlueColor];
LABEL_12:
        v9 = systemOrangeColor;
        cGColor = [systemOrangeColor CGColor];

        return cGColor;
      }
    }
  }

  return selectionColor;
}

- (PKSelectionGlowRenderer)initWithStrokeSelection:(id)selection renderingDelegate:(id)delegate
{
  selectionCopy = selection;
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = PKSelectionGlowRenderer;
  v9 = [(PKSelectionGlowRenderer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_strokeSelection, selection);
    objc_storeWeak(&v10->_renderingDelegate, delegateCopy);
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tiles = v10->_tiles;
    v10->_tiles = v11;
  }

  return v10;
}

- (id)initForLiveSelectionWithRenderingDelegate:(id)delegate
{
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = PKSelectionGlowRenderer;
  v5 = [(PKSelectionGlowRenderer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_renderingDelegate, delegateCopy);
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tiles = v6->_tiles;
    v6->_tiles = v7;

    [(PKSelectionGlowRenderer *)v6 _setupHighlightIfNecessary];
  }

  return v6;
}

+ (id)sharedStrokePathCache
{
  objc_opt_self();
  if (_MergedGlobals_118 != -1)
  {
    dispatch_once(&_MergedGlobals_118, &__block_literal_global_3);
  }

  v1 = qword_1ED6A4F58;

  return v1;
}

void __48__PKSelectionGlowRenderer_sharedStrokePathCache__block_invoke()
{
  v0 = objc_alloc_init(PKLRUCache);
  v1 = qword_1ED6A4F58;
  qword_1ED6A4F58 = v0;

  if (qword_1ED6A4F58)
  {
    *(qword_1ED6A4F58 + 64) = 0x4000000;
  }
}

+ (void)invalidateSharedStrokePathCache
{
  v1 = objc_opt_self();
  v2 = +[(PKSelectionGlowRenderer *)v1];
  [(PKLRUCache *)v2 removeAllObjects];
}

- (id)_affordanceForLocationInSelectionView:(double)view inputType:(double)type
{
  v28[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v7 = *(self + 32);
    v28[0] = *(self + 24);
    v28[1] = v7;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = v26 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      if (a2)
      {
        v11 = 20.0;
      }

      else
      {
        v11 = 40.0;
      }

      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if (v13)
          {
            v30.origin.x = [(PKSelectionModificationKnob *)*(*(&v23 + 1) + 8 * i) _rectForKnob];
            x = v30.origin.x;
            y = v30.origin.y;
            width = v30.size.width;
            height = v30.size.height;
            MidX = CGRectGetMidX(v30);
            v31.origin.x = x;
            v31.origin.y = y;
            v31.size.width = width;
            v31.size.height = height;
            MidY = CGRectGetMidY(v31);
            [v13 frame];
            if (sqrt((type - (MidY + v21)) * (type - (MidY + v21)) + (view - (MidX + v20)) * (view - (MidX + v20))) < v11 + width * 0.5 && ![v13 isHidden])
            {
              v9 = v13;
              goto LABEL_16;
            }
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGPoint)editMenuLocation
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)_renderLiveSelectionPath:(CGPath *)path forStrokes:(id)strokes inDrawing:(id)drawing liveScrollOffset:(CGPoint)offset
{
  strokesCopy = strokes;
  drawingCopy = drawing;
  isHidden = [(PKSelectionModificationKnob *)self->_leftKnob isHidden];
  if (strokesCopy && drawingCopy)
  {
    if (isHidden)
    {
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [(PKSelectionGlowRenderer *)self _setupHighlightIfNecessary];
      [PKSelectionGlowRenderer _createPathAroundStrokes:strokesCopy inDrawing:drawingCopy isLive:1 liveScrollOffset:?];
      [(PKSelectionGlowRenderer *)&self->super.isa setKnobsVisible:?];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      [(PKSelectionGlowRenderer *)self _setupHighlightIfNecessary];
      [PKSelectionGlowRenderer _createPathAroundStrokes:strokesCopy inDrawing:drawingCopy isLive:1 liveScrollOffset:?];
      [(PKSelectionGlowRenderer *)&self->super.isa setKnobsVisible:?];
    }
  }

  else
  {
    [(PKSelectionGlowRenderer *)&self->super.isa setKnobsVisible:?];
    [(CALayer *)self->_strokePathsTilesLayer setSublayers:0];
    [(NSMutableDictionary *)self->_tiles removeAllObjects];
  }
}

- (id)setKnobsVisible:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[3] setHidden:a2 ^ 1u];
    [v3[4] setHidden:a2 ^ 1u];
    _highlightColor = [(PKSelectionGlowRenderer *)v3 _highlightColor];
    [(PKSelectionModificationKnob *)v3[3] setKnobColor:_highlightColor];
    _highlightColor2 = [(PKSelectionGlowRenderer *)v3 _highlightColor];
    v6 = v3[4];

    return [(PKSelectionModificationKnob *)v6 setKnobColor:_highlightColor2];
  }

  return result;
}

- (void)_createPathAroundStrokes:(id *)strokes inDrawing:(void *)drawing isLive:(void *)live liveScrollOffset:(int)offset
{
  v233 = *MEMORY[0x1E69E9840];
  drawingCopy = drawing;
  liveCopy = live;
  if (strokes)
  {
    if (drawingCopy && [drawingCopy count])
    {
      v160 = liveCopy;
      v9 = liveCopy;
      v10 = *(MEMORY[0x1E695EFD0] + 16);
      *&v223.a = *MEMORY[0x1E695EFD0];
      *&v223.c = v10;
      *&v223.tx = *(MEMORY[0x1E695EFD0] + 32);
      if (offset)
      {
        WeakRetained = objc_loadWeakRetained(strokes + 11);
        v12 = WeakRetained;
        if (WeakRetained)
        {
          objc_msgSend_transformFromStrokeSpaceToViewInDrawing_(WeakRetained);
        }

        else
        {
          memset(&v226, 0, sizeof(v226));
        }

        v223 = v226;
      }

      else
      {
        [strokes[10] bounds];
        v14 = v13;
        v16 = v15;
        v17 = objc_loadWeakRetained(strokes + 11);
        drawing = [strokes[10] drawing];
        [v17 scaleForDrawing:drawing];
        v20 = v19;

        memset(&v226, 0, sizeof(v226));
        CGAffineTransformMakeTranslation(&v226, -v14, -v16);
        CGAffineTransformMakeScale(&t2, v20, v20);
        t1 = v226;
        CGAffineTransformConcat(&v223, &t1, &t2);
      }

      v21 = objc_loadWeakRetained(strokes + 11);
      [v21 scaleForDrawing:v9];
      v23 = v22;

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __86__PKSelectionGlowRenderer__createPathAroundStrokes_inDrawing_isLive_liveScrollOffset___block_invoke;
      aBlock[3] = &unk_1E82D6DF8;
      aBlock[4] = strokes;
      *&aBlock[5] = v23;
      v222 = v223;
      v175 = _Block_copy(aBlock);
      v24 = objc_loadWeakRetained(strokes + 11);
      [v24 attachmentBoundsForDrawing:v9];
      r2_24 = v26;
      v191 = v25;
      r2_8 = v28;
      r2_16 = v27;

      v29 = objc_loadWeakRetained(strokes + 11);
      v162 = v29;
      if (v29)
      {
        v30 = objc_loadWeakRetained(v29 + 15);
      }

      else
      {
        v30 = 0;
      }

      uuid = [v9 uuid];
      v32 = [v30 _attachmentForUUID:uuid];

      if (offset && [v32 isExternalAttachment])
      {
        viewRep = [v32 viewRep];
        [viewRep frame];
        r2_24 = v35;
        v191 = v34;
        r2_8 = v37;
        r2_16 = v36;
      }

      v163 = v32;
      v38 = *(MEMORY[0x1E695F050] + 8);
      r2 = *MEMORY[0x1E695F050];
      v40 = *(MEMORY[0x1E695F050] + 16);
      v39 = *(MEMORY[0x1E695F050] + 24);
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      v41 = drawingCopy;
      v42 = [v41 countByEnumeratingWithState:&v217 objects:v232 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v218;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v218 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v234.origin.x = v175[2](v175, *(*(&v217 + 1) + 8 * i));
            x = v234.origin.x;
            y = v234.origin.y;
            width = v234.size.width;
            height = v234.size.height;
            v250.origin.y = r2_24;
            v250.origin.x = v191;
            v250.size.height = r2_8;
            v250.size.width = r2_16;
            if (CGRectIntersectsRect(v234, v250))
            {
              v235.origin.x = x;
              v235.origin.y = y;
              v235.size.width = width;
              v235.size.height = height;
              v251.origin.x = r2;
              v251.origin.y = v38;
              v251.size.width = v40;
              v251.size.height = v39;
              v236 = CGRectUnion(v235, v251);
              r2 = v236.origin.x;
              v38 = v236.origin.y;
              v40 = v236.size.width;
              v39 = v236.size.height;
            }
          }

          v43 = [v41 countByEnumeratingWithState:&v217 objects:v232 count:16];
        }

        while (v43);
      }

      offsetCopy = offset;
      v161 = drawingCopy;
      v166 = v41;

      v237.origin.y = r2_24;
      v237.origin.x = v191;
      v237.size.height = r2_8;
      v237.size.width = r2_16;
      v252.origin.x = r2;
      v252.origin.y = v38;
      v252.size.width = v40;
      v252.size.height = v39;
      v238 = CGRectUnion(v237, v252);
      v50 = v238.origin.x;
      v192 = v238.origin.y;
      r2_16a = v238.size.width;
      v51 = v238.size.height;
      v52 = MEMORY[0x1E695DFA8];
      allKeys = [strokes[8] allKeys];
      v164 = [v52 setWithArray:allKeys];

      r2_24a = strokes;
      LODWORD(v54) = 1050253722;
      [strokes[2] setOpacity:v54];
      v165 = [MEMORY[0x1E695DFA8] set];
      r2a = vcvtpd_s64_f64(v51 * 0.00390625);
      if (r2a >= 1)
      {
        v55 = v51;
        r2_8a = 0;
        v56 = vcvtpd_s64_f64(r2_16a * 0.00390625);
        do
        {
          if (v56 >= 1)
          {
            for (j = 0; j != v56; ++j)
            {
              v239.size.width = 256.0;
              v239.origin.x = v50 + j * 256.0;
              v239.origin.y = v192 + r2_8a * 256.0;
              v239.size.height = 256.0;
              v253.origin.x = v50;
              v253.origin.y = v192;
              v253.size.width = r2_16a;
              v253.size.height = v55;
              v240 = CGRectIntersection(v239, v253);
              v58 = v240.origin.x;
              v59 = v240.origin.y;
              v60 = v240.size.width;
              v61 = v240.size.height;
              if (!CGRectIsNull(v240))
              {
                array = [MEMORY[0x1E695DF70] array];
                v213 = 0u;
                v214 = 0u;
                v215 = 0u;
                v216 = 0u;
                v63 = v41;
                v64 = [v63 countByEnumeratingWithState:&v213 objects:v231 count:16];
                if (v64)
                {
                  v65 = v64;
                  v66 = *v214;
                  do
                  {
                    for (k = 0; k != v65; ++k)
                    {
                      if (*v214 != v66)
                      {
                        objc_enumerationMutation(v63);
                      }

                      v68 = *(*(&v213 + 1) + 8 * k);
                      v241.origin.x = v175[2](v175, v68);
                      v254.origin.x = v58;
                      v254.origin.y = v59;
                      v254.size.width = v60;
                      v254.size.height = v61;
                      if (CGRectIntersectsRect(v241, v254))
                      {
                        [array addObject:v68];
                      }
                    }

                    v65 = [v63 countByEnumeratingWithState:&v213 objects:v231 count:16];
                  }

                  while (v65);
                }

                if ([array count])
                {
                  v69 = [[PKSelectionTileProperties alloc] initWithFrame:array strokes:v58, v59, v60, v61];
                  [v165 addObject:v69];
                }
              }
            }
          }

          ++r2_8a;
        }

        while (r2_8a != r2a);
      }

      v70 = [v165 mutableCopy];
      [v70 minusSet:v164];
      v71 = [v164 mutableCopy];
      [v71 minusSet:v165];
      v211 = 0u;
      v212 = 0u;
      v209 = 0u;
      v210 = 0u;
      v72 = v71;
      v73 = [v72 countByEnumeratingWithState:&v209 objects:v230 count:16];
      if (v73)
      {
        v74 = v73;
        v75 = *v210;
        do
        {
          for (m = 0; m != v74; ++m)
          {
            if (*v210 != v75)
            {
              objc_enumerationMutation(v72);
            }

            v77 = *(*(&v209 + 1) + 8 * m);
            v78 = [r2_24a[8] objectForKeyedSubscript:v77];
            [v78 removeFromSuperlayer];
            [r2_24a[8] removeObjectForKey:v77];
          }

          v74 = [v72 countByEnumeratingWithState:&v209 objects:v230 count:16];
        }

        while (v74);
      }

      v157 = v72;

      v207 = 0u;
      v208 = 0u;
      v205 = 0u;
      v206 = 0u;
      v79 = v70;
      v80 = [v79 countByEnumeratingWithState:&v205 objects:v229 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v206;
        do
        {
          for (n = 0; n != v81; ++n)
          {
            if (*v206 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = *(*(&v205 + 1) + 8 * n);
            v85 = [[PKSelectionTile alloc] initWithProperties:v84];
            [v84 frame];
            [(PKSelectionTile *)v85 setFrame:?];
            [r2_24a[8] setObject:v85 forKeyedSubscript:v84];
            [r2_24a[2] addSublayer:v85];
          }

          v81 = [v79 countByEnumeratingWithState:&v205 objects:v229 count:16];
        }

        while (v81);
      }

      v203 = 0u;
      v204 = 0u;
      v201 = 0u;
      v202 = 0u;
      obj = v79;
      v86 = r2_24a;
      v171 = [obj countByEnumeratingWithState:&v201 objects:v228 count:16];
      if (v171)
      {
        v169 = *v202;
        r2_16b = *MEMORY[0x1E6979E78];
        r2_8b = *MEMORY[0x1E6979E98];
        v87 = off_1E82D4000;
        do
        {
          v88 = 0;
          do
          {
            if (*v202 != v169)
            {
              objc_enumerationMutation(obj);
            }

            v173 = v88;
            v89 = *(*(&v201 + 1) + 8 * v88);
            v193 = [*(v86 + 64) objectForKeyedSubscript:v89];
            v197 = 0u;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            r2b = [v89 strokes];
            v90 = [r2b countByEnumeratingWithState:&v197 objects:v227 count:16];
            if (v90)
            {
              v91 = v90;
              v92 = *v198;
              do
              {
                for (ii = 0; ii != v91; ++ii)
                {
                  if (*v198 != v92)
                  {
                    objc_enumerationMutation(r2b);
                  }

                  v94 = *(*(&v197 + 1) + 8 * ii);
                  v95 = +[(PKSelectionGlowRenderer *)v87[295]];
                  _strokeUUID = [v94 _strokeUUID];
                  v97 = [(PKLRUCache *)v95 objectForKey:_strokeUUID];

                  if (v97)
                  {
                    v98 = CGPathRetain([v97 CGPath]);
                  }

                  else
                  {
                    LODWORD(v226.a) = 0;
                    v98 = [v94 newSelectionPathRepresentationWithPointsCount:&v226];
                    v99 = +[(PKSelectionGlowRenderer *)v87[295]];
                    v100 = [MEMORY[0x1E69DC728] bezierPathWithCGPath:v98];
                    _strokeUUID2 = [v94 _strokeUUID];
                    [(PKLRUCache *)v99 setObject:v100 forKey:_strokeUUID2 cost:16 * SLODWORD(v226.a)];
                  }

                  layer = [MEMORY[0x1E69794A0] layer];
                  memset(&v226, 0, sizeof(v226));
                  [v89 frame];
                  v104 = -v103;
                  [v89 frame];
                  CGAffineTransformMakeTranslation(&v226, v104, -v105);
                  memset(&t2, 0, sizeof(t2));
                  if (v94)
                  {
                    objc_msgSend__transform(v94);
                  }

                  else
                  {
                    memset(&t1, 0, sizeof(t1));
                  }

                  v196 = v223;
                  CGAffineTransformConcat(&t2, &t1, &v196);
                  v196 = t2;
                  v195 = v226;
                  CGAffineTransformConcat(&t1, &v196, &v195);
                  t2 = t1;
                  v106 = CGPathCreateMutableCopyByTransformingPath(v98, &t2);
                  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
                  [mainScreen scale];
                  [layer setContentsScale:?];

                  [layer setPath:v106];
                  _strokeMask = [v94 _strokeMask];

                  if (_strokeMask)
                  {
                    v86 = r2_24a;
                    [layer setFillColor:-[PKSelectionGlowRenderer _highlightColor](r2_24a)];
                    v109 = 10.0;
                  }

                  else
                  {
                    [layer setFillColor:0];
                    v110 = v94;
                    v86 = r2_24a;
                    v109 = [(PKSelectionGlowRenderer *)r2_24a _widthForStroke:v110 withDrawingScale:v23]+ 10.0;
                  }

                  [layer setLineWidth:v109];
                  [layer setLineCap:r2_16b];
                  [layer setLineJoin:r2_8b];
                  [layer setStrokeColor:-[PKSelectionGlowRenderer _highlightColor](v86)];
                  CGPathRelease(v98);
                  CGPathRelease(v106);
                  [v193 addSublayer:layer];

                  v87 = off_1E82D4000;
                }

                v91 = [r2b countByEnumeratingWithState:&v197 objects:v227 count:16];
              }

              while (v91);
            }

            v88 = v173 + 1;
          }

          while (v173 + 1 != v171);
          v171 = [obj countByEnumeratingWithState:&v201 objects:v228 count:16];
        }

        while (v171);
      }

      drawingCopy = v161;
      v111 = v163;
      if (offsetCopy && v163 && [v163 isExternalAttachment])
      {
        adornmentLayer = [v86 adornmentLayer];
        v113 = adornmentLayer;
        if (v162 && adornmentLayer && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          contentWindowCoordinateSpace = [v163 contentWindowCoordinateSpace];
          contentScaledCoordinateSpace = [v163 contentScaledCoordinateSpace];
          v116 = objc_loadWeakRetained(v162 + 15);
          [v116 frame];
          [contentWindowCoordinateSpace convertRect:contentScaledCoordinateSpace toCoordinateSpace:?];
          [v113 setFrame:?];

          if (objc_opt_respondsToSelector())
          {
            [v162 updateLiveSelectionForStrokesInLayer:v113 inDrawing:v152];
          }

          v111 = v163;
        }
      }

      if ((*(v86 + 48) & 1) == 0)
      {
        a = v223.a;
        b = v223.b;
        r2_16c = v223.d;
        tx = v223.tx;
        r2c = v223.c;
        r2_8c = v223.ty;
        v118 = v166;
        v119 = objc_loadWeakRetained((v86 + 88));
        v120 = [v119 _firstStrokesInStrokes:v118];

        v121 = objc_loadWeakRetained((v86 + 88));
        v122 = [v121 _lastStrokesInStrokes:v118];

        [PKDrawing _boundingBoxForStrokeArray:v120];
        v124 = v123;
        v126 = v125;
        v128 = v127;
        v130 = v129;
        [PKDrawing _boundingBoxForStrokeArray:v122];
        v167 = v131;
        v170 = v132;
        v172 = v133;
        v135 = v134;
        MaxX = *MEMORY[0x1E695EFF8];
        MinY = *(MEMORY[0x1E695EFF8] + 8);
        v138 = objc_loadWeakRetained((v86 + 88));
        LOBYTE(v121) = [v138 isRTL];

        v139 = [v120 count];
        r2_24b = a;
        v159 = MaxX;
        if (v121)
        {
          v153 = MinY;
          if (v139)
          {
            v242.origin.x = v124;
            v242.origin.y = v126;
            v242.size.width = v128;
            v242.size.height = v130;
            MaxX = CGRectGetMaxX(v242);
            v243.origin.x = v124;
            v243.origin.y = v126;
            v243.size.width = v128;
            v243.size.height = v130;
            MinY = CGRectGetMinY(v243);
          }

          if ([v122 count])
          {
            v244.origin.x = v167;
            v244.origin.y = v170;
            v244.size.width = v172;
            v244.size.height = v135;
            MinX = CGRectGetMinX(v244);
            v245.size.height = v135;
            v141 = MinX;
            v245.origin.x = v167;
            v245.origin.y = v170;
            v245.size.width = v172;
            MaxY = CGRectGetMaxY(v245);
          }

          else
          {
            MaxY = v154;
            v141 = v159;
          }
        }

        else
        {
          v155 = v135;
          MaxY = MinY;
          v141 = MaxX;
          if (v139)
          {
            v246.origin.x = v124;
            v246.origin.y = v126;
            v246.size.width = v128;
            v246.size.height = v130;
            v141 = CGRectGetMinX(v246);
            v247.origin.x = v124;
            v247.origin.y = v126;
            v247.size.width = v128;
            v247.size.height = v130;
            MaxY = CGRectGetMinY(v247);
          }

          if ([v122 count])
          {
            v248.origin.x = v167;
            v248.origin.y = v170;
            v248.size.width = v172;
            v248.size.height = v156;
            MaxX = CGRectGetMaxX(v248);
            v249.origin.x = v167;
            v249.origin.y = v170;
            v249.size.width = v172;
            v249.size.height = v156;
            MinY = CGRectGetMaxY(v249);
          }
        }

        v143 = tx + r2c * MaxY + r2_24b * v141;
        v144 = r2_8c + r2_16c * MaxY + b * v141;
        v145 = tx + r2c * MinY + r2_24b * MaxX;
        v146 = r2_8c + r2_16c * MinY + b * MaxX;
        v147 = objc_loadWeakRetained((v86 + 88));
        isRTL = [v147 isRTL];

        if (isRTL)
        {
          v149 = -1.0;
        }

        else
        {
          v149 = 1.0;
        }

        v150 = v144 - v149;
        v151 = v146 + v149;
        [*(v86 + 24) setPosition:{v143 + -1.0, v150}];
        [*(v86 + 32) setPosition:{v145 + 1.0, v151}];

        v111 = v163;
      }

      liveCopy = v160;
    }

    else
    {
      [strokes[2] setSublayers:0];
      [strokes[8] removeAllObjects];
    }
  }
}

- (PKSelectionModificationKnob)_newKnobWithLocation:(uint64_t)location
{
  v4 = [PKSelectionModificationKnob alloc];
  _highlightColor = [(PKSelectionGlowRenderer *)location _highlightColor];
  WeakRetained = objc_loadWeakRetained((location + 88));
  isRTL = [WeakRetained isRTL];
  if (v4)
  {
    v8 = isRTL;
    v19.receiver = v4;
    v19.super_class = PKSelectionModificationKnob;
    v9 = objc_msgSendSuper2(&v19, sel_init);
    v4 = v9;
    if (v9)
    {
      LODWORD(v10) = 1.0;
      [(PKSelectionModificationKnob *)v9 setOpacity:v10];
      layer = [MEMORY[0x1E6979398] layer];
      knobLayer = v4->_knobLayer;
      v4->_knobLayer = layer;

      layer2 = [MEMORY[0x1E6979398] layer];
      knobTailLayer = v4->_knobTailLayer;
      v4->_knobTailLayer = layer2;

      v4->_knobColor = CGColorRetain(_highlightColor);
      [(PKSelectionModificationKnob *)&v4->super.super.isa _updateKnobAppearance];
      v4->_isRTL = v8;
      v4->_knobLocation = a2;
      [(PKSelectionModificationKnob *)v4 addSublayer:v4->_knobLayer];
      [(PKSelectionModificationKnob *)v4 addSublayer:v4->_knobTailLayer];
      [(PKSelectionModificationKnob *)v4 setIsAccessibilityElement:1];
    }
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v16 = 14.0;
  }

  else
  {
    v16 = 13.0;
  }

  [(PKSelectionModificationKnob *)v4 setFrame:0.0, 0.0, v16, v16 + v16];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(PKSelectionModificationKnob *)v4 setContentsScale:?];

  return v4;
}

- (double)_widthForStroke:(double)stroke withDrawingScale:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    [v5 _maxWidthForStroke];
    v8 = v7;
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    [currentDevice userInterfaceIdiom];

    v10 = 0.0;
    v11 = 0.0;
    if (v6)
    {
      objc_msgSend_transform(v6, 0.0, 0.0);
      v11 = v20;
      v10 = v21;
    }

    v12 = sqrt(v10 * v10 + v11 * v11);
    v13 = [v6 ink];
    behavior = [v13 behavior];
    renderingDescriptor = [behavior renderingDescriptor];
    type = [renderingDescriptor type];
    v17 = 2.0;
    if (type)
    {
      v17 = 0.0;
    }

    v18 = (v17 + v8 * v12) * stroke;
  }

  else
  {
    v18 = 0.0;
  }

  return v18;
}

void __86__PKSelectionGlowRenderer__createPathAroundStrokes_inDrawing_isLive_liveScrollOffset___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 renderBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PKSelectionGlowRenderer *)*(a1 + 32) _widthForStroke:v3 withDrawingScale:*(a1 + 40)];

  v15.origin.x = v5;
  v15.origin.y = v7;
  v15.size.width = v9;
  v15.size.height = v11;
  v16 = CGRectInset(v15, -(v12 + 10.0), -(v12 + 10.0));
  v13 = *(a1 + 64);
  *&v14.a = *(a1 + 48);
  *&v14.c = v13;
  *&v14.tx = *(a1 + 80);
  CGRectApplyAffineTransform(v16, &v14);
}

- (void)_willBeginDragKnobLocation:(unint64_t)location atPoint:(double)point knobDragMode:(double)mode
{
  if (self)
  {
    *(self + 40) = location;
    *(self + 56) = a2;
    *(self + 48) = 1;
    if (location <= 2)
    {
      [(PKSelectionModificationKnob *)*(self + 32) didBeginBrushSelection];
      [(PKSelectionModificationKnob *)*(self + 24) didBeginBrushSelection];
      [(PKSelectionGlowRenderer *)self _updateKnobAppearanceForDragAtKnobLocation:a2 point:location knobDragMode:1 selectionType:2 touchType:point, mode];
      v11 = 32;
      if (!a2)
      {
        v11 = 24;
      }

      v13 = *(self + v11);
      [v13 setHidden:0];
      _highlightColor = [(PKSelectionGlowRenderer *)self _highlightColor];
      [(PKSelectionModificationKnob *)v13 setKnobColor:_highlightColor];
    }
  }
}

- (void)_updateKnobAppearanceForDragAtKnobLocation:(unint64_t)location point:(uint64_t)point knobDragMode:(uint64_t)mode selectionType:(double)type touchType:(double)touchType
{
  if (self)
  {
    v13 = 32;
    if (!a2)
    {
      v13 = 24;
    }

    v14 = *(self + v13);
    if (location > 2)
    {
      [(PKSelectionGlowRenderer *)self _resetKnobAppearance];
      [v14 frame];
      v25 = v24;
      v27 = v26;
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v14 setFrame:{type - v25 * 0.5, touchType - v27 * 0.5, v25, v27}];
      [MEMORY[0x1E6979518] commit];
    }

    else
    {
      v16 = 5.75;
      if (mode == 2)
      {
        v16 = 3.5;
      }

      v17 = 6.5;
      v18 = 5.0;
      if (mode == 2)
      {
        v17 = 5.0;
        v18 = 2.0;
      }

      if (point == 1)
      {
        v17 = v18;
      }

      if (point != 2)
      {
        v16 = v17;
      }

      CATransform3DMakeScale(&v28, v16, v16, 1.0);
      [v14 setTransform:&v28];
      [v14 frame];
      v20 = v19;
      v22 = v21;
      [MEMORY[0x1E6979518] begin];
      [MEMORY[0x1E6979518] setDisableActions:1];
      [v14 setFrame:{type - v20 * 0.5, touchType - v22 * 0.5, v20, v22}];
      [MEMORY[0x1E6979518] commit];
      v23 = *(self + 24);
      if (v23 == v14)
      {
        v23 = *(self + 32);
      }

      [v23 setOpacity:0.0];
    }
  }
}

- (void)_updateKnobAppearanceForDragAtKnobLocation:(double)location point:(double)point otherKnobPoint:(double)knobPoint selectionType:(double)type touchType:
{
  if (self)
  {
    if (a2)
    {
      v12 = 4;
    }

    else
    {
      v12 = 3;
    }

    v13 = self[v12];
    if (a2)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    v28 = v13;
    v15 = self[v14];
    [(PKSelectionGlowRenderer *)self _resetKnobAppearance];
    v17 = 1.0;
    if (a2 == 1)
    {
      v17 = -1.0;
    }

    v18 = knobPoint + v17;
    v19 = type + v17;
    [v28 frame];
    v21 = v20;
    v23 = v22;
    [v15 frame];
    v25 = v24;
    v27 = v26;
    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [v28 setFrame:{location - v21 * 0.5, point - v23 * 0.5, v21, v23}];
    [v15 setFrame:{v18 - v25 * 0.5, v19 - v27 * 0.5, v25, v27}];
    [MEMORY[0x1E6979518] commit];
  }
}

- (id)_resetKnobAppearance
{
  if (result)
  {
    v2 = result;
    LODWORD(a2) = 1.0;
    [result[3] setOpacity:a2];
    LODWORD(v3) = 1.0;
    [v2[4] setOpacity:v3];
    v4 = v2[3];
    v12 = *(MEMORY[0x1E69792E8] + 80);
    v18 = *(MEMORY[0x1E69792E8] + 64);
    v13 = v18;
    v19 = v12;
    v10 = *(MEMORY[0x1E69792E8] + 112);
    v20 = *(MEMORY[0x1E69792E8] + 96);
    v11 = v20;
    v21 = v10;
    v8 = *(MEMORY[0x1E69792E8] + 16);
    v14 = *MEMORY[0x1E69792E8];
    v9 = v14;
    v15 = v8;
    v6 = *(MEMORY[0x1E69792E8] + 48);
    v16 = *(MEMORY[0x1E69792E8] + 32);
    v7 = v16;
    v17 = v6;
    [v4 setTransform:&v14];
    v5 = v2[4];
    v18 = v13;
    v19 = v12;
    v20 = v11;
    v21 = v10;
    v14 = v9;
    v15 = v8;
    v16 = v7;
    v17 = v6;
    return [v5 setTransform:&v14];
  }

  return result;
}

- (id)_didEndDragKnobLocation:(uint64_t)location knobDragMode:(unint64_t)mode
{
  if (result)
  {
    v4 = result;
    if (mode <= 2)
    {
      [(PKSelectionModificationKnob *)result[4] didEndBrushSelection];
      [(PKSelectionModificationKnob *)v4[3] didEndBrushSelection];
    }

    strokes = [v4[10] strokes];
    -[PKSelectionGlowRenderer setKnobsVisible:](v4, [strokes count] != 0);

    *(v4 + 48) = 0;

    return [(PKSelectionGlowRenderer *)v4 _resetKnobAppearance];
  }

  return result;
}

- (id)_accessibilityUserTestingChildren
{
  v3 = MEMORY[0x1E695DF70];
  v11.receiver = self;
  v11.super_class = PKSelectionGlowRenderer;
  _accessibilityUserTestingChildren = [(PKSelectionGlowRenderer *)&v11 _accessibilityUserTestingChildren];
  v5 = [v3 arrayWithArray:_accessibilityUserTestingChildren];

  leftKnob = self->_leftKnob;
  if (leftKnob)
  {
    [(PKSelectionModificationKnob *)leftKnob opacity];
    if (v7 > 0.0)
    {
      [v5 addObject:self->_leftKnob];
    }
  }

  rightKnob = self->_rightKnob;
  if (rightKnob)
  {
    [(PKSelectionModificationKnob *)rightKnob opacity];
    if (v9 > 0.0)
    {
      [v5 addObject:self->_rightKnob];
    }
  }

  return v5;
}

@end