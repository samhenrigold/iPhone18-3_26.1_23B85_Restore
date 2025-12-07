@interface KNAnimatedSlideModel
- (BOOL)info:(id)info isVisibleDuringEvent:(int64_t)event;
- (BOOL)isFirstBuildEventAutomatic;
- (BOOL)p_isEmphasisBuild:(id)build;
- (BOOL)p_isInfoInvalidWithImplicitAmbientAnimations:(id)animations;
- (BOOL)p_shouldAnimateImplicitAmbientAnimatingDrawableAtFirstEvent:(id)event;
- (Class)p_effectClassForEffect:(id)effect animationType:(int64_t)type hasParentBuild:(BOOL)build;
- (Class)p_rendererClassForBuildChunk:(id)chunk parentBuild:(id)build effectClass:(Class *)class;
- (Class)p_rendererClassForEffect:(id)effect animationType:(int64_t)type drawable:(id)drawable parentBuild:(id)build effectClass:(Class *)class;
- (KNAnimatedSlideModel)initWithBuildChunks:(id)chunks infos:(id)infos session:(id)session animatedSlideView:(id)view;
- (KNPlaybackSession)session;
- (double)durationForEventIndexes:(id)indexes;
- (double)initialDelayForEventIndex:(unint64_t)index;
- (double)maxScaleFactorForDrawable:(id)drawable;
- (id)actionEffectForDrawable:(id)drawable atBeginningOfEvent:(int64_t)event;
- (id)animatedBuildForInfo:(id)info aroundEvent:(int64_t)event isAtEndOfBuild:(BOOL *)build;
- (id)animatedBuildForInfo:(id)info atEvent:(int64_t)event;
- (id)buildChunksForEventRange:(_NSRange)range;
- (id)eventsAtIndex:(unint64_t)index;
- (id)finalActionEffectForDrawable:(id)drawable;
- (id)firstAnimatedBuildForInfo:(id)info;
- (id)lastAnimatedBuildForInfo:(id)info;
- (id)nextAnimatedBuildForInfo:(id)info afterBuild:(id)build;
- (id)nextRendererAfterRenderer:(id)renderer;
- (id)p_animatedBuildForInfo:(id)info event:(int64_t)event buildIn:(BOOL)in;
- (id)p_animatedBuildsForInfo:(id)info animationType:(int64_t)type duringEvent:(int64_t)event time:(double)time;
- (id)p_applyThemeCurvesToBuildAttributes:(id)attributes;
- (id)p_createBuildAnimationRecords:(id)records info:(id)info event:(int64_t)event start:(double)start eventStart:(double)eventStart animateAtEndOfPreviousBuild:(BOOL)build previousAnimatedBuild:(id)animatedBuild parentBuild:(id)self0;
- (id)p_getCurrentDocumentRoot;
- (id)p_newImplicitAmbientBuildRendererWithDrawable:(id)drawable stageIndex:(int64_t)index buildChunk:(id)chunk startTime:(double)time eventStartTime:(double)startTime event:(int64_t)event animateAtEndOfPreviousBuild:(BOOL)build;
- (id)p_newTransition;
- (id)p_previousAnimatedBuildOfType:(int64_t)type forInfo:(id)info priorToBuild:(id)build;
- (id)previousAnimatedBuildForInfo:(id)info priorToBuild:(id)build;
- (id)previousRendererBeforeRenderer:(id)renderer;
- (id)rendererForAnimatedBuild:(id)build;
- (id)sortRenderers:(id)renderers;
- (id)visibleInfosDuringEvent:(int64_t)event;
- (int64_t)p_lastEventNumberForInfo:(id)info animationType:(int64_t)type defaultResult:(int64_t)result;
- (void)dealloc;
- (void)enumerateAnimatedBuildsAndTimeRangesAtIndex:(unint64_t)index ignoreInitialDelay:(BOOL)delay usingBlock:(id)block;
- (void)p_addAmbientBuildRenderer:(id)renderer;
- (void)p_convertToBuildEvents:(id)events;
- (void)p_insertInitialAmbientAnimations;
- (void)p_setRenderer:(id)renderer forAnimatedBuild:(id)build;
- (void)p_sortAnimatedBuilds;
- (void)p_updatePreviousAndFinalAttributes;
- (void)p_updateVisibilityOnAnimatedBuild:(id)build;
@end

@implementation KNAnimatedSlideModel

- (KNAnimatedSlideModel)initWithBuildChunks:(id)chunks infos:(id)infos session:(id)session animatedSlideView:(id)view
{
  chunksCopy = chunks;
  infosCopy = infos;
  sessionCopy = session;
  viewCopy = view;
  v22.receiver = self;
  v22.super_class = KNAnimatedSlideModel;
  v14 = [(KNAnimatedSlideModel *)&v22 init];
  if (v14)
  {
    v15 = [infosCopy copy];
    infos = v14->_infos;
    v14->_infos = v15;

    objc_storeWeak(&v14->_ASV, viewCopy);
    objc_storeWeak(&v14->_session, sessionCopy);
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(chunksCopy, "count")}];
    animatedBuilds = v14->_animatedBuilds;
    v14->_animatedBuilds = v17;

    [(KNAnimatedSlideModel *)v14 p_checkIfSlideIsMetalCapableWithBuildChunks:chunksCopy];
    [(KNAnimatedSlideModel *)v14 p_convertToBuildEvents:chunksCopy];
    [(KNAnimatedSlideModel *)v14 p_insertInitialAmbientAnimations];
    if (sessionCopy && viewCopy)
    {
      p_newTransition = [(KNAnimatedSlideModel *)v14 p_newTransition];
      transitionRenderer = v14->_transitionRenderer;
      v14->_transitionRenderer = p_newTransition;
    }

    if (KNAnimationEngineCat_init_token != -1)
    {
      sub_275E5B4E4();
    }
  }

  return v14;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = KNAnimatedSlideModel;
  [(KNAnimatedSlideModel *)&v2 dealloc];
}

- (id)eventsAtIndex:(unint64_t)index
{
  if ([(KNAnimatedSlideModel *)self buildEventCount]&& [(KNAnimatedSlideModel *)self buildEventCount]> index)
  {
    v5 = [(NSMutableArray *)self->_buildEvents objectAtIndexedSubscript:index];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

- (void)enumerateAnimatedBuildsAndTimeRangesAtIndex:(unint64_t)index ignoreInitialDelay:(BOOL)delay usingBlock:(id)block
{
  delayCopy = delay;
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (blockCopy)
  {
    v9 = 0.0;
    if (delayCopy)
    {
      [(KNAnimatedSlideModel *)self initialDelayForEventIndex:index];
      v9 = -v10;
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = [(KNAnimatedSlideModel *)self eventsAtIndex:index];
    v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v11)
    {
      v12 = *v36;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        if ([v14 animateAtEndOfPreviousBuild])
        {
          break;
        }

        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v27 = 0;
        v28 = &v27;
        v29 = 0x2050000000;
        v30 = 0;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v19 = sub_275D9C2F0;
        v20 = &unk_27A698920;
        selfCopy = self;
        v22 = v14;
        v15 = blockCopy;
        v26 = v9;
        v23 = v15;
        v24 = &v31;
        v25 = &v27;
        v28[3] = v18;
        v19(v18, v14, 0.0);
        v16 = *(v32 + 24);

        _Block_object_dispose(&v27, 8);
        _Block_object_dispose(&v31, 8);
        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v11)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }
}

- (BOOL)info:(id)info isVisibleDuringEvent:(int64_t)event
{
  v35 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    objc_opt_class();
    v9 = TSUDynamicCast();
    v10 = v9;
    if (v9)
    {
      isEmpty = [v9 isEmpty];
      if (([v10 displaysInstructionalText] & 1) == 0)
      {
        if (!isEmpty)
        {
          goto LABEL_21;
        }

        goto LABEL_14;
      }
    }

    else
    {
      if (![0 displaysInstructionalText])
      {
        goto LABEL_21;
      }

      isEmpty = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->_session);
    if (WeakRetained)
    {
      v13 = objc_loadWeakRetained(&self->_session);
      shouldShowInstructionalText = [v13 shouldShowInstructionalText];
    }

    else
    {
      shouldShowInstructionalText = 0;
    }

    if (!isEmpty || (shouldShowInstructionalText & 1) != 0)
    {
      goto LABEL_21;
    }

LABEL_14:
    fill = [v10 fill];
    if (!fill || ([v10 fill], WeakRetained = objc_claimAutoreleasedReturnValue(), (objc_msgSend(WeakRetained, "isClear") & 1) != 0))
    {
      stroke = [v10 stroke];
      if (!stroke)
      {
        if (fill)
        {
        }

        goto LABEL_41;
      }

      v17 = stroke;
      stroke2 = [v10 stroke];
      isNullStroke = [stroke2 isNullStroke];

      if (fill)
      {
      }

      if (isNullStroke)
      {
LABEL_41:
        isVisibleAtBeginning = 0;
LABEL_42:

        goto LABEL_43;
      }
    }

    else
    {
    }

LABEL_21:
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_25:
      [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:v8];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v23 = v33 = 0u;
      v24 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v31;
        isVisibleAtBeginning = 1;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v31 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v30 + 1) + 8 * i);
            if ([v28 eventIndex] >= event)
            {
              if ([v28 eventIndex] >= event)
              {
                isVisibleAtBeginning = [v28 isVisibleAtBeginning];
                goto LABEL_38;
              }
            }

            else
            {
              isVisibleAtBeginning = [v28 isVisibleAtEnd];
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        isVisibleAtBeginning = 1;
      }

LABEL_38:

      goto LABEL_42;
    }

    v20 = objc_loadWeakRetained(&self->_session);
    if ([v20 isPrintingCanvas])
    {

      goto LABEL_25;
    }

    v21 = objc_loadWeakRetained(&self->_session);
    isExportingToPDF = [v21 isExportingToPDF];

    if (isExportingToPDF)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

  isVisibleAtBeginning = 1;
LABEL_43:

  return isVisibleAtBeginning & 1;
}

- (id)visibleInfosDuringEvent:(int64_t)event
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  infos = [(KNAnimatedSlideModel *)self infos];
  v7 = [infos countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(infos);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([(KNAnimatedSlideModel *)self info:v11 isVisibleDuringEvent:event])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [infos countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (int64_t)p_lastEventNumberForInfo:(id)info animationType:(int64_t)type defaultResult:(int64_t)result
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  v8 = v7;
  if (v7)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    reverseObjectEnumerator = [v7 reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if ([v14 buildType] == type)
          {
            result = [v14 eventIndex];
            goto LABEL_12;
          }
        }

        v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return result;
}

- (id)buildChunksForEventRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CBEB58] setWithCapacity:{-[NSMutableArray count](self->_animatedBuilds, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_animatedBuilds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        eventIndex = [v11 eventIndex];
        if (eventIndex >= location && eventIndex - location < length)
        {
          v14 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:v11];
          buildStage = [v14 buildStage];
          buildStage2 = [v14 buildStage];

          if (buildStage2)
          {
            [v18 addObject:buildStage];
          }
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return v18;
}

- (double)durationForEventIndexes:(id)indexes
{
  v25 = *MEMORY[0x277D85DE8];
  indexesCopy = indexes;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  animatedBuilds = [(KNAnimatedSlideModel *)self animatedBuilds];
  v6 = [animatedBuilds countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v21;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(animatedBuilds);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([indexesCopy containsIndex:{objc_msgSend(v13, "eventIndex")}])
        {
          [v13 eventStartTime];
          v15 = v14;
          if (v8)
          {
            if (v14 < v11)
            {
              v11 = v14;
            }

            [v13 eventEndTime];
            if (v16 >= v10)
            {
              v10 = v16;
            }

            v8 = 1;
          }

          else
          {
            [v13 eventEndTime];
            v10 = v17;
            v8 = 1;
            v11 = v15;
          }
        }
      }

      v7 = [animatedBuilds countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);

    if (v8)
    {
      v18 = v10 - v11;
    }

    else
    {
      v18 = 0.0;
    }
  }

  else
  {

    v18 = 0.0;
  }

  return v18;
}

- (double)initialDelayForEventIndex:(unint64_t)index
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(KNAnimatedSlideModel *)self eventsAtIndex:index, 0];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    v7 = INFINITY;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([v9 animateAtEndOfPreviousBuild])
      {
        break;
      }

      [v9 startTime];
      v7 = fmin(v10, v7);
      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v7 = INFINITY;
  }

  result = 0.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return v7;
  }

  return result;
}

- (id)firstAnimatedBuildForInfo:(id)info
{
  v3 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  firstObject = [v3 firstObject];
  parentBuild = [firstObject parentBuild];

  return parentBuild;
}

- (id)lastAnimatedBuildForInfo:(id)info
{
  v3 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  lastObject = [v3 lastObject];
  parentBuild = [lastObject parentBuild];

  return parentBuild;
}

- (id)animatedBuildForInfo:(id)info aroundEvent:(int64_t)event isAtEndOfBuild:(BOOL *)build
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (build)
  {
    *build = 0;
  }

  v9 = [(KNAnimatedSlideModel *)self animatedBuildForInfo:infoCopy atEvent:event];
  if (!v9)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:infoCopy, 0];
    v9 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    v11 = 0;
    if (v9)
    {
      v12 = *v26;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          if ([v14 eventIndex] >= event)
          {
            if ([v14 eventIndex] > event)
            {
              v9 = v14;
              goto LABEL_22;
            }
          }

          else
          {
            if (!v11)
            {
              v11 = v14;
              continue;
            }

            eventIndex = [v14 eventIndex];
            if (eventIndex == [v11 eventIndex])
            {
              [v14 eventEndTime];
              v17 = v16;
              [v11 eventEndTime];
              if (v17 < v18)
              {
                continue;
              }

              parentBuild = [v14 parentBuild];
            }

            else
            {
              eventIndex2 = [v14 eventIndex];
              if (eventIndex2 <= [v11 eventIndex])
              {
                continue;
              }

              parentBuild = v14;
            }

            v21 = parentBuild;

            v11 = v21;
          }
        }

        v9 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

LABEL_22:

    if (!v9)
    {
      v22 = v11;
      v9 = v22;
      if (build)
      {
        if (v22)
        {
          *build = 1;
        }
      }
    }
  }

  parentBuild2 = [v9 parentBuild];

  return parentBuild2;
}

- (id)animatedBuildForInfo:(id)info atEvent:(int64_t)event
{
  v22 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if ([(KNAnimatedSlideModel *)self buildEventCount]&& [(KNAnimatedSlideModel *)self buildEventCount]> event)
  {
    [(NSMutableArray *)self->_buildEvents objectAtIndexedSubscript:event];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v20 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:v12, v17];
          info = [v13 info];

          if (info == infoCopy)
          {
            parentBuild = [v12 parentBuild];

            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    parentBuild = 0;
LABEL_14:
  }

  else
  {
    parentBuild = 0;
  }

  return parentBuild;
}

- (id)previousAnimatedBuildForInfo:(id)info priorToBuild:(id)build
{
  buildCopy = build;
  v7 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  v8 = v7;
  if (v7 && (v9 = [v7 indexOfObject:buildCopy]) != 0)
  {
    v10 = v9;
    v11 = [v8 objectAtIndexedSubscript:v9 - 1];
    if (v11)
    {
      v12 = v10 - 2;
      while ([buildCopy isRelatedTo:v11])
      {
        if (v12 == -1)
        {

          goto LABEL_10;
        }

        v13 = [v8 objectAtIndexedSubscript:v12];

        --v12;
        v11 = v13;
        if (!v13)
        {
          break;
        }
      }
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  parentBuild = [v11 parentBuild];

  return parentBuild;
}

- (id)p_previousAnimatedBuildOfType:(int64_t)type forInfo:(id)info priorToBuild:(id)build
{
  buildCopy = build;
  v9 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  v10 = v9;
  if (v9 && (v11 = [v9 indexOfObject:buildCopy], v11 <= 0x7FFFFFFFFFFFFFFELL))
  {
    v12 = v11;
    while (1)
    {
      v13 = [v10 objectAtIndexedSubscript:v12];
      if ([v13 buildType] == type)
      {
        break;
      }

      if (v12-- <= 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

  return v13;
}

- (id)previousRendererBeforeRenderer:(id)renderer
{
  rendererCopy = renderer;
  info = [rendererCopy info];
  animatedBuild = [rendererCopy animatedBuild];

  v7 = [(KNAnimatedSlideModel *)self previousAnimatedBuildForInfo:info priorToBuild:animatedBuild];

  if (v7)
  {
    v8 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)nextAnimatedBuildForInfo:(id)info afterBuild:(id)build
{
  buildCopy = build;
  v7 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v10 = [v7 indexOfObject:buildCopy] + 1;
    while (v10 < [v8 count])
    {
      v11 = [v8 objectAtIndexedSubscript:v10];

      ++v10;
      v9 = v11;
      if (([buildCopy isRelatedTo:v11] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

LABEL_8:
  parentBuild = [v11 parentBuild];

  return parentBuild;
}

- (id)nextRendererAfterRenderer:(id)renderer
{
  rendererCopy = renderer;
  info = [rendererCopy info];
  v6 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  if (v6 && ([rendererCopy animatedBuild], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "indexOfObject:", v7), v7, v8 + 1 < objc_msgSend(v6, "count")))
  {
    v9 = [v6 objectAtIndexedSubscript:v8 + 1];
    parentBuild = [v9 parentBuild];
    v11 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:parentBuild];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)sortRenderers:(id)renderers
{
  v19 = *MEMORY[0x277D85DE8];
  renderersCopy = renderers;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(renderersCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_animatedBuilds;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if (([v11 isChildBuild] & 1) == 0)
        {
          v12 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:v11];
          if ([renderersCopy containsObject:v12])
          {
            [v5 addObject:v12];
          }
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)actionEffectForDrawable:(id)drawable atBeginningOfEvent:(int64_t)event
{
  v23 = *MEMORY[0x277D85DE8];
  drawableCopy = drawable;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMapTable *)selfCopy->_infoToArrayOfAnimatedBuildsMap objectForKey:drawableCopy];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 isActionBuild])
        {
          if ([v13 eventIndex] == event)
          {
            previousAttributes = [v13 previousAttributes];
            goto LABEL_14;
          }

          if ([v13 eventIndex] < event)
          {
            v14 = v13;

            v10 = v14;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    previousAttributes = 0;
LABEL_14:

    if (previousAttributes)
    {
      v16 = 1;
    }

    else
    {
      v16 = v10 == 0;
    }

    if (!v16)
    {
      previousAttributes = [v10 finalAttributes];
    }
  }

  else
  {

    v10 = 0;
    previousAttributes = 0;
  }

  objc_sync_exit(selfCopy);

  return previousAttributes;
}

- (id)finalActionEffectForDrawable:(id)drawable
{
  if (drawable)
  {
    buildEvents = self->_buildEvents;
    drawableCopy = drawable;
    v6 = [(KNAnimatedSlideModel *)self actionEffectForDrawable:drawableCopy atBeginningOfEvent:[(NSMutableArray *)buildEvents count]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)maxScaleFactorForDrawable:(id)drawable
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:drawable];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = *MEMORY[0x277D80110];
    v8 = 1.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if ([v10 isActionBuild])
        {
          finalAttributes = [v10 finalAttributes];
          objc_opt_class();
          v12 = [finalAttributes objectForKeyedSubscript:v7];
          v13 = TSUCheckedDynamicCast();
          [v13 floatValue];
          v15 = v14;

          if (v8 < v15)
          {
            v8 = v15;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  else
  {
    v8 = 1.0;
  }

  return v8;
}

- (BOOL)isFirstBuildEventAutomatic
{
  buildEventCount = [(KNAnimatedSlideModel *)self buildEventCount];
  if (buildEventCount)
  {
    v4 = [(KNAnimatedSlideModel *)self eventsAtIndex:0];
    firstObject = [v4 firstObject];

    LOBYTE(v4) = [firstObject automatic];
    LOBYTE(buildEventCount) = v4;
  }

  return buildEventCount;
}

- (id)p_animatedBuildForInfo:(id)info event:(int64_t)event buildIn:(BOOL)in
{
  inCopy = in;
  v28 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v9 = 1;
  if (!inCopy)
  {
    v9 = 2;
  }

  v22 = v9;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(NSMutableArray *)self->_buildEvents objectAtIndexedSubscript:event];
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:v15];
        info = [v16 info];
        v18 = info;
        if (info == infoCopy)
        {
          buildType = [v15 buildType];

          if (buildType == v22)
          {
            v20 = v15;

            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_15:

  return v20;
}

- (void)p_sortAnimatedBuilds
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_infoToArrayOfAnimatedBuildsMap;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:*(*(&v9 + 1) + 8 * v7), v9];
        [v8 sortUsingComparator:&unk_2884D5010];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)p_updatePreviousAndFinalAttributes
{
  v68 = *MEMORY[0x277D85DE8];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = self->_infoToArrayOfAnimatedBuildsMap;
  v43 = [(NSMapTable *)obj countByEnumeratingWithState:&v60 objects:v67 count:16];
  if (v43)
  {
    v42 = *v61;
    do
    {
      v2 = 0;
      do
      {
        if (*v61 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v3 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:*(*(&v60 + 1) + 8 * v2)];
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v4 = v3;
        v47 = [v4 countByEnumeratingWithState:&v56 objects:v66 count:16];
        v44 = v2;
        v5 = 0;
        if (v47)
        {
          v46 = *v57;
          do
          {
            for (i = 0; i != v47; ++i)
            {
              if (*v57 != v46)
              {
                objc_enumerationMutation(v4);
              }

              v7 = *(*(&v56 + 1) + 8 * i);
              if ([v7 isActionBuild])
              {
                WeakRetained = objc_loadWeakRetained(&self->_session);
                registry = [WeakRetained registry];
                effectIdentifier = [v7 effectIdentifier];
                v11 = [registry animationInfoForEffectIdentifier:effectIdentifier animationType:{objc_msgSend(v7, "buildType")}];

                animationClass = [v11 animationClass];
                attributes = [v7 attributes];
                v13Attributes = [attributes attributes];
                v15 = [animationClass applyActionEffect:v13Attributes toAttributes:v5];

                v5 = v15;
              }

              [v7 setFinalAttributes:v5];
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v16 = v4;
              v17 = [v16 countByEnumeratingWithState:&v52 objects:v65 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v53;
LABEL_15:
                v20 = 0;
                while (1)
                {
                  if (*v53 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v52 + 1) + 8 * v20);
                  if (v21 == v7)
                  {
                    break;
                  }

                  eventIndex = [*(*(&v52 + 1) + 8 * v20) eventIndex];
                  if (eventIndex == [v7 eventIndex])
                  {
                    [v21 eventEndTime];
                    v24 = v23;
                    [v7 eventEndTime];
                    if (v24 == v25)
                    {
                      [v21 setFinalAttributes:v5];
                    }
                  }

                  if (v18 == ++v20)
                  {
                    v18 = [v16 countByEnumeratingWithState:&v52 objects:v65 count:16];
                    if (v18)
                    {
                      goto LABEL_15;
                    }

                    break;
                  }
                }
              }
            }

            v47 = [v16 countByEnumeratingWithState:&v56 objects:v66 count:16];
          }

          while (v47);
        }

        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v26 = v4;
        v27 = [v26 countByEnumeratingWithState:&v48 objects:v64 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v49;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v49 != v29)
              {
                objc_enumerationMutation(v26);
              }

              v31 = *(*(&v48 + 1) + 8 * j);
              [v31 eventStartTime];
              if (v32 != 0.0 || [v31 eventIndex])
              {
                v33 = [v26 indexOfObject:v31];
                if (v33 - 1 >= 0)
                {
                  v34 = v33;
                  while (1)
                  {
                    v35 = [v26 objectAtIndexedSubscript:--v34];
                    eventIndex2 = [v35 eventIndex];
                    if (eventIndex2 < [v31 eventIndex])
                    {
                      break;
                    }

                    [v35 eventEndTime];
                    v38 = v37;
                    [v31 eventStartTime];
                    if (v38 <= v39)
                    {
                      break;
                    }

                    if (v34 <= 0)
                    {
                      goto LABEL_40;
                    }
                  }

                  finalAttributes = [v35 finalAttributes];
                  [v31 setPreviousAttributes:finalAttributes];
                }
              }

LABEL_40:
              ;
            }

            v28 = [v26 countByEnumeratingWithState:&v48 objects:v64 count:16];
          }

          while (v28);
        }

        v2 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [(NSMapTable *)obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    }

    while (v43);
  }
}

- (void)p_updateVisibilityOnAnimatedBuild:(id)build
{
  v53 = *MEMORY[0x277D85DE8];
  buildCopy = build;
  v6 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:buildCopy];
  info = [v6 info];
  buildStage = [v6 buildStage];
  build = [buildStage build];

  objc_opt_class();
  v10 = TSUDynamicCast();
  v11 = v10;
  if (!v10)
  {
    if (![0 displaysInstructionalText])
    {
      goto LABEL_16;
    }

    isEmpty = 0;
LABEL_7:
    WeakRetained = objc_loadWeakRetained(&self->_session);
    shouldShowInstructionalText = [WeakRetained shouldShowInstructionalText];

    if (!isEmpty || (shouldShowInstructionalText & 1) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  isEmpty = [v10 isEmpty];
  if ([v11 displaysInstructionalText])
  {
    goto LABEL_7;
  }

  if (!isEmpty)
  {
    goto LABEL_16;
  }

LABEL_9:
  fill = [v11 fill];
  if (!fill || ([v11 fill], shouldShowInstructionalText = objc_claimAutoreleasedReturnValue(), (objc_msgSend(shouldShowInstructionalText, "isClear") & 1) != 0))
  {
    stroke = [v11 stroke];
    if (!stroke)
    {
      if (fill)
      {
      }

      goto LABEL_17;
    }

    v16 = stroke;
    v46 = build;
    stroke2 = [v11 stroke];
    isNullStroke = [stroke2 isNullStroke];

    if (fill)
    {
    }

    build = v46;
    if (isNullStroke)
    {
LABEL_17:
      [buildCopy setIsVisibleAtEnd:0];
      v19 = buildCopy;
      v20 = 0;
LABEL_20:
      [v19 setIsVisibleAtBeginning:v20];
      goto LABEL_21;
    }
  }

  else
  {
  }

LABEL_16:
  if ([buildCopy isDriftBuild])
  {
    goto LABEL_17;
  }

  if ([buildCopy isImplicitlyVisibleAtBeginning])
  {
LABEL_19:
    [buildCopy setIsVisibleAtEnd:1];
    v19 = buildCopy;
    v20 = 1;
    goto LABEL_20;
  }

  if ([buildCopy isMagicChartBuild])
  {
    objc_opt_class();
    TSUCheckedDynamicCast();
    v27 = info;
    v29 = v28 = build;
    [buildCopy setIsVisibleAtBeginning:{objc_msgSend(v29, "isVisibleAtBeginningOfMagicChartBuildForDeliveryStyle:", objc_msgSend(buildCopy, "deliveryStyle"))}];
    [buildCopy setIsVisibleAtEnd:1];

    build = v28;
    info = v27;
    goto LABEL_21;
  }

  if ([buildCopy isBuildIn])
  {
    [buildCopy setIsVisibleAtBeginning:{objc_msgSend(buildCopy, "stageIndex") > 0}];
    [buildCopy setIsVisibleAtEnd:1];
    v37 = build;
    stageIndex = [buildCopy stageIndex];
    v39 = stageIndex == [v37 chunkCount] - 1;
    build = v37;
  }

  else
  {
    if (![buildCopy isBuildOut])
    {
      goto LABEL_19;
    }

    v41 = build;
    [buildCopy setIsVisibleAtBeginning:1];
    [buildCopy setIsLastStage:0];
    requiresStagesBuildingInReverse = [info requiresStagesBuildingInReverse];
    stageIndex2 = [buildCopy stageIndex];
    if (!requiresStagesBuildingInReverse)
    {
      [buildCopy setIsVisibleAtEnd:stageIndex2 > 0];
      [buildCopy setIsLastStage:{objc_msgSend(buildCopy, "stageIndex") == 0}];
      build = v41;
      goto LABEL_21;
    }

    [buildCopy setIsVisibleAtEnd:{stageIndex2 < objc_msgSend(v41, "chunkCount") - 1}];
    stageIndex3 = [buildCopy stageIndex];
    v39 = stageIndex3 == [v41 chunkCount] - 1;
    build = v41;
  }

  v40 = v39;
  [buildCopy setIsLastStage:v40];
LABEL_21:
  v21 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:info];
  if (v21)
  {
    if ((([buildCopy isBuildIn] & 1) != 0 || objc_msgSend(buildCopy, "isBuildOut")) && !objc_msgSend(buildCopy, "stageIndex"))
    {
      v45 = v6;
      v47 = build;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      reverseObjectEnumerator = [v21 reverseObjectEnumerator];
      v31 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v49;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v49 != v33)
            {
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v35 = *(*(&v48 + 1) + 8 * i);
            if (([v35 isActionBuild] & 1) != 0 || objc_msgSend(v35, "isContentBuild"))
            {
              if ([buildCopy isImplicitlyVisibleAtBeginning])
              {
                v36 = 1;
              }

              else
              {
                v36 = [buildCopy isBuildIn] ^ 1;
              }

              [v35 setIsVisibleAtEnd:v36];
              [v35 setIsVisibleAtBeginning:v36];
            }

            else if (v35 != buildCopy)
            {
              goto LABEL_45;
            }
          }

          v32 = [reverseObjectEnumerator countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v32);
      }

LABEL_45:

      v6 = v45;
      build = v47;
    }

    else if (([buildCopy isActionBuild] & 1) != 0 || objc_msgSend(buildCopy, "isContentBuild"))
    {
      v22 = [v21 indexOfObject:buildCopy];
      if (v22)
      {
        [v21 objectAtIndexedSubscript:v22 - 1];
        v23 = info;
        v25 = v24 = build;
        isVisibleAtEnd = [v25 isVisibleAtEnd];
        [buildCopy setIsVisibleAtEnd:isVisibleAtEnd];
        [buildCopy setIsVisibleAtBeginning:isVisibleAtEnd];

        build = v24;
        info = v23;
      }
    }
  }
}

- (BOOL)p_isInfoInvalidWithImplicitAmbientAnimations:(id)animations
{
  animationsCopy = animations;
  objc_opt_class();
  v4 = TSUClassAndProtocolCast();

  if (v4)
  {
    v5 = [v4 canAddImplicitAmbientAnimations] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)p_animatedBuildsForInfo:(id)info animationType:(int64_t)type duringEvent:(int64_t)event time:(double)time
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v11 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:infoCopy];
  v12 = v11;
  if (v11 && (v24 = 0u, v25 = 0u, v22 = 0u, v23 = 0u, (v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16]) != 0))
  {
    v14 = v13;
    array = 0;
    v16 = *v23;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if ([v18 buildType] == type && objc_msgSend(v18, "eventIndex") == event)
        {
          [v18 eventStartTime];
          if (v19 <= time)
          {
            [v18 eventEndTime];
            if (v20 > time)
            {
              if (!array)
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              [array addObject:v18];
            }
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  else
  {
    array = 0;
  }

  return array;
}

- (BOOL)p_isEmphasisBuild:(id)build
{
  buildCopy = build;
  build = [buildCopy build];
  effect = [build effect];

  WeakRetained = objc_loadWeakRetained(&self->_session);
  registry = [WeakRetained registry];
  build2 = [buildCopy build];

  v10 = [registry animationInfoForEffectIdentifier:effect animationType:{objc_msgSend(build2, "animationType")}];

  animationClass = [v10 animationClass];
  if (objc_opt_respondsToSelector())
  {
    isEmphasisBuildAnimation = [animationClass isEmphasisBuildAnimation];
  }

  else
  {
    isEmphasisBuildAnimation = 0;
  }

  return isEmphasisBuildAnimation;
}

- (void)p_convertToBuildEvents:(id)events
{
  v158 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  if (self->_buildEvents)
  {
    v5 = MEMORY[0x277D81150];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideModel p_convertToBuildEvents:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m"];
    [v5 handleFailureInFunction:v6 file:v7 lineNumber:820 isFatal:0 description:{"expected nil value for '%{public}s'", "_buildEvents"}];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  buildEvents = self->_buildEvents;
  self->_buildEvents = v8;

  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  infoToArrayOfAnimatedBuildsMap = self->_infoToArrayOfAnimatedBuildsMap;
  self->_infoToArrayOfAnimatedBuildsMap = strongToStrongObjectsMapTable;

  WeakRetained = objc_loadWeakRetained(&self->_session);
  playMode = [WeakRetained playMode];

  v153 = 0u;
  v154 = 0u;
  v151 = 0u;
  v152 = 0u;
  obj = eventsCopy;
  v13 = [obj countByEnumeratingWithState:&v151 objects:v157 count:16];
  if (!v13)
  {
    v136 = 0;
    v137 = 0;
    v15 = 0;
    v134 = 0;
    goto LABEL_113;
  }

  v14 = v13;
  v131 = 0;
  v136 = 0;
  v137 = 0;
  v15 = 0;
  v134 = 0;
  v142 = 0;
  v140 = *v152;
  v16 = 0.0;
  v17 = 1;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  do
  {
    v22 = 0;
    v132 = v14;
    do
    {
      if (*v152 != v140)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v151 + 1) + 8 * v22);
      build = [v23 build];
      drawable = [build drawable];
      v26 = [(KNAnimatedSlideModel *)self p_isInfoInvalidWithImplicitAmbientAnimations:drawable];

      if (v26)
      {
        goto LABEL_99;
      }

      build2 = [v23 build];
      attributes = [build2 attributes];
      v29 = [attributes valueForAttributeKey:@"KNBuildAttributesStartOffset"];
      integerValue = [v29 integerValue];

      build3 = [v23 build];
      attributes2 = [build3 attributes];
      v33 = [attributes2 valueForAttributeKey:@"KNBuildAttributesEndOffset"];
      integerValue2 = [v33 integerValue];

      if (integerValue | integerValue2)
      {
        if ([v23 indexInBuild] < integerValue || (v35 = objc_msgSend(v23, "indexInBuild"), objc_msgSend(v23, "build"), v36 = objc_claimAutoreleasedReturnValue(), v37 = v15, v38 = objc_msgSend(v36, "chunkCount") - integerValue2, v36, v39 = v35 >= v38, v15 = v37, v39))
        {
          v14 = v132;
          goto LABEL_99;
        }
      }

      isAutomatic = [v23 isAutomatic];
      build4 = [v23 build];
      drawable2 = [build4 drawable];

      if (((v17 | isAutomatic) & 1) == 0)
      {
        if (playMode == 1)
        {
          v46 = objc_loadWeakRetained(&self->_session);
          [v46 autoplayBuildDelay];
          v18 = v47;
        }

        else
        {
          [v23 delay];
          v18 = v52;
        }

        ++v142;

        parentBuild6 = 0;
        v131 = 0;
        parentBuild4 = 0;
        v15 = 0;
        v48 = v137;
        v20 = v18;
        goto LABEL_90;
      }

      if ((isAutomatic & 1) == 0)
      {
        if (playMode == 1)
        {
          v48 = objc_loadWeakRetained(&self->_session);
          [v48 autoplayBuildDelay];
          v18 = v49;
          parentBuild6 = 0;
          parentBuild4 = v137;
          v20 = v49;
          goto LABEL_90;
        }

        parentBuild6 = 0;
        v18 = v19;
        v20 = v21;
        v53 = v137;
        goto LABEL_91;
      }

      [v23 delay];
      v43 = v42;
      referent = [v23 referent];
      if (referent == 1)
      {
        goto LABEL_27;
      }

      if (!referent)
      {
        objc_msgSend_duration(v15);
        if (v43 >= v45)
        {
          objc_msgSend_duration(v15);
          v43 = v43 - v54;
LABEL_27:
          if (!v15)
          {
            v123 = 1;
            v20 = v43;
            goto LABEL_37;
          }

          parentBuild = [v15 parentBuild];
          build5 = [v136 build];
          drawable3 = [build5 drawable];
          v58 = drawable3;
          if (drawable2 == drawable3 || v15 == parentBuild)
          {
          }

          else
          {
            [parentBuild eventEndTime];
            v60 = v59;
            [v15 eventEndTime];
            v62 = v61;

            if (v60 > v62)
            {
              [parentBuild eventEndTime];
              v64 = v63;
              [v15 eventEndTime];
              v66 = v64 - v65;
              if (v43 < v66)
              {
                [v15 endTime];
                v123 = 0;
                v20 = v43 + v109;
              }

              else
              {
                v67 = parentBuild;

                v20 = v43 - v66;
                v123 = 1;
                v131 = 1;
                v137 = v67;
              }

              goto LABEL_36;
            }
          }

          v68 = parentBuild;

          v123 = 1;
          v131 = 1;
          v137 = v68;
          v20 = v43;
LABEL_36:

          goto LABEL_37;
        }
      }

      v123 = 0;
      v20 = v20 + v43;
      v16 = v18;
LABEL_37:
      build6 = [v23 build];
      animationType = [build6 animationType];

      build7 = [v23 build];
      animationType2 = [build7 animationType];

      build8 = [v23 build];
      animationType3 = [build8 animationType];

      v130 = animationType3 == 4 && [(KNAnimatedSlideModel *)self p_isEmphasisBuild:v23];
      v18 = v43 + v16;
      v48 = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:drawable2];
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v150 = 0u;
      reverseObjectEnumerator = [v48 reverseObjectEnumerator];
      v139 = [reverseObjectEnumerator countByEnumeratingWithState:&v147 objects:v156 count:16];
      if (!v139)
      {
        parentBuild4 = v137;
        goto LABEL_86;
      }

      v125 = v48;
      v126 = animationType3;
      v124 = v15;
      v138 = *v148;
      v73 = v18 - v20;
LABEL_42:
      v74 = 0;
      while (1)
      {
        selfCopy = self;
        if (*v148 != v138)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v76 = *(*(&v147 + 1) + 8 * v74);
        if (v142 != [v76 eventIndex])
        {
          parentBuild4 = v137;
          goto LABEL_73;
        }

        effectIdentifier = [v76 effectIdentifier];
        build9 = [v23 build];
        animationInfo = [build9 animationInfo];
        effectIdentifier2 = [animationInfo effectIdentifier];
        v81 = [effectIdentifier isEqualToString:effectIdentifier2];

        self = selfCopy;
        if ([v76 isActionBuild])
        {
          if (![v76 isActionBuild])
          {
            goto LABEL_61;
          }

          if (animationType == 2)
          {
            v82 = 1;
          }

          else
          {
            v82 = v81;
          }

          if (animationType2 == 1)
          {
            v82 = 1;
          }

          if (((v82 | v130) & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        [v76 eventEndTime];
        v84 = v83;
        parentBuild2 = [v76 parentBuild];
        parentBuild4 = parentBuild2;
        if (v84 >= v18)
        {
          break;
        }

        [parentBuild2 eventEndTime];
        v87 = v86 < v73 || v86 == v73;
        if (!v87 && vabdd_f64(v86, v73) >= 0.0001)
        {
          parentBuild3 = [v76 parentBuild];
          [parentBuild3 eventEndTime];
          if (v89 < v18)
          {
            v90 = v89;

            if (v90 != v18 && vabdd_f64(v90, v18) >= 0.00999999978)
            {
              parentBuild4 = [v76 parentBuild];

              [parentBuild4 eventEndTime];
              v20 = v18 - v110;
              v131 = 1;
LABEL_73:
              v15 = v124;
              goto LABEL_85;
            }

            goto LABEL_61;
          }
        }

LABEL_61:
        if (v139 == ++v74)
        {
          v91 = [reverseObjectEnumerator countByEnumeratingWithState:&v147 objects:v156 count:16];
          v139 = v91;
          if (!v91)
          {
            parentBuild4 = v137;
            goto LABEL_73;
          }

          goto LABEL_42;
        }
      }

      v92 = animationType == 2 || v130;
      if ((v92 & 1) != 0 || animationType2 == 1)
      {
        parentBuild5 = [v76 parentBuild];
        [parentBuild5 eventEndTime];
        v18 = v95;
      }

      else
      {
        [v76 eventEndTime];
        v18 = v93;
      }

      v15 = v124;
      if (((v126 == 4) & v81) != 1 || ([v76 parentBuild], v96 = objc_claimAutoreleasedReturnValue(), v96, v96 == v76))
      {
        v20 = 0.0;
      }

      v131 = 1;
LABEL_85:
      v48 = v125;
      animationType3 = v126;
LABEL_86:

      if (self->_isMetalSlide && animationType3 == 4 && !v130)
      {
        v104 = [(KNAnimatedSlideModel *)self p_animatedBuildsForInfo:drawable2 animationType:4 duringEvent:v142 time:v18];
        v105 = v104;
        if (v104)
        {
          firstObject = [v104 firstObject];
          parentBuild6 = [firstObject parentBuild];
          if (v123)
          {
            v107 = v18;
            if (v15)
            {
              [v15 endTime];
              v107 = v20 + v108;
            }

            v131 = 0;
            parentBuild4 = 0;
            v20 = v107;
          }
        }

        else
        {
          parentBuild6 = 0;
        }
      }

      else
      {
        parentBuild6 = 0;
      }

LABEL_90:

      v53 = parentBuild4;
LABEL_91:
      v137 = v53;
      v97 = [KNAnimatedSlideModel p_createBuildAnimationRecords:"p_createBuildAnimationRecords:info:event:start:eventStart:animateAtEndOfPreviousBuild:previousAnimatedBuild:parentBuild:" info:v23 event:drawable2 start:v142 eventStart:v131 & 1 animateAtEndOfPreviousBuild:v20 previousAnimatedBuild:v18 parentBuild:?];
      array = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:drawable2];
      if (!array)
      {
        array = [MEMORY[0x277CBEB18] array];
        [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap setObject:array forKey:drawable2];
      }

      [array addObject:v97];
      [(KNAnimatedSlideModel *)self p_updateVisibilityOnAnimatedBuild:v97];
      v99 = v97;

      v100 = v23;
      if (self->_isMetalSlide)
      {
        [v99 eventEndTime];
        v16 = v101;
      }

      else
      {
        objc_msgSend_duration(v100);
        v16 = v18 + v102;
      }

      v15 = v99;
      v14 = v132;
      v103 = v134;
      if (v142 > v134)
      {
        v103 = v142;
      }

      v134 = v103;

      v17 = 0;
      v136 = v100;
      v19 = v18;
      v21 = v20;
LABEL_99:
      ++v22;
    }

    while (v22 != v14);
    v111 = [obj countByEnumeratingWithState:&v151 objects:v157 count:16];
    v14 = v111;
  }

  while (v111);
LABEL_113:
  v112 = v15;

  [(KNAnimatedSlideModel *)self p_sortAnimatedBuilds];
  [(KNAnimatedSlideModel *)self p_updatePreviousAndFinalAttributes];
  if ([(NSMutableArray *)self->_animatedBuilds count]&& (v134 & 0x8000000000000000) == 0)
  {
    v113 = v134 + 1;
    do
    {
      v114 = self->_buildEvents;
      v115 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      [(NSMutableArray *)v114 addObject:v115];

      --v113;
    }

    while (v113);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v116 = self->_animatedBuilds;
  v117 = [(NSMutableArray *)v116 countByEnumeratingWithState:&v143 objects:v155 count:16];
  if (v117)
  {
    v118 = v117;
    v119 = *v144;
    do
    {
      for (i = 0; i != v118; ++i)
      {
        if (*v144 != v119)
        {
          objc_enumerationMutation(v116);
        }

        v121 = *(*(&v143 + 1) + 8 * i);
        v122 = -[NSMutableArray objectAtIndexedSubscript:](self->_buildEvents, "objectAtIndexedSubscript:", [v121 eventIndex]);
        [v121 setIndexInEvent:{objc_msgSend(v122, "count")}];
        [v122 addObject:v121];
      }

      v118 = [(NSMutableArray *)v116 countByEnumeratingWithState:&v143 objects:v155 count:16];
    }

    while (v118);
  }
}

- (id)p_newImplicitAmbientBuildRendererWithDrawable:(id)drawable stageIndex:(int64_t)index buildChunk:(id)chunk startTime:(double)time eventStartTime:(double)startTime event:(int64_t)event animateAtEndOfPreviousBuild:(BOOL)build
{
  chunkCopy = chunk;
  drawableCopy = drawable;
  v18 = [KNAnimatedBuild alloc];
  build = [chunkCopy build];
  animationInfo = [build animationInfo];
  effectIdentifier = [animationInfo effectIdentifier];
  BYTE1(v27) = build;
  LOBYTE(v27) = 1;
  v22 = [(KNAnimatedBuild *)v18 initWithBuildType:1 effectIdentifier:effectIdentifier attributes:0 pluginClass:0 deliveryStyle:0 deliveryOption:1 eventIndex:time stageIndex:startTime startTime:0.0 eventStartTime:event duration:index direction:0 automatic:v27 animateAtEndOfPreviousBuild:0 parentBuild:?];

  WeakRetained = objc_loadWeakRetained(&self->_session);
  v24 = objc_loadWeakRetained(&self->_ASV);
  v25 = [drawableCopy newImplicitAmbientBuildRendererWithAnimatedBuild:v22 buildChunk:chunkCopy session:WeakRetained animatedSlideView:v24];

  [(KNAnimatedSlideModel *)self p_setRenderer:v25 forAnimatedBuild:v22];
  [(KNAnimatedSlideModel *)self p_addAmbientBuildRenderer:v25];

  return v25;
}

- (id)rendererForAnimatedBuild:(id)build
{
  if (build)
  {
    v4 = [(NSMapTable *)self->_animatedBuildToRendererMap objectForKey:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)p_setRenderer:(id)renderer forAnimatedBuild:(id)build
{
  rendererCopy = renderer;
  buildCopy = build;
  animatedBuildToRendererMap = self->_animatedBuildToRendererMap;
  if (!animatedBuildToRendererMap)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    v9 = self->_animatedBuildToRendererMap;
    self->_animatedBuildToRendererMap = strongToStrongObjectsMapTable;

    animatedBuildToRendererMap = self->_animatedBuildToRendererMap;
  }

  [(NSMapTable *)animatedBuildToRendererMap setObject:rendererCopy forKey:buildCopy];
}

- (Class)p_effectClassForEffect:(id)effect animationType:(int64_t)type hasParentBuild:(BOOL)build
{
  effectCopy = effect;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  registry = [WeakRetained registry];
  v10 = [registry animationInfoForEffectIdentifier:effectCopy animationType:type];

  animationClass = [v10 animationClass];

  return animationClass;
}

- (Class)p_rendererClassForBuildChunk:(id)chunk parentBuild:(id)build effectClass:(Class *)class
{
  buildCopy = build;
  build = [chunk build];
  effect = [build effect];
  animationType = [build animationType];
  drawable = [build drawable];
  v13 = [(KNAnimatedSlideModel *)self p_rendererClassForEffect:effect animationType:animationType drawable:drawable parentBuild:buildCopy effectClass:class];

  return v13;
}

- (Class)p_rendererClassForEffect:(id)effect animationType:(int64_t)type drawable:(id)drawable parentBuild:(id)build effectClass:(Class *)class
{
  effectCopy = effect;
  v12 = objc_opt_class();
  v13 = [(KNAnimatedSlideModel *)self p_effectClassForEffect:effectCopy animationType:type hasParentBuild:build != 0];

  *class = v13;
  if (objc_opt_respondsToSelector())
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    animationContext = [WeakRetained animationContext];
    v16 = [(objc_class *)v13 rendererTypeForAnimationContext:animationContext];

    v17 = [(objc_class *)v13 conformsToProtocol:&unk_288512818];
    v18 = 4;
    if (v17)
    {
      v18 = 1;
    }

    if (v16 == 4)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    v20 = objc_loadWeakRetained(&self->_session);
    shouldPreferCARenderer = [v20 shouldPreferCARenderer];

    if ((shouldPreferCARenderer & v17) != 0)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19;
    }

    if (v22 == 4)
    {
      v31 = MEMORY[0x277D81150];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideModel p_rendererClassForEffect:animationType:drawable:parentBuild:effectClass:]"];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m"];
      v26 = "Not expecting metal or motion blur wrapper renderer type for builds";
      v27 = v31;
      v28 = v24;
      v29 = v25;
      v30 = 1218;
    }

    else
    {
      if (v22 == 1)
      {
        v12 = objc_opt_class();
        goto LABEL_17;
      }

      if (v22)
      {
        goto LABEL_17;
      }

      v23 = MEMORY[0x277D81150];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideModel p_rendererClassForEffect:animationType:drawable:parentBuild:effectClass:]"];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m"];
      v26 = "Invalid renderer type!";
      v27 = v23;
      v28 = v24;
      v29 = v25;
      v30 = 1209;
    }

    [v27 handleFailureInFunction:v28 file:v29 lineNumber:v30 isFatal:0 description:v26];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

LABEL_17:

  return v12;
}

- (id)p_createBuildAnimationRecords:(id)records info:(id)info event:(int64_t)event start:(double)start eventStart:(double)eventStart animateAtEndOfPreviousBuild:(BOOL)build previousAnimatedBuild:(id)animatedBuild parentBuild:(id)self0
{
  buildCopy = build;
  recordsCopy = records;
  infoCopy = info;
  animatedBuildCopy = animatedBuild;
  parentBuildCopy = parentBuild;
  build = [recordsCopy build];
  animationType = [build animationType];

  indexInBuild = [recordsCopy indexInBuild];
  if (([infoCopy requiresStagesBuildingInReverse] & 1) == 0 && animationType == 2)
  {
    build2 = [recordsCopy build];
    chunkCount = [build2 chunkCount];
    indexInBuild = chunkCount + ~[recordsCopy indexInBuild];
  }

  v73 = indexInBuild;
  if (([recordsCopy isAutomatic] & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_session);
    v27 = [WeakRetained playMode] != 1;

    if (v27 && indexInBuild != 0)
    {
      eventStart = 0.0;
      start = 0.0;
    }
  }

  v76[0] = 0;
  v68 = parentBuildCopy;
  if (parentBuildCopy)
  {
    build3 = [recordsCopy build];
    effect = [build3 effect];

    build4 = [recordsCopy build];
    v76[0] = -[KNAnimatedSlideModel p_effectClassForEffect:animationType:hasParentBuild:](self, "p_effectClassForEffect:animationType:hasParentBuild:", effect, [build4 animationType], 1);

    v63 = 0;
  }

  else
  {
    v63 = [(KNAnimatedSlideModel *)self p_rendererClassForBuildChunk:recordsCopy parentBuild:0 effectClass:v76];
  }

  build5 = [recordsCopy build];
  attributes = [build5 attributes];
  v33 = [(KNAnimatedSlideModel *)self p_applyThemeCurvesToBuildAttributes:attributes];
  v34 = [v33 copy];

  objc_msgSend_duration(recordsCopy);
  v36 = v35;
  if ([v76[0] isSubclassOfClass:objc_opt_class()])
  {
    v37 = [build5 customTextDelivery] == 2 || objc_msgSend(build5, "customTextDelivery") == 3;
  }

  else
  {
    v37 = 0;
  }

  eventCopy = event;
  v75 = v34;
  v72 = infoCopy;
  v62 = animationType;
  if (self->_isMetalSlide && (!(v37 | (([v76[0] isSubclassOfClass:objc_opt_class()] & 1) == 0)) || (objc_msgSend(v76[0], "isSubclassOfClass:", objc_opt_class()) & 1) != 0 || v36 < 0.001))
  {
    v38 = objc_loadWeakRetained(&self->_session);
    if ([v38 isPreview])
    {
      v36 = 0.5;
    }

    else
    {
      v36 = 0.001;
    }
  }

  selfCopy = self;
  v67 = [KNAnimatedBuild alloc];
  animationType2 = [build5 animationType];
  build6 = [recordsCopy build];
  animationInfo = [build6 animationInfo];
  effectIdentifier = [animationInfo effectIdentifier];
  v65 = v76[0];
  deliveryStyle = [build5 deliveryStyle];
  v70 = animatedBuildCopy;
  if ([build5 supportsCustomTextDelivery])
  {
    customTextDelivery = [build5 customTextDelivery];
  }

  else
  {
    customTextDelivery = 0;
  }

  direction = [build5 direction];
  BYTE1(v61) = buildCopy;
  LOBYTE(v61) = [recordsCopy isAutomatic];
  v60 = direction;
  v45 = v34;
  v46 = [(KNAnimatedBuild *)v67 initWithBuildType:animationType2 effectIdentifier:effectIdentifier attributes:v34 pluginClass:v65 deliveryStyle:deliveryStyle deliveryOption:customTextDelivery eventIndex:start stageIndex:eventStart startTime:v36 eventStartTime:event duration:v73 direction:v60 automatic:v61 animateAtEndOfPreviousBuild:v68 parentBuild:?];

  if (!v68)
  {
    v69 = build5;
    v47 = [v63 alloc];
    v48 = objc_loadWeakRetained(&selfCopy->_ASV);
    v49 = [v47 initWithAnimatedBuild:v46 info:v72 buildStage:recordsCopy animatedSlideView:v48];

    [(KNAnimatedSlideModel *)selfCopy p_setRenderer:v49 forAnimatedBuild:v46];
    if (buildCopy)
    {
      parentBuild = [v70 parentBuild];
      v51 = [(KNAnimatedSlideModel *)selfCopy rendererForAnimatedBuild:parentBuild];

      [v51 addBuildToStartAtEnd:v46];
    }

    [(NSMutableArray *)selfCopy->_animatedBuilds addObject:v46];
    v52 = objc_loadWeakRetained(&selfCopy->_session);
    isMetalEnabled = [v52 isMetalEnabled];

    if (isMetalEnabled)
    {
      goto LABEL_37;
    }

    objc_opt_class();
    v54 = TSUClassAndProtocolCast();
    if (v54 && v62 == 1)
    {
      v55 = objc_loadWeakRetained(&selfCopy->_session);
      if ([v55 playMode] == 2)
      {
LABEL_35:

        goto LABEL_36;
      }

      v56 = objc_loadWeakRetained(&selfCopy->_session);
      playMode = [v56 playMode];

      if (playMode != 5)
      {
        v55 = [(KNAnimatedSlideModel *)selfCopy p_newImplicitAmbientBuildRendererWithDrawable:v54 stageIndex:v73 buildChunk:recordsCopy startTime:eventCopy eventStartTime:1 event:0.0 animateAtEndOfPreviousBuild:0.0];
        [v55 setBuildInRenderer:v49];
        animatedBuild = [v55 animatedBuild];
        [v49 addBuildToStartAtEnd:animatedBuild];

        goto LABEL_35;
      }
    }

LABEL_36:

LABEL_37:
    build5 = v69;
    v45 = v75;
  }

  return v46;
}

- (void)p_addAmbientBuildRenderer:(id)renderer
{
  rendererCopy = renderer;
  ambientBuildRenderers = self->_ambientBuildRenderers;
  v8 = rendererCopy;
  if (!ambientBuildRenderers)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:1];
    v7 = self->_ambientBuildRenderers;
    self->_ambientBuildRenderers = v6;

    rendererCopy = v8;
    ambientBuildRenderers = self->_ambientBuildRenderers;
  }

  [(NSMutableSet *)ambientBuildRenderers addObject:rendererCopy];
}

- (void)p_insertInitialAmbientAnimations
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v4 = self->_infos;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v74;
    v55 = *v74;
    do
    {
      v10 = 0;
      v56 = v6;
      do
      {
        if (*v74 != v9)
        {
          objc_enumerationMutation(v4);
        }

        if (![(KNAnimatedSlideModel *)self p_isInfoInvalidWithImplicitAmbientAnimations:*(*(&v73 + 1) + 8 * v10), v52])
        {
          objc_opt_class();
          v52 = &unk_288532838;
          v11 = TSUClassAndProtocolCast();
          if (v11 && [(KNAnimatedSlideModel *)self p_shouldAnimateImplicitAmbientAnimatingDrawableAtFirstEvent:v11, &unk_288532838])
          {
            WeakRetained = objc_loadWeakRetained(&self->_session);
            isMetalEnabled = [WeakRetained isMetalEnabled];

            v58 = v8;
            if (isMetalEnabled)
            {
              implicitAmbientAnimationEffectIdentifier = [v11 implicitAmbientAnimationEffectIdentifier];
              v72 = 0;
              v54 = implicitAmbientAnimationEffectIdentifier;
              v15 = v8;
              v16 = [(KNAnimatedSlideModel *)self p_rendererClassForEffect:implicitAmbientAnimationEffectIdentifier animationType:1 drawable:v11 parentBuild:0 effectClass:&v72];
              v17 = [KNAnimatedBuild alloc];
              BYTE1(v53) = v15 != 0;
              LOBYTE(v53) = 1;
              v18 = [(KNAnimatedBuild *)v17 initWithBuildType:1 effectIdentifier:implicitAmbientAnimationEffectIdentifier attributes:0 pluginClass:v72 deliveryStyle:0 deliveryOption:1 eventIndex:0.0 stageIndex:0.0 startTime:0.0 eventStartTime:0 duration:0 direction:0 automatic:v53 animateAtEndOfPreviousBuild:0 parentBuild:?];
              v19 = [v16 alloc];
              v20 = v4;
              v21 = v7;
              v22 = v3;
              v23 = objc_loadWeakRetained(&self->_ASV);
              v24 = [v19 initWithAnimatedBuild:v18 info:v11 buildStage:0 animatedSlideView:v23];

              v3 = v22;
              v7 = v21;
              v4 = v20;
            }

            else
            {
              BYTE1(v53) = v8 != 0;
              LOBYTE(v53) = 1;
              v18 = [[KNAnimatedBuild alloc] initWithBuildType:1 effectIdentifier:@"InitialAmbientAnimationStart" attributes:0 pluginClass:0 deliveryStyle:0 deliveryOption:1 eventIndex:0.0 stageIndex:0.0 startTime:0.0 eventStartTime:0 duration:0 direction:0 automatic:v53 animateAtEndOfPreviousBuild:0 parentBuild:?];
              v25 = objc_loadWeakRetained(&self->_session);
              v26 = objc_loadWeakRetained(&self->_ASV);
              v24 = [v11 newImplicitAmbientBuildRendererWithAnimatedBuild:v18 buildChunk:0 session:v25 animatedSlideView:v26];

              [(KNAnimatedSlideModel *)self p_addAmbientBuildRenderer:v24];
            }

            [(KNAnimatedSlideModel *)self p_setRenderer:v24 forAnimatedBuild:v18];
            [(KNAnimatedBuild *)v18 setIsInitialAmbientBuild:1];
            [(NSMutableArray *)self->_animatedBuilds addObject:v18];
            [v3 addObject:v18];
            array = [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap objectForKey:v11];
            if (!array)
            {
              array = [MEMORY[0x277CBEB18] array];
              [(NSMapTable *)self->_infoToArrayOfAnimatedBuildsMap setObject:array forKey:v11];
            }

            [array insertObject:v18 atIndex:0];
            [(KNAnimatedSlideModel *)self p_updateVisibilityOnAnimatedBuild:v18];
            if (v7 && v58)
            {
              [v7 addBuildToStartAtEnd:v18];
            }

            v8 = v58 + 1;
            v9 = v55;
            v6 = v56;
          }

          else
          {
            v24 = v7;
          }

          v7 = v24;
        }

        ++v10;
      }

      while (v6 != v10);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v73 objects:v80 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  if ([v3 count])
  {
    v57 = v7;
    v59 = v3;
    if (-[NSMutableArray count](self->_buildEvents, "count") && (-[NSMutableArray objectAtIndexedSubscript:](self->_animatedBuilds, "objectAtIndexedSubscript:", 0), v28 = objc_claimAutoreleasedReturnValue(), v29 = [v28 automatic], v28, v29))
    {
      lastObject = [v59 lastObject];
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v31 = [(NSMutableArray *)self->_buildEvents objectAtIndexedSubscript:0];
      v32 = [v31 countByEnumeratingWithState:&v68 objects:v79 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v69;
LABEL_29:
        v35 = 0;
        while (1)
        {
          if (*v69 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v68 + 1) + 8 * v35);
          if ([v36 animateAtEndOfPreviousBuild])
          {
            break;
          }

          v37 = [(KNAnimatedSlideModel *)self rendererForAnimatedBuild:lastObject];
          [v37 addBuildToStartAtEnd:v36];

          [v36 setAnimateAtEndOfPreviousBuild:1];
          if (v33 == ++v35)
          {
            v33 = [v31 countByEnumeratingWithState:&v68 objects:v79 count:16];
            if (v33)
            {
              goto LABEL_29;
            }

            break;
          }
        }
      }

      v38 = [MEMORY[0x277CBEB18] arrayWithArray:v59];
      v39 = [(NSMutableArray *)self->_buildEvents objectAtIndexedSubscript:0];
      [v38 addObjectsFromArray:v39];

      [(NSMutableArray *)self->_buildEvents setObject:v38 atIndexedSubscript:0];
    }

    else
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v40 = self->_buildEvents;
      v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v64 objects:v78 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v65;
        do
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v65 != v43)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v64 + 1) + 8 * i);
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v46 = v45;
            v47 = [v46 countByEnumeratingWithState:&v60 objects:v77 count:16];
            if (v47)
            {
              v48 = v47;
              v49 = *v61;
              do
              {
                for (j = 0; j != v48; ++j)
                {
                  if (*v61 != v49)
                  {
                    objc_enumerationMutation(v46);
                  }

                  [*(*(&v60 + 1) + 8 * j) setEventIndex:{objc_msgSend(*(*(&v60 + 1) + 8 * j), "eventIndex", v52) + 1}];
                }

                v48 = [v46 countByEnumeratingWithState:&v60 objects:v77 count:16];
              }

              while (v48);
            }
          }

          v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v64 objects:v78 count:16];
        }

        while (v42);
      }

      [(NSMutableArray *)self->_buildEvents insertObject:v59 atIndex:0];
      self->_numberOfAddedEvents = 1;
    }

    v51 = [(NSMutableArray *)self->_buildEvents objectAtIndexedSubscript:0, v52];
    [v51 enumerateObjectsUsingBlock:&unk_2884D5030];

    v7 = v57;
    v3 = v59;
  }
}

- (BOOL)p_shouldAnimateImplicitAmbientAnimatingDrawableAtFirstEvent:(id)event
{
  eventCopy = event;
  v5 = [(KNAnimatedSlideModel *)self inEventForInfo:eventCopy];
  v6 = [(KNAnimatedSlideModel *)self outEventForInfo:eventCopy];
  v7 = v5 != -3;
  if (v6 == -2)
  {
    v7 = 0;
  }

  if (v5 <= v6)
  {
    v7 = 0;
  }

  v8 = v5 == -3 || v7;

  return v8;
}

- (id)p_getCurrentDocumentRoot
{
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_session);
  currentSlideNode = [WeakRetained currentSlideNode];
  context = [currentSlideNode context];
  documentObject = [context documentObject];
  v7 = TSUDynamicCast();

  if (!v7)
  {
    v8 = objc_opt_class();
    objc_opt_class();
    infos = self->_infos;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_275DA104C;
    v18[3] = &unk_27A698980;
    v18[4] = v8;
    v10 = [(NSArray *)infos tsu_firstObjectPassingTest:v18];
    v11 = TSUDynamicCast();

    objc_opt_class();
    context2 = [v11 context];
    documentObject2 = [context2 documentObject];
    v7 = TSUDynamicCast();

    if (!v7)
    {
      v14 = MEMORY[0x277D81150];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimatedSlideModel p_getCurrentDocumentRoot]"];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimatedSlideModel.m"];
      [v14 handleFailureInFunction:v15 file:v16 lineNumber:1500 isFatal:0 description:{"invalid nil value for '%{public}s'", "documentRoot"}];

      [MEMORY[0x277D81150] logBacktraceThrottled];
      v7 = 0;
    }
  }

  return v7;
}

- (id)p_applyThemeCurvesToBuildAttributes:(id)attributes
{
  attributesCopy = attributes;
  p_getCurrentDocumentRoot = [(KNAnimatedSlideModel *)self p_getCurrentDocumentRoot];
  objc_opt_class();
  theme = [p_getCurrentDocumentRoot theme];
  v7 = TSUCheckedDynamicCast();

  v8 = [attributesCopy attributesAdjustedForTheme:v7];

  return v8;
}

- (id)p_newTransition
{
  v3 = [KNTransitionRenderer alloc];
  v4 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained(&self->_session);
  v6 = objc_loadWeakRetained(&self->_ASV);
  v7 = [(KNTransitionRenderer *)v3 initWithEffectClass:v4 direction:0 duration:WeakRetained session:MEMORY[0x277CBEC10] attributes:v6 animatedSlideView:0.001];

  return v7;
}

- (KNPlaybackSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end