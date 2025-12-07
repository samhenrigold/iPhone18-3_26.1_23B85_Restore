@interface TUIFeedLayoutController
- (BOOL)_lq_shouldInstantiateEntry:(id)entry sectionIndex:(unint64_t)index transactionGroup:(id)group;
- (BOOL)_lq_shouldSubmitRenderModelUpdate:(BOOL)update transactionGroup:(id)group;
- (BOOL)lq_updateHostingGeometryMap:(id)map;
- (TUIActionHandlerDelegate)actionHandlerDelegate;
- (TUIFeedLayoutController)initWithFeedId:(id)id environment:(id)environment factory:(id)factory manager:(id)manager renderMode:(unint64_t)mode;
- (TUIFeedLayoutControllerDelegate)delegate;
- (TUITransactionDependencyToken)lastContentTransactionToken;
- (TUITransactionDependencyToken)lastEnvironmentTransactionToken;
- (id)_infoForFinal:(BOOL)final;
- (id)instantiateContext:(id)context serviceConformingToProtocol:(id)protocol;
- (id)lq_createRenderModelForFeedEntry:(id)entry section:(int64_t)section;
- (id)lq_loadFeedEntry:(id)entry data:(id)data section:(int64_t)section transactionGroup:(id)group;
- (void)_cancelDataRequests;
- (void)_lq_scheduleLayoutRemainder;
- (void)_updateAfterLayoutConditionSuspendingUpdatesInvalidated;
- (void)beginLiveResize;
- (void)captureWithController:(id)controller completion:(id)completion;
- (void)collectStatsWithCompletion:(id)completion;
- (void)dumpLayoutTreeForEntry:(id)entry completion:(id)completion;
- (void)dumpModelTreeForEntry:(id)entry completion:(id)completion;
- (void)endLiveResize;
- (void)layoutIfNeededWithTransaction:(id)transaction;
- (void)lq_updateAXModelTreeWithTransactionGroup:(id)group;
- (void)lq_updateContent:(id)content contentUpdateDate:(id)date transaction:(id)transaction transactionGroup:(id)group;
- (void)lq_updateRenderModelsWithTransactionGroup:(id)group;
- (void)resumeAndRebuildWithEnvironment:(id)environment state:(id)state transaction:(id)transaction;
- (void)setDelegate:(id)delegate;
- (void)setLayoutState:(unint64_t)state;
- (void)setPriority:(float)priority;
- (void)setStatsMode:(unint64_t)mode;
- (void)statRecordInitialResourcesRenderedDate;
- (void)statRecordResourcesLoadedDate;
- (void)statRecordResourcesStartLoadingDate;
- (void)statRecordViewWillAppear;
- (void)suspendAndTeardownWithTransaction:(id)transaction;
- (void)suspendLayoutsUntilMeetingLayoutCondition:(id)condition;
- (void)suspendUpdatesUntilMeetingLayoutCondition:(id)condition;
- (void)transactionCoordinator:(id)coordinator applyUpdatesFromTransactionGroup:(id)group;
- (void)transactionCoordinator:(id)coordinator timeoutForSynchronousTransactionGroup:(id)group;
- (void)transactionCoordinator:(id)coordinator updateWithTransactionGroup:(id)group;
- (void)updateDatesCollectorWithBlock:(id)block;
- (void)updateHostingGeometryMap:(id)map withTransaction:(id)transaction;
- (void)updateWithContent:(id)content layoutUpToEntry:(id)entry environment:(id)environment transaction:(id)transaction;
- (void)updateWithContent:(id)content transaction:(id)transaction;
- (void)updateWithEnvironment:(id)environment state:(id)state withTransaction:(id)transaction;
@end

@implementation TUIFeedLayoutController

- (TUIFeedLayoutController)initWithFeedId:(id)id environment:(id)environment factory:(id)factory manager:(id)manager renderMode:(unint64_t)mode
{
  environmentCopy = environment;
  factoryCopy = factory;
  managerCopy = manager;
  v48.receiver = self;
  v48.super_class = TUIFeedLayoutController;
  v16 = [(TUIFeedLayoutController *)&v48 init];
  v17 = v16;
  if (v16)
  {
    v16->_feedId.uniqueIdentifier = id.var0;
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_USER_INITIATED, 0);

    v17->_priority = 0.5;
    v20 = objc_alloc_init(TUIWorkQueueContext);
    queueContext = v17->_queueContext;
    v17->_queueContext = v20;

    v22 = dispatch_queue_create("TUIFeedLayoutController.dataRequestsSync", v19);
    dataRequestsSync = v17->_dataRequestsSync;
    v17->_dataRequestsSync = v22;

    objc_storeStrong(&v17->_environment, environment);
    objc_storeStrong(&v17->_manager, manager);
    objc_storeStrong(&v17->_templateFactory, factory);
    v24 = objc_opt_new();
    sections = v17->_sections;
    v17->_sections = v24;

    v26 = [[TUITransactionCoordinator alloc] initWithFeedId:v17->_feedId.uniqueIdentifier layoutQueueContext:v17->_queueContext delegate:v17];
    transactionCoordinator = v17->_transactionCoordinator;
    v17->_transactionCoordinator = v26;

    v17->_loadingFooterHeight = 60.0;
    v28 = objc_alloc_init(TUIWPService);
    wpService = v17->_wpService;
    v17->_wpService = v28;

    v30 = objc_alloc_init(TUIStatsDatesCollector);
    datesCollector = v17->_datesCollector;
    v17->_datesCollector = v30;

    v32 = +[NSDate date];
    [(TUIStatsDatesCollector *)v17->_datesCollector setCreationDate:v32];

    v17->_layoutState = 0;
    v17->_layoutConditionsLock._os_unfair_lock_opaque = 0;
    v33 = [NSHashTable hashTableWithOptions:517];
    layoutConditionsSuspendingUpdates = v17->_layoutConditionsSuspendingUpdates;
    v17->_layoutConditionsSuspendingUpdates = v33;

    v35 = [NSHashTable hashTableWithOptions:517];
    layoutConditionsSuspendingLayout = v17->_layoutConditionsSuspendingLayout;
    v17->_layoutConditionsSuspendingLayout = v35;

    v17->_renderModelMode = mode;
    v17->_environmentLock._os_unfair_lock_opaque = 0;
    environmentPendingUpdate = v17->_environmentPendingUpdate;
    v17->_environmentPendingUpdate = 0;

    *&v17->_flags = 1;
    renderModelMode = v17->_renderModelMode;
    if (renderModelMode == 1)
    {
      v43 = off_25CD10;
      v44 = 120;
    }

    else
    {
      if (renderModelMode)
      {
LABEL_7:

        goto LABEL_8;
      }

      v39 = [TUIRenderUpdateCollectionController alloc];
      workQueue = [(TUIWorkQueueContext *)v17->_queueContext workQueue];
      v41 = [(TUIRenderUpdateCollectionController *)v39 initWithLayoutQueue:workQueue renderModel:0];
      updateController = v17->_updateController;
      v17->_updateController = v41;

      v43 = off_25CD08;
      v44 = 112;
    }

    v45 = objc_alloc_init(*v43);
    v46 = *(&v17->super.isa + v44);
    *(&v17->super.isa + v44) = v45;

    goto LABEL_7;
  }

LABEL_8:

  return v17;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateFlags = *&self->_delegateFlags & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xFB | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xF7 | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 16;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateFlags = *&self->_delegateFlags & 0xEF | v8;
  }
}

- (id)lq_createRenderModelForFeedEntry:(id)entry section:(int64_t)section
{
  entryCopy = entry;
  v7 = [[_TUIFeedLayoutSection alloc] initWithFeedId:self->_feedId.uniqueIdentifier section:section controller:self entry:entryCopy];

  [(_TUIFeedLayoutSection *)v7 setStatsMode:self->_lq_statsMode];
  sections = self->_sections;
  v9 = [NSNumber numberWithInteger:section];
  [(NSMutableDictionary *)sections setObject:v7 forKey:v9];

  renderModel = [(_TUIFeedLayoutSection *)v7 renderModel];

  return renderModel;
}

- (id)lq_loadFeedEntry:(id)entry data:(id)data section:(int64_t)section transactionGroup:(id)group
{
  sections = self->_sections;
  groupCopy = group;
  dataCopy = data;
  entryCopy = entry;
  v14 = [NSNumber numberWithInteger:section];
  v15 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v14];

  [v15 lq_loadOrUpdateEntry:entryCopy data:dataCopy controller:self transactionGroup:groupCopy];
  renderModel = [v15 renderModel];

  return renderModel;
}

- (id)_infoForFinal:(BOOL)final
{
  if (final)
  {
    v5 = @"TUIRenderInfoKeyIsFinal";
    v6 = &__kCFBooleanTrue;
    v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)lq_updateRenderModelsWithTransactionGroup:(id)group
{
  groupCopy = group;
  v4 = kdebug_trace();
  v5 = TUILayoutLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    *buf = 134218242;
    *&buf[4] = uniqueIdentifier;
    *&buf[12] = 2112;
    *&buf[14] = groupCopy;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] Ariadne FeedLayoutStart group=%@", buf, 0x16u);
  }

  v7 = +[NSDate date];
  v333 = v7;
  if (self->_inLiveResize)
  {
    ++self->_liveResizeLayoutCount;
  }

  v8 = TUIInstantiationLog(v7);
  self->_frameSignpost = os_signpost_id_generate(v8);

  v10 = TUIInstantiationLog(v9);
  v11 = v10;
  frameSignpost = self->_frameSignpost;
  if (frameSignpost - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = self->_feedId.uniqueIdentifier;
    *buf = 134217984;
    *&buf[4] = v13;
    _os_signpost_emit_with_name_impl(&dword_0, v11, OS_SIGNPOST_INTERVAL_BEGIN, frameSignpost, "Instantiation", "[fid:%lu] ", buf, 0xCu);
  }

  selfCopy2 = self;
  statsLiveResize = self->_statsLiveResize;
  if (statsLiveResize)
  {
    [(TUIStatsLiveResize *)statsLiveResize beginFrame];
    [(NSMutableDictionary *)self->_sections enumerateKeysAndObjectsUsingBlock:&stru_260F60];
    selfCopy2 = self;
  }

  [(TUIStatsTimingCollector *)selfCopy2->_timingCollector startPhase:0];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v416 = sub_C13B4;
  v417 = sub_C13C4;
  v418 = self->_currentRenderModel;
  v400 = 0;
  v401 = &v400;
  v402 = 0x3032000000;
  v403 = sub_C13B4;
  v404 = sub_C13C4;
  sections = [*(*&buf[8] + 40) sections];
  v17 = sections;
  v18 = &__NSArray0__struct;
  if (sections)
  {
    v18 = sections;
  }

  v405 = v18;

  layoutNextSection = self->_layoutNextSection;
  v20 = [v401[5] count];
  if (layoutNextSection < v20)
  {
    v21 = [v401[5] subarrayWithRange:{0, self->_layoutNextSection}];
    v22 = v401[5];
    v401[5] = v21;
  }

  if (self->_layoutUntilEntryWithUUID)
  {
    entries = [(TUIFeedContent *)self->_content entries];
    v399[0] = _NSConcreteStackBlock;
    v399[1] = 3221225472;
    v399[2] = sub_C13CC;
    v399[3] = &unk_260F88;
    v399[4] = self;
    v24 = [entries indexOfObjectPassingTest:v399];

    v25 = 0x7FFFFFFFFFFFFFFFLL;
    if (v24 != 0x7FFFFFFFFFFFFFFFLL)
    {
      entries2 = [(TUIFeedContent *)self->_content entries];
      v27 = v24 + 1 == [entries2 count];

      if (v27)
      {
        v25 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v25 = v24;
      }
    }
  }

  else
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v29 = self->_layoutNextSection;
  layoutNumberOfSections = self->_layoutNumberOfSections;
  v340 = v29 < layoutNumberOfSections;
  if (v29 >= layoutNumberOfSections)
  {
LABEL_35:
    v334 = 0;
  }

  else
  {
    v30 = 0;
    selfCopy4 = self;
    while (1)
    {
      sections = selfCopy4->_sections;
      v33 = [NSNumber numberWithUnsignedInteger:v29];
      v34 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v33];

      if (([v34 needsInstantiation] & 1) == 0 || (v29 > v25 ? (v35 = v25 != 0x7FFFFFFFFFFFFFFFLL) : (v35 = 0), v35 || (v25 == 0x7FFFFFFFFFFFFFFFLL || v29 > v25) && (objc_msgSend(v34, "entry"), v36 = objc_claimAutoreleasedReturnValue(), v37 = -[TUIFeedLayoutController _lq_shouldInstantiateEntry:sectionIndex:transactionGroup:](self, "_lq_shouldInstantiateEntry:sectionIndex:transactionGroup:", v36, v29, groupCopy), v36, !v37)))
      {
        v334 = 0;
        goto LABEL_38;
      }

      v38 = objc_autoreleasePoolPush();
      [v34 lq_instantiateWithController:self transactionGroup:groupCopy];
      objc_autoreleasePoolPop(v38);
      if (v25 == v29)
      {
        break;
      }

      renderModel = [v34 renderModel];
      if (renderModel)
      {

        v40 = 1;
      }

      else
      {
        layerRenderModel = [v34 layerRenderModel];
        v40 = layerRenderModel != 0;

        if (!v40)
        {
          goto LABEL_35;
        }
      }

      v29 += v40;
      selfCopy4 = self;
      v30 = 1;
      if (v29 >= self->_layoutNumberOfSections)
      {
        goto LABEL_35;
      }
    }

    v334 = 1;
    v30 = 1;
LABEL_38:

    v340 = v30;
  }

  v42 = TUIInstantiationLog(v20);
  v43 = v42;
  v44 = self->_frameSignpost;
  if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    v45 = self->_feedId.uniqueIdentifier;
    LODWORD(v410) = 134217984;
    *(&v410 + 4) = v45;
    _os_signpost_emit_with_name_impl(&dword_0, v43, OS_SIGNPOST_INTERVAL_END, v44, "Instantiation", "[fid:%lu] ", &v410, 0xCu);
  }

  v47 = TUIInstantiationLog(v46);
  v48 = v47;
  v49 = self->_frameSignpost;
  if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    v50 = self->_feedId.uniqueIdentifier;
    LODWORD(v410) = 134217984;
    *(&v410 + 4) = v50;
    _os_signpost_emit_with_name_impl(&dword_0, v48, OS_SIGNPOST_INTERVAL_BEGIN, v49, "Layout", "[fid:%lu] ", &v410, 0xCu);
  }

  lastObject = [v401[5] lastObject];
  *&v410 = 0;
  *(&v410 + 1) = &v410;
  v411 = 0x3010000000;
  v413 = 0;
  v414 = 0.0;
  v412 = "";
  [(TUIEnvironment *)self->_environment viewSize];
  v52 = v51;
  if (lastObject)
  {
    [lastObject frame];
    MaxY = CGRectGetMaxY(v419);
  }

  else
  {
    MaxY = 0.0;
  }

  v413 = v52;
  v414 = MaxY;
  v393 = 0;
  v394 = &v393;
  v395 = 0x3032000000;
  v396 = sub_C13B4;
  v397 = sub_C13C4;
  v398 = 0;
  v389 = 0;
  v390 = &v389;
  v391 = 0x2020000000;
  v392 = 0;
  v54 = objc_opt_class();
  currentStackName = [(TUIFeedContent *)self->_content currentStackName];
  value = [currentStackName value];
  v336 = TUIDynamicCast(v54, value);

  selfCopy10 = self;
  if (!self->_environmentChanged || (layoutViewState = self->_layoutViewState) == 0 || !self->_prevEnvironment)
  {
    v347 = 0x7FFFFFFFFFFFFFFFLL;
    obj = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_58;
  }

  feedScrollAnchor = [(TUIFeedViewState *)layoutViewState feedScrollAnchor];
  anchor = [feedScrollAnchor anchor];
  identifier = [anchor identifier];

  if (!identifier)
  {
LABEL_120:
    v347 = 0x7FFFFFFFFFFFFFFFLL;
    obj = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_251;
  }

  entries3 = [(TUIFeedContent *)self->_content entries];
  v63 = [entries3 valueForKey:@"uuid"];
  v64 = [v63 indexOfObject:identifier];

  obj = 0x7FFFFFFFFFFFFFFFLL;
  v347 = 0x7FFFFFFFFFFFFFFFLL;
  if (v64 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v64 < self->_layoutNextSection)
    {
      v65 = self->_sections;
      v66 = [NSNumber numberWithUnsignedInteger:v64];
      v67 = [(NSMutableDictionary *)v65 objectForKeyedSubscript:v66];

      renderModel2 = [v67 renderModel];
      [renderModel2 size];
      v70 = v69;

      [(TUIEnvironment *)self->_prevEnvironment viewSize];
      v72 = v71;
      anchor2 = [feedScrollAnchor anchor];
      position = [anchor2 position];

      if (position == &dword_0 + 1)
      {
        v75 = v72 - v70;
        selfCopy9 = self;
      }

      else
      {
        v75 = 0.0;
        selfCopy9 = self;
        if (position == &dword_0 + 2)
        {
          v75 = (v72 - v70) * 0.5;
        }
      }

      [feedScrollAnchor relativeDistance];
      v312 = v75 + v72 * 0.5 * v311;
      if (v64)
      {
        obj = v64;
        if (v312 > 0.0)
        {
          v313 = v64 - 1;
          v314 = v75 + v72 * 0.5 * v311;
          do
          {
            v315 = selfCopy9->_sections;
            v316 = [NSNumber numberWithUnsignedInteger:v313];
            v317 = [(NSMutableDictionary *)v315 objectForKeyedSubscript:v316];
            renderModel3 = [v317 renderModel];
            [renderModel3 size];
            v320 = v319;

            v204 = v313-- != 0;
            selfCopy9 = self;
            if (!v204)
            {
              break;
            }

            v314 = v314 - v320;
          }

          while (v314 > 0.0);
          obj = (v313 + 1);
        }
      }

      else
      {
        obj = 0;
      }

      v321 = v64 + 1;
      if ((v64 + 1) < selfCopy9->_layoutNextSection)
      {
        v322 = v72 - (v70 + v312);
        if (v322 > 0.0)
        {
          do
          {
            if (v321 >= selfCopy9->_layoutNextSection)
            {
              break;
            }

            v323 = selfCopy9->_sections;
            v324 = [NSNumber numberWithUnsignedInteger:v321];
            v325 = [(NSMutableDictionary *)v323 objectForKeyedSubscript:v324];
            renderModel4 = [v325 renderModel];
            [renderModel4 size];
            v328 = v327;

            v322 = v322 - v328;
            ++v321;
            selfCopy9 = self;
          }

          while (v322 > 0.0);
          v64 = v321 - 1;
        }
      }

      v347 = v64;
      goto LABEL_251;
    }

    goto LABEL_120;
  }

LABEL_251:

  selfCopy10 = self;
LABEL_58:
  prevEnvironment = selfCopy10->_prevEnvironment;
  selfCopy10->_prevEnvironment = 0;

  selfCopy14 = self;
  if (self->_environmentChanged)
  {
    [(TUIEnvironment *)self->_environment viewSize];
    v79 = *(&v410 + 1);
    *(*(&v410 + 1) + 32) = v80;
    *(v79 + 40) = 0;
    [(TUIEnvironment *)self->_environment viewSize];
    self->_loadingFooterMinY = v81 * 0.5;
    if (self->_currentRenderModel)
    {
      v82 = 0;
    }

    else
    {
      v82 = objc_opt_new();

      selfCopy14 = self;
    }

    if (selfCopy14->_layoutNextSection)
    {
      selfCopy13 = selfCopy14;
      v84 = 0;
      do
      {
        v85 = selfCopy13->_sections;
        v86 = [NSNumber numberWithUnsignedInteger:v84];
        v87 = [(NSMutableDictionary *)v85 objectForKeyedSubscript:v86];

        [v87 setEnvironmentNeedsUpdate:1];
        [(TUIEnvironment *)self->_environment viewSize];
        v89 = v88;
        renderModel5 = [v87 renderModel];
        [renderModel5 size];
        [v87 lq_createEmptyRenderModelWithSize:v89];

        v91 = v394[5];
        if (!v91)
        {
          v92 = objc_opt_new();
          v93 = v394[5];
          v394[5] = v92;

          v91 = v394[5];
        }

        [v91 addIndex:v84];
        renderModel6 = [v87 renderModel];
        [v82 addObject:renderModel6];

        ++v84;
        selfCopy13 = self;
      }

      while (v84 < self->_layoutNextSection);
    }

    if (v82)
    {
      v95 = [v82 copy];
      v96 = v401[5];
      v401[5] = v95;
    }

    selfCopy14 = self;
  }

  v384[0] = _NSConcreteStackBlock;
  v384[1] = 3221225472;
  v384[2] = sub_C1414;
  v384[3] = &unk_260FB0;
  v384[4] = selfCopy14;
  v351 = groupCopy;
  v385 = v351;
  v356 = v336;
  v386 = v356;
  v387 = &v389;
  v388 = &v393;
  v342 = objc_retainBlock(v384);
  selfCopy28 = self;
  layoutFlags = self->_layoutFlags;
  self->_layoutFlags = 0;
  v98 = self->_layoutViewState;
  if (!v98)
  {
    goto LABEL_82;
  }

  feedScrollAnchor2 = [(TUIFeedViewState *)v98 feedScrollAnchor];
  anchor3 = [feedScrollAnchor2 anchor];
  identifier2 = [anchor3 identifier];

  if (identifier2)
  {
    entries4 = [(TUIFeedContent *)self->_content entries];
    v103 = [entries4 valueForKey:@"uuid"];
    v104 = [v103 indexOfObject:identifier2];

    if (v104 != 0x7FFFFFFFFFFFFFFFLL && v104 < self->_layoutNextSection)
    {
      (v342[2])(v342, v104);
      v105 = self->_sections;
      v106 = [NSNumber numberWithUnsignedInteger:v104];
      v345 = [(NSMutableDictionary *)v105 objectForKeyedSubscript:v106];

      renderModel7 = [v345 renderModel];
      [renderModel7 size];
      v109 = v108;

      [(TUIEnvironment *)self->_environment viewSize];
      v111 = v110;
      anchor4 = [feedScrollAnchor2 anchor];
      position2 = [anchor4 position];

      if (position2 == &dword_0 + 1)
      {
        v114 = v111 - v109;
      }

      else
      {
        v114 = 0.0;
        if (position2 == &dword_0 + 2)
        {
          v114 = (v111 - v109) * 0.5;
        }
      }

      [feedScrollAnchor2 relativeDistance];
      v188 = v187;
      options = [v351 options];
      timingProvider = [options timingProvider];

      v191 = v114 + v111 * 0.5 * v188;
      if (timingProvider)
      {
        v192 = v111 - (v109 + v191) + v111 * 0.5;
      }

      else
      {
        v192 = v111 - (v109 + v191);
      }

      if (v104)
      {
        if (timingProvider)
        {
          v193 = v191 + v111 * 0.5;
        }

        else
        {
          v193 = v191;
        }

        v194 = v104;
        do
        {
          v196 = (obj == 0x7FFFFFFFFFFFFFFFLL || obj > v194) && v193 <= 0.0;
          if (v196)
          {
            break;
          }

          (v342[2])(v342, --v194);
          v197 = self->_sections;
          v198 = [NSNumber numberWithUnsignedInteger:v194];
          v199 = [(NSMutableDictionary *)v197 objectForKeyedSubscript:v198];
          renderModel8 = [v199 renderModel];
          [renderModel8 size];
          v202 = v201;

          v193 = v193 - v202;
        }

        while (v194);
      }

      else
      {
        v196 = 0;
      }

      v203 = (v104 + 1);
      if (v203 >= self->_layoutNextSection)
      {
        if (!v196)
        {
LABEL_173:

          v115 = 0;
          goto LABEL_78;
        }
      }

      else
      {
        do
        {
          v204 = v347 != 0x7FFFFFFFFFFFFFFFLL && v347 >= v203;
          v205 = !v204 && v192 <= 0.0;
          if (v205)
          {
            break;
          }

          (v342[2])(v342, v203);
          v206 = self->_sections;
          v207 = [NSNumber numberWithUnsignedInteger:v203];
          v208 = [(NSMutableDictionary *)v206 objectForKeyedSubscript:v207];
          renderModel9 = [v208 renderModel];
          [renderModel9 size];
          v211 = v210;

          v192 = v192 - v211;
          ++v203;
        }

        while (v203 < self->_layoutNextSection);
        if (!v196 && !v205)
        {
          goto LABEL_173;
        }
      }

      if (self->_inLiveResize)
      {
        self->_needsLayoutAfterLiveResize = 1;
      }

      else
      {
        v383[0] = _NSConcreteStackBlock;
        v383[1] = 3221225472;
        v383[2] = sub_C15B4;
        v383[3] = &unk_25DE30;
        v383[4] = self;
        [v351 addCompletion:v383];
      }

      goto LABEL_173;
    }
  }

  v115 = 1;
LABEL_78:
  if (!self->_needsLayoutAfterLiveResize)
  {
    v116 = self->_layoutViewState;
    self->_layoutViewState = 0;
  }

  layoutFlags |= 1uLL;
  if (!v115)
  {
    v348 = 0;
    v343 = 0;
    goto LABEL_96;
  }

  selfCopy28 = self;
LABEL_82:
  if (!selfCopy28->_layoutNumberOfSections)
  {
    v343 = 0;
    v348 = 1;
    goto LABEL_97;
  }

  v117 = 0;
  selfCopy17 = selfCopy28;
  v119 = 0.0;
  while (1)
  {
    v120 = selfCopy17->_sections;
    v121 = [NSNumber numberWithUnsignedInteger:v117];
    v122 = [(NSMutableDictionary *)v120 objectForKeyedSubscript:v121];

    renderModel10 = [v122 renderModel];
    v343 = renderModel10 != 0;

    if (!v343)
    {
      break;
    }

    if (!self->_layoutUntilEntryWithUUID && (*&self->_flags & 1) != 0)
    {
      [(TUIEnvironment *)self->_environment viewSize];
      if (v119 > v124 || v117 > [(TUIFeedContent *)self->_content initialContentReadyEntryIndex])
      {
        break;
      }
    }

    (v342[2])(v342, v117);
    renderModel11 = [v122 renderModel];
    [renderModel11 size];
    v127 = v126;

    entry = [v122 entry];
    stackNames = [entry stackNames];
    v130 = [stackNames containsObject:v356];

    if (!v130)
    {
      v127 = 0.0;
    }

    v119 = v119 + v127;
    ++v117;
    selfCopy17 = self;
    if (v117 >= self->_layoutNumberOfSections)
    {
      v343 = 0;
      v348 = 1;
      selfCopy28 = self;
      goto LABEL_97;
    }
  }

  v348 = 1;
LABEL_96:
  selfCopy28 = self;
LABEL_97:
  if (*(v390 + 24) == 1)
  {
    date = [v351 date];
    [(TUIStatsDatesCollector *)selfCopy28->_datesCollector setDynamicUpdateDate:date];

    selfCopy28 = self;
  }

  if (v394[5])
  {
    v132 = objc_opt_new();
    v381 = 0u;
    v382 = 0u;
    v379 = 0u;
    v380 = 0u;
    obja = v401[5];
    v133 = [obja countByEnumeratingWithState:&v379 objects:v409 count:16];
    if (v133)
    {
      v134 = *v380;
      v135 = 0.0;
      do
      {
        for (i = 0; i != v133; i = i + 1)
        {
          if (*v380 != v134)
          {
            objc_enumerationMutation(obja);
          }

          v137 = *(*(&v379 + 1) + 8 * i);
          section = [v137 section];
          v139 = self->_sections;
          v140 = [NSNumber numberWithUnsignedInteger:section];
          v141 = [(NSMutableDictionary *)v139 objectForKeyedSubscript:v140];

          if ([v394[5] containsIndex:section])
          {
            renderModel12 = [v141 renderModel];
          }

          else
          {
            renderModel12 = v137;
          }

          [renderModel12 size];
          v144 = v143;
          v146 = v145;
          entry2 = [v141 entry];
          stackNames2 = [entry2 stackNames];
          v149 = [stackNames2 containsObject:v356];

          if (!v149)
          {
            v146 = 0.0;
          }

          section2 = [renderModel12 section];
          uUID = [v137 UUID];
          v152 = [renderModel12 copyWithSection:section2 offset:uUID size:0.0 uuid:{v135, v144, v146}];

          [v152 frame];
          Height = CGRectGetHeight(v420);
          [v132 addObject:v152];

          v135 = v135 + Height;
        }

        v133 = [obja countByEnumeratingWithState:&v379 objects:v409 count:16];
      }

      while (v133);
    }

    else
    {
      v135 = 0.0;
    }

    *(*(&v410 + 1) + 40) = v135;
    v154 = [v132 copy];
    v155 = v401[5];
    v401[5] = v154;

    selfCopy28 = self;
  }

  if (!v348)
  {
    goto LABEL_135;
  }

  v156 = selfCopy28->_layoutNextSection;
  if (!selfCopy28->_layoutUntilEntryWithUUID || !v156)
  {
LABEL_122:
    if (v156 < selfCopy28->_layoutNumberOfSections)
    {
      v164 = 0;
      while (1)
      {
        v165 = selfCopy28->_sections;
        v166 = [NSNumber numberWithUnsignedInteger:?];
        v163 = [(NSMutableDictionary *)v165 objectForKeyedSubscript:v166];

        renderModel13 = [v163 renderModel];

        if (!renderModel13)
        {
          renderModel13 = 0;
          goto LABEL_175;
        }

        selfCopy23 = self;
        if (!self->_layoutUntilEntryWithUUID && (*&self->_flags & 1) != 0)
        {
          v168 = *(*(&v410 + 1) + 40);
          [(TUIEnvironment *)self->_environment viewSize];
          if (v168 > v169)
          {
            break;
          }

          v170 = self->_layoutNextSection;
          initialContentReadyEntryIndex = [(TUIFeedContent *)self->_content initialContentReadyEntryIndex];
          selfCopy23 = self;
          if (v170 > initialContentReadyEntryIndex)
          {
            break;
          }
        }

        ++selfCopy23->_layoutNextSection;
        [renderModel13 size];
        v173 = v172;
        v175 = v174;
        entry3 = [v163 entry];
        stackNames3 = [entry3 stackNames];
        v178 = [stackNames3 containsObject:v356];

        if (!v178)
        {
          v175 = 0.0;
        }

        section3 = [renderModel13 section];
        v180 = *(*(&v410 + 1) + 40);
        uUID2 = [renderModel13 UUID];
        v164 = [renderModel13 copyWithSection:section3 offset:uUID2 size:0.0 uuid:{v180, v173, v175}];

        [v164 frame];
        *(*(&v410 + 1) + 40) = CGRectGetHeight(v421) + *(*(&v410 + 1) + 40);
        v182 = [v401[5] arrayByAddingObject:v164];
        v183 = v401[5];
        v401[5] = v182;

        if (self->_layoutUntilEntryWithUUID)
        {
          uUID3 = [v164 UUID];
          v185 = [uUID3 isEqual:self->_layoutUntilEntryWithUUID];

          if (v185)
          {
            layoutUntilEntryWithUUID = self->_layoutUntilEntryWithUUID;
            self->_layoutUntilEntryWithUUID = 0;

            v334 = 1;
            v340 = 1;
            renderModel13 = v164;
            goto LABEL_175;
          }
        }

        selfCopy28 = self;
        v340 = 1;
        if (self->_layoutNextSection >= self->_layoutNumberOfSections)
        {
          renderModel13 = v164;
          goto LABEL_176;
        }
      }

      v343 = 1;
      goto LABEL_175;
    }

LABEL_135:
    renderModel13 = 0;
    goto LABEL_176;
  }

  v157 = selfCopy28->_sections;
  v158 = [NSNumber numberWithUnsignedInteger:v156 - 1];
  v159 = [(NSMutableDictionary *)v157 objectForKeyedSubscript:v158];
  renderModel14 = [v159 renderModel];
  uUID4 = [renderModel14 UUID];
  v162 = [uUID4 isEqual:selfCopy28->_layoutUntilEntryWithUUID];

  if ((v162 & 1) == 0)
  {
    selfCopy28 = self;
    v156 = self->_layoutNextSection;
    goto LABEL_122;
  }

  renderModel13 = 0;
  v163 = self->_layoutUntilEntryWithUUID;
  self->_layoutUntilEntryWithUUID = 0;
  v334 = 1;
LABEL_175:

  selfCopy28 = self;
LABEL_176:
  v344 = objc_alloc_init(NSMutableArray);
  v341 = objc_alloc_init(NSMutableArray);
  v212 = [(TUIAnchorSet *)[TUIMutableAnchorSet alloc] initWithAxis:2];
  v349 = objc_opt_new();
  objb = objc_alloc_init(TUILayoutRenderModelCollector);
  if (selfCopy28->_layoutNextSection)
  {
    v213 = 0;
    do
    {
      v214 = selfCopy28->_sections;
      v215 = [NSNumber numberWithUnsignedInteger:v213];
      v216 = [(NSMutableDictionary *)v214 objectForKeyedSubscript:v215];

      renderModel15 = [v216 renderModel];
      uUID5 = [renderModel15 UUID];

      [v216 lq_appendAnchorsToSet:v212];
      renderModel16 = [v216 renderModel];
      [renderModel16 size];
      v221 = v220;

      if (!v213)
      {
        v222 = [[TUILogicalScrollAnchor alloc] initWithPosition:0 identifier:uUID5];
        [(TUIMutableAnchorSet *)v212 appendLogicalScrollAnchor:v222 withOffset:0.0];
      }

      v223 = [[TUILogicalScrollAnchor alloc] initWithPosition:2 identifier:uUID5];
      [(TUIMutableAnchorSet *)v212 appendLogicalScrollAnchor:v223 withOffset:v221 * 0.5];

      if (++v213 == self->_layoutNextSection)
      {
        v224 = [[TUILogicalScrollAnchor alloc] initWithPosition:1 identifier:uUID5];
        [(TUIMutableAnchorSet *)v212 appendLogicalScrollAnchor:v224 withOffset:v221];
      }

      [(TUIMutableAnchorSet *)v212 translationOffset];
      [(TUIMutableAnchorSet *)v212 setTranslationOffset:v221 + v225];
      [v216 lq_updateAuxiliaryLayoutWithTransactionGroup:v351];
      auxRenderModel = [v216 auxRenderModel];

      if (auxRenderModel)
      {
        auxRenderModel2 = [v216 auxRenderModel];
        [v344 addObject:auxRenderModel2];
      }

      layoutController = [v216 layoutController];
      rootLayout = [layoutController rootLayout];
      renderModel17 = [v216 renderModel];
      [renderModel17 offset];
      [rootLayout appendVisibleBoundsObservers:v349 axis:2 offset:v231];

      layoutController2 = [v216 layoutController];
      rootLayout2 = [layoutController2 rootLayout];
      entry4 = [v216 entry];
      uuid = [entry4 uuid];
      [(TUILayoutRenderModelCollector *)objb collectWithRoot:rootLayout2 options:1 entryUUID:uuid];

      selfCopy28 = self;
    }

    while (v213 < self->_layoutNextSection);
  }

  hostingCollectorFinalizeMap = [(TUILayoutRenderModelCollector *)objb hostingCollectorFinalizeMap];
  if ([(TUIHostingMap *)hostingCollectorFinalizeMap isEqualToMap:selfCopy28->_currentHostingMap])
  {
    currentHostingMap = selfCopy28->_currentHostingMap;
    v238 = hostingCollectorFinalizeMap;
    hostingCollectorFinalizeMap = currentHostingMap;

    selfCopy28 = self;
  }

  v332 = hostingCollectorFinalizeMap;
  objc_storeStrong(&selfCopy28->_currentHostingMap, hostingCollectorFinalizeMap);
  selfCopy33 = self;
  v335 = [[TUIRenderModelAuxiliary alloc] initWithModels:v344];
  if (!self->_currentAuxiliaryModel || [v344 count] && !-[TUIRenderModelAuxiliary isEqualToRenderModel:](v335, "isEqualToRenderModel:", self->_currentAuxiliaryModel))
  {
    objc_storeStrong(&self->_currentAuxiliaryModel, v335);
    selfCopy33 = self;
  }

  if (selfCopy33->_renderModelMode == 1)
  {
    if (selfCopy33->_layoutNumberOfSections)
    {
      v240 = 0;
      v339 = 0;
      v241 = 0.0;
      v329 = 134218240;
      while (1)
      {
        v242 = selfCopy33->_sections;
        v329 = [NSNumber numberWithUnsignedInteger:v240, v329];
        v244 = [(NSMutableDictionary *)v242 objectForKeyedSubscript:v329];

        layerRenderModel2 = [v244 layerRenderModel];
        v246 = layerRenderModel2 == 0;

        if (v246)
        {
          break;
        }

        [v244 lq_updateLayerLayoutWithTransactionGroup:v351];
        layerRenderModel3 = [v244 layerRenderModel];
        identifier3 = [layerRenderModel3 identifier];
        v249 = identifier3 == 0;

        if (v249)
        {
          layerRenderModel4 = [v244 layerRenderModel];
          [layerRenderModel4 setIdentifier:&off_274D08];

          v252 = TUILayoutLog(v251);
          if (os_log_type_enabled(v252, OS_LOG_TYPE_ERROR))
          {
            v262 = self->_feedId.uniqueIdentifier;
            *v406 = v329;
            *&v406[4] = v262;
            v407 = 2048;
            v408 = v240;
            _os_log_error_impl(&dword_0, v252, OS_LOG_TYPE_ERROR, "[fid:%lu] invalid layout for render model in section: %lu during layout for feed capture!! Check <template> for multiple root elements!!", v406, 0x16u);
          }

          v339 = 1;
        }

        layerRenderModel5 = [v244 layerRenderModel];
        v254 = [[TUIRenderModelTransform alloc] initWithSubmodel:layerRenderModel5];
        [layerRenderModel5 size];
        v256 = v255;
        [layerRenderModel5 size];
        v258 = v257;
        v422.origin.x = 0.0;
        v422.origin.y = v241;
        v422.size.width = v256;
        v422.size.height = v258;
        MidX = CGRectGetMidX(v422);
        v423.origin.x = 0.0;
        v423.origin.y = v241;
        v423.size.width = v256;
        v423.size.height = v258;
        [(TUIRenderModelTransform *)v254 setCenter:MidX, CGRectGetMidY(v423)];
        [layerRenderModel5 size];
        v261 = v260;
        [v341 addObject:v254];

        v241 = v241 + v261;
        ++v240;
        selfCopy33 = self;
        if (v240 >= self->_layoutNumberOfSections)
        {
          goto LABEL_204;
        }
      }

      selfCopy33 = self;
    }

    else
    {
      v339 = 0;
    }

LABEL_204:
    lastObject2 = [v341 lastObject];
    [(TUIEnvironment *)selfCopy33->_environment viewSize];
    v265 = v264;
    if (lastObject2)
    {
      [lastObject2 frame];
      v266 = CGRectGetMaxY(v424);
    }

    else
    {
      v266 = 0.0;
    }

    v266 = [[TUIContainerLayerConfig alloc] initWithSize:v265, v266];
    v268 = [[TUIRenderModelLayer alloc] initWithSubmodels:v341 config:v266 erasableInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(TUIRenderModelLayer *)v268 setSize:v265, v266];
    if (!selfCopy33->_currentLayerRenderModel || [v341 count] && !-[TUIRenderModelLayer isEqualToRenderModel:](v268, "isEqualToRenderModel:", selfCopy33->_currentLayerRenderModel))
    {
      objc_storeStrong(&selfCopy33->_currentLayerRenderModel, v268);
    }

    selfCopy33 = self;
  }

  else
  {
    v339 = 0;
  }

  [(TUIEnvironment *)selfCopy33->_environment contentsScale];
  [(TUIMutableAnchorSet *)v212 finalizeWithContentsScale:?];
  v269 = [(TUIMutableAnchorSet *)v212 copy];
  anchorSet = selfCopy33->_anchorSet;
  selfCopy33->_anchorSet = v269;

  categories = [v351 categories];
  v272 = [categories containsObject:@"content-load"];

  v273 = self->_restoreViewState;
  restoreViewState = self->_restoreViewState;
  self->_restoreViewState = 0;

  v275 = kdebug_trace();
  v276 = TUILayoutLog(v275);
  if (os_log_type_enabled(v276, OS_LOG_TYPE_INFO))
  {
    v277 = self->_feedId.uniqueIdentifier;
    *v406 = 134218242;
    *&v406[4] = v277;
    v407 = 2112;
    v408 = v351;
    _os_log_impl(&dword_0, v276, OS_LOG_TYPE_INFO, "[fid:%lu] Ariadne FeedLayoutEnd group=%@", v406, 0x16u);
  }

  v279 = TUIInstantiationLog(v278);
  v280 = v279;
  v281 = self->_frameSignpost;
  if (v281 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v279))
  {
    v282 = self->_feedId.uniqueIdentifier;
    *v406 = 134217984;
    *&v406[4] = v282;
    _os_signpost_emit_with_name_impl(&dword_0, v280, OS_SIGNPOST_INTERVAL_END, v281, "Layout", "[fid:%lu] ", v406, 0xCu);
  }

  v284 = TUIInstantiationLog(v283);
  v285 = v284;
  v286 = self->_frameSignpost;
  if (v286 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v284))
  {
    v287 = self->_feedId.uniqueIdentifier;
    *v406 = 134217984;
    *&v406[4] = v287;
    _os_signpost_emit_with_name_impl(&dword_0, v285, OS_SIGNPOST_INTERVAL_BEGIN, v286, "UpdateRenderModels", "[fid:%lu] ", v406, 0xCu);
  }

  v364[0] = _NSConcreteStackBlock;
  v364[1] = 3221225472;
  v364[2] = sub_C15BC;
  v364[3] = &unk_261068;
  v375 = v272;
  v364[4] = self;
  v370 = buf;
  v371 = &v400;
  v372 = &v410;
  v350 = v349;
  v365 = v350;
  v330 = v212;
  v366 = v330;
  v376 = v334;
  v288 = v351;
  v367 = v288;
  v289 = v273;
  v377 = v339 & 1;
  v378 = v340;
  v368 = v289;
  v373 = &v393;
  v374 = layoutFlags;
  v352 = v333;
  v369 = v352;
  [v288 computeFinalUpdatesWithBlock:v364];
  v290 = TUIInstantiationLog([(TUIStatsTimingCollector *)self->_timingCollector endPhase:0]);
  v291 = v290;
  v292 = self->_frameSignpost;
  if (v292 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v290))
  {
    v293 = self->_feedId.uniqueIdentifier;
    *v406 = 134217984;
    *&v406[4] = v293;
    _os_signpost_emit_with_name_impl(&dword_0, v291, OS_SIGNPOST_INTERVAL_END, v292, "UpdateRenderModels", "[fid:%lu] ", v406, 0xCu);
  }

  selfCopy38 = self;
  if (self->_statsLiveResize)
  {
    v295 = self->_sections;
    v363[0] = _NSConcreteStackBlock;
    v363[1] = 3221225472;
    v363[2] = sub_C1F5C;
    v363[3] = &unk_261090;
    v363[4] = self;
    [(NSMutableDictionary *)v295 enumerateKeysAndObjectsUsingBlock:v363, v330];
    [(TUIStatsLiveResize *)self->_statsLiveResize endFrame];
  }

  if (self->_statsCollector)
  {
    *v406 = 0;
    mach_timebase_info(v406);
    v296 = objc_opt_new();
    v297 = self->_sections;
    v360[0] = _NSConcreteStackBlock;
    v360[1] = 3221225472;
    v360[2] = sub_C1FE8;
    v360[3] = &unk_2610B8;
    v362 = *v406;
    v360[4] = self;
    v298 = v296;
    v361 = v298;
    [(NSMutableDictionary *)v297 enumerateKeysAndObjectsUsingBlock:v360];
    v299 = objc_opt_new();
    selfCopy36 = self;
    if (self->_layoutNextSection)
    {
      v301 = 0;
      do
      {
        v302 = selfCopy36->_sections;
        v330 = [NSNumber numberWithUnsignedInteger:v301, v330];
        v304 = [(NSMutableDictionary *)v302 objectForKeyedSubscript:v330];
        entry5 = [v304 entry];
        v306 = [entry5 uid];
        [v299 addObject:v306];

        ++v301;
        selfCopy36 = self;
      }

      while (v301 < self->_layoutNextSection);
    }

    [(TUIStatsTimingCollector *)selfCopy36->_timingCollector finalizeWithTimebase:*v406, v330];
    v307 = selfCopy36;
    v308 = [[TUIStatsFeedPass alloc] initWithMode:selfCopy36->_lq_statsMode timingCollector:selfCopy36->_timingCollector passes:v298];
    [(TUIStatsCollector *)v307->_statsCollector updateWithPass:v308 currentEntriesUID:v299];

    selfCopy38 = self;
  }

  [(TUIStatsTimingCollector *)selfCopy38->_timingCollector reset];
  [(NSMutableDictionary *)selfCopy38->_sections enumerateKeysAndObjectsUsingBlock:&stru_2610D8];
  if (selfCopy38->_lq_statsMode & 0x10) != 0 && (*&selfCopy38->_delegateFlags)
  {
    v309 = [[TUIStatsFeed alloc] initWithDates:selfCopy38->_datesCollector collector:selfCopy38->_statsCollector];
    v358[0] = _NSConcreteStackBlock;
    v358[1] = 3221225472;
    v358[2] = sub_C21F0;
    v358[3] = &unk_261100;
    v358[4] = selfCopy38;
    v310 = v309;
    v359 = v310;
    [v288 appendUpdateBlock:v358];

    selfCopy38 = self;
  }

  selfCopy38->_environmentChanged = 0;
  objc_storeStrong(&selfCopy38->_previousStackName, v336);
  if (v343)
  {
    *&self->_flags &= ~1u;
    [(TUIFeedLayoutController *)self layoutIfNeededWithTransaction:0];
  }

  _Block_object_dispose(&v389, 8);
  _Block_object_dispose(&v393, 8);

  _Block_object_dispose(&v410, 8);
  _Block_object_dispose(&v400, 8);

  _Block_object_dispose(buf, 8);
}

- (void)_lq_scheduleLayoutRemainder
{
  v3 = +[TUITransaction noAnimationTransaction];
  transactionCoordinator = self->_transactionCoordinator;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_C22D8;
  v5[3] = &unk_25EB80;
  v5[4] = self;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v3 block:v5];
}

- (BOOL)_lq_shouldInstantiateEntry:(id)entry sectionIndex:(unint64_t)index transactionGroup:(id)group
{
  entryCopy = entry;
  groupCopy = group;
  os_unfair_lock_lock(&self->_layoutConditionsLock);
  allObjects = [(NSHashTable *)self->_layoutConditionsSuspendingLayout allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = allObjects;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v27 = groupCopy;
    v14 = 0;
    v15 = *v35;
    v16 = 1;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v34 + 1) + 8 * i);
        if ([v18 evaluateWithEntry:entryCopy index:index])
        {
          if (!v14)
          {
            v14 = objc_opt_new();
          }

          [v14 addObject:{v18, v27}];
        }

        else
        {
          v16 = 0;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v13);

    if (!v14)
    {
      v24 = 0;
      groupCopy = v27;
      goto LABEL_25;
    }

    os_unfair_lock_lock(&self->_layoutConditionsLock);
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [(NSHashTable *)self->_layoutConditionsSuspendingLayout removeObject:*(*(&v30 + 1) + 8 * j), v27];
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v21);
    }

    os_unfair_lock_unlock(&self->_layoutConditionsLock);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_C25AC;
    v28[3] = &unk_25DE30;
    v24 = v19;
    v29 = v24;
    groupCopy = v27;
    [v27 addCompletion:v28];
    v25 = v29;
  }

  else
  {
    v24 = 0;
    v16 = 1;
    v25 = v11;
  }

LABEL_25:
  return v16 & 1;
}

- (BOOL)_lq_shouldSubmitRenderModelUpdate:(BOOL)update transactionGroup:(id)group
{
  groupCopy = group;
  os_unfair_lock_lock(&self->_layoutConditionsLock);
  allObjects = [(NSHashTable *)self->_layoutConditionsSuspendingUpdates allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  if (update)
  {
    v8 = 1;
  }

  else
  {
    v8 = [groupCopy flags] & 1;
  }

  renderModelMode = self->_renderModelMode;
  v35 = groupCopy;
  if (!renderModelMode)
  {
    v10 = 256;
    goto LABEL_8;
  }

  if (renderModelMode == 1)
  {
    v10 = 280;
LABEL_8:
    v11 = *(&self->super.isa + v10);
    goto LABEL_10;
  }

  v11 = 0;
LABEL_10:
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = allObjects;
  v13 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
  if (!v13)
  {

    allObjects2 = v12;
    goto LABEL_34;
  }

  v14 = v13;
  v34 = v8;
  v15 = 0;
  v16 = *v43;
  v17 = 1;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v43 != v16)
      {
        objc_enumerationMutation(v12);
      }

      v19 = *(*(&v42 + 1) + 8 * i);
      if ([v19 evaluateWithRenderModel:v11])
      {
        if (!v15)
        {
          v15 = objc_opt_new();
        }

        [v15 addObject:v19];
      }

      else
      {
        v17 = 0;
      }
    }

    v14 = [v12 countByEnumeratingWithState:&v42 objects:v53 count:16];
  }

  while (v14);

  if (!v15)
  {
    v28 = v12;
    allObjects2 = v28;
    v8 = v34;
    if ((v17 & 1) == 0)
    {
      v27 = v35;
      goto LABEL_36;
    }

LABEL_34:
    v15 = 0;
    v29 = 1;
    v27 = v35;
    goto LABEL_41;
  }

  os_unfair_lock_lock(&self->_layoutConditionsLock);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v20 = v15;
  v21 = [v20 countByEnumeratingWithState:&v38 objects:v52 count:16];
  v8 = v34;
  if (v21)
  {
    v22 = v21;
    v23 = *v39;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v39 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(NSHashTable *)self->_layoutConditionsSuspendingUpdates removeObject:*(*(&v38 + 1) + 8 * j)];
      }

      v22 = [v20 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v22);
  }

  allObjects2 = [(NSHashTable *)self->_layoutConditionsSuspendingUpdates allObjects];
  os_unfair_lock_unlock(&self->_layoutConditionsLock);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_C2A58;
  v36[3] = &unk_25DE30;
  v26 = v20;
  v37 = v26;
  v27 = v35;
  [v35 addCompletion:v36];

  if (v17)
  {
    v29 = 1;
    v15 = v26;
    goto LABEL_41;
  }

LABEL_36:
  v30 = TUITransactionLog(v28);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    v32 = @"NO";
    *buf = 134218498;
    if (v8)
    {
      v32 = @"YES";
    }

    v47 = uniqueIdentifier;
    v48 = 2112;
    v49 = v32;
    v50 = 2112;
    v51 = allObjects2;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "[fid:%lu] layout conditions not meet; forcing=%@; remaining conditions: %@", buf, 0x20u);
  }

  v29 = 0;
LABEL_41:

  return v8 | v29;
}

- (void)setPriority:(float)priority
{
  v5 = TUIPriorityClamp(priority);
  if (self->_priority != v5)
  {
    v6 = TUILayoutLog(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      priority = self->_priority;
      *buf = 134218496;
      v14 = uniqueIdentifier;
      v15 = 2048;
      priorityCopy = priority;
      v17 = 2048;
      v18 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "[fid:%lu] changing priority %f -> %f", buf, 0x20u);
    }

    *&v9 = v5;
    [(TUIWorkQueueContext *)self->_queueContext setPriority:v9];
    self->_priority = v5;
    dataRequestsSync = self->_dataRequestsSync;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_C2C90;
    v11[3] = &unk_261148;
    v11[4] = self;
    v12 = v5;
    dispatch_sync(dataRequestsSync, v11);
  }
}

- (void)setStatsMode:(unint64_t)mode
{
  if (self->_statsMode != mode)
  {
    v5 = TUILayoutLog(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      uniqueIdentifier = self->_feedId.uniqueIdentifier;
      statsMode = self->_statsMode;
      *buf = 134218496;
      v11 = uniqueIdentifier;
      v12 = 2048;
      v13 = statsMode;
      v14 = 2048;
      modeCopy = mode;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "[fid:%lu] changing stats mode %04lx -> %04lx", buf, 0x20u);
    }

    self->_statsMode = mode;
    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_C2E58;
    v9[3] = &unk_25DED0;
    v9[4] = self;
    v9[5] = mode;
    dispatch_async(activeQueue, v9);
  }
}

- (void)setLayoutState:(unint64_t)state
{
  if (self->_layoutState != state)
  {
    delegateFlags = self->_delegateFlags;
    if ((delegateFlags & 2) != 0)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      [WeakRetained feedLayoutController:self willTransitionToLayoutState:state];

      delegateFlags = self->_delegateFlags;
    }

    self->_layoutState = state;
    if ((delegateFlags & 4) != 0)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 feedLayoutController:self didTransitionToLayoutState:state];
    }
  }
}

- (void)collectStatsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_C30DC;
    v6[3] = &unk_25EA78;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(activeQueue, v6);
  }
}

- (void)statRecordInitialResourcesRenderedDate
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3208;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)statRecordResourcesStartLoadingDate
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3328;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)statRecordResourcesLoadedDate
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3448;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)statRecordViewWillAppear
{
  v3 = +[NSDate date];
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C3568;
  v6[3] = &unk_25DCA0;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(activeQueue, v6);
}

- (void)_cancelDataRequests
{
  dataRequestsSync = self->_dataRequestsSync;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C363C;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_sync(dataRequestsSync, block);
}

- (void)updateWithContent:(id)content layoutUpToEntry:(id)entry environment:(id)environment transaction:(id)transaction
{
  contentCopy = content;
  environmentCopy = environment;
  transactionCopy = transaction;
  entryCopy = entry;
  v14 = +[NSDate date];
  uuid = [entryCopy uuid];

  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v16 = TUITransactionLog([(TUIFeedLayoutController *)self _cancelDataRequests]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    v19 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
    *buf = 134218754;
    v35 = uniqueIdentifier;
    v36 = 2112;
    v37 = transactionCopy;
    v38 = 2112;
    v39 = WeakRetained;
    v40 = 2112;
    v41 = v19;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithContent:layoutUpToEntry:environment:transaction: - tx=%@, lastEnvironmentToken=%@, lastContentToken=%@", buf, 0x2Au);
  }

  v20 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [transactionCopy dependentOn:v20];

  v21 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
  [transactionCopy dependentOn:v21];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  dependencyToken2 = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastContentTransactionToken, dependencyToken2);

  transactionCoordinator = self->_transactionCoordinator;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_C3944;
  v29[3] = &unk_2611D0;
  v29[4] = self;
  v30 = environmentCopy;
  v31 = uuid;
  v32 = contentCopy;
  v33 = v14;
  v25 = v14;
  v26 = contentCopy;
  v27 = uuid;
  v28 = environmentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v29];
}

- (void)layoutIfNeededWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v5 = transactionCopy;
  [(TUITransactionCoordinating *)self->_transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:&stru_2611F0];
}

- (void)updateWithContent:(id)content transaction:(id)transaction
{
  contentCopy = content;
  transactionCopy = transaction;
  v8 = +[NSDate date];
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v9 = TUITransactionLog([(TUIFeedLayoutController *)self _cancelDataRequests]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    v12 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
    *buf = 134218754;
    v22 = uniqueIdentifier;
    v23 = 2112;
    v24 = transactionCopy;
    v25 = 2112;
    v26 = WeakRetained;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithContent: - tx=%@, lastEnvironmentToken=%@, lastContentToken=%@", buf, 0x2Au);
  }

  v13 = objc_loadWeakRetained(&self->_lastContentTransactionToken);
  [transactionCopy dependentOn:v13];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastContentTransactionToken, dependencyToken);

  transactionCoordinator = self->_transactionCoordinator;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_C3C48;
  v18[3] = &unk_261218;
  v18[4] = self;
  v19 = contentCopy;
  v20 = v8;
  v16 = v8;
  v17 = contentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v18];
}

- (void)lq_updateContent:(id)content contentUpdateDate:(id)date transaction:(id)transaction transactionGroup:(id)group
{
  contentCopy = content;
  dateCopy = date;
  transactionCopy = transaction;
  groupCopy = group;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = TUILayoutLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = uniqueIdentifier;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "[fid:%lu] lq_updateContent", &buf, 0xCu);
  }

  [(TUIStatsDatesCollector *)self->_datesCollector setContentUpdateDate:dateCopy];
  [(TUIStatsDatesCollector *)self->_datesCollector setInitialContentReadyDate:0];
  [(TUIStatsDatesCollector *)self->_datesCollector setDynamicUpdateDate:0];
  [(TUIStatsDatesCollector *)self->_datesCollector setResourcesLoadedDate:0];
  objc_storeStrong(&self->_content, content);
  v43 = (self->_layoutGenerationId + 1);
  self->_layoutGenerationId = v43;
  p_layoutNextSection = &self->_layoutNextSection;
  *&self->_layoutNextSection = xmmword_24CD50;
  v41 = objc_opt_new();
  v44 = [transactionCopy tx];
  layoutUntilEntryWithUUID = self->_layoutUntilEntryWithUUID;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [(TUIFeedContent *)self->_content entries];
  v16 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v16)
  {
    v17 = 0;
    v18 = layoutUntilEntryWithUUID != 0;
    v42 = *v55;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v55 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v54 + 1) + 8 * i);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v59 = 0x3032000000;
        v60 = sub_C13B4;
        v61 = sub_C13C4;
        if (v18)
        {
          options = [v44 options];
          v62 = [TUITransaction transactionWithOptions:options];
        }

        else
        {
          v62 = +[TUITransaction currentOrImplicitTransaction];
        }

        v22 = [*(*(&buf + 1) + 40) tx];
        [*(*(&buf + 1) + 40) addCategory:@"content-load"];
        [v22 addCompletionDeferral];
        [v22 addSubTransactionCompletionDeferral];
        if (v18)
        {
          activeCallbackQueue = [(TUIWorkQueueContext *)self->_queueContext activeCallbackQueue];
          [v44 addSubTransaction:v22 completionQueue:activeCallbackQueue];

          uuid = [v20 uuid];
          v25 = [uuid isEqual:self->_layoutUntilEntryWithUUID];

          v18 = v25 ^ 1;
        }

        else
        {
          v18 = 0;
        }

        v26 = [(TUIFeedLayoutController *)self lq_createRenderModelForFeedEntry:v20 section:v17];
        objc_initWeak(&location, self);
        objc_initWeak(&from, v20);
        v51[0] = 0;
        v51[1] = v51;
        v51[2] = 0x2020000000;
        v51[3] = -1;
        priority = self->_priority;
        v45[0] = _NSConcreteStackBlock;
        v45[1] = 3221225472;
        v45[2] = sub_C4220;
        v45[3] = &unk_261268;
        objc_copyWeak(&v49, &location);
        objc_copyWeak(v50, &from);
        v47 = v51;
        p_buf = &buf;
        v50[1] = v17;
        v50[2] = v43;
        v28 = v22;
        v46 = v28;
        *&v29 = priority;
        v30 = [v20 requestDataWithPriority:v45 block:v29];
        if (v30)
        {
          [v41 addObject:v30];
        }

        objc_destroyWeak(v50);
        objc_destroyWeak(&v49);
        _Block_object_dispose(v51, 8);
        objc_destroyWeak(&from);
        objc_destroyWeak(&location);

        _Block_object_dispose(&buf, 8);
        ++v17;
      }

      v16 = [obj countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v16);
  }

  v31 = [v41 copy];
  dataRequests = self->_dataRequests;
  self->_dataRequests = v31;

  entries = [contentCopy entries];
  self->_layoutNumberOfSections = [entries count];

  if (!self->_layoutUntilEntryWithUUID)
  {
    layoutNumberOfSections = self->_layoutNumberOfSections;
    if (layoutNumberOfSections != 0x7FFFFFFFFFFFFFFFLL && *p_layoutNextSection < layoutNumberOfSections)
    {
      [(TUIFeedLayoutController *)self setLayoutState:1];
    }
  }
}

- (void)updateDatesCollectorWithBlock:(id)block
{
  blockCopy = block;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_C47AC;
  v7[3] = &unk_25EAA0;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(workQueue, v7);
}

- (void)updateWithEnvironment:(id)environment state:(id)state withTransaction:(id)transaction
{
  environmentCopy = environment;
  transactionCopy = transaction;
  stateCopy = state;
  v12 = TUIInstantiationLog(stateCopy);
  if (os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_0, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TUIFeedLayoutController.updateWithEnvironment", "", buf, 2u);
  }

  os_unfair_lock_lock(&self->_environmentLock);
  objc_storeStrong(&self->_environmentPendingUpdate, environment);
  os_unfair_lock_unlock(&self->_environmentLock);
  if (!transactionCopy)
  {
    v13 = +[TUITransaction currentOrImplicitTransaction];
    transactionCopy = v13;
  }

  v14 = TUITransactionLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v27 = uniqueIdentifier;
    v28 = 2112;
    v29 = transactionCopy;
    v30 = 2112;
    v31 = WeakRetained;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateWithEnvironment:state:withTransaction: - tx=%@, lastEnvironmentToken=%@", buf, 0x20u);
  }

  v17 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [transactionCopy dependentOn:v17];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  v19 = [stateCopy copy];
  transactionCoordinator = self->_transactionCoordinator;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_C4A2C;
  v23[3] = &unk_261218;
  v23[4] = self;
  v24 = environmentCopy;
  v25 = v19;
  v21 = v19;
  v22 = environmentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v23];
}

- (void)updateHostingGeometryMap:(id)map withTransaction:(id)transaction
{
  mapCopy = map;
  transactionCopy = transaction;
  v8 = TUITransactionLog(transactionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v18 = uniqueIdentifier;
    v19 = 2112;
    v20 = transactionCopy;
    v21 = 2112;
    v22 = WeakRetained;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: updateHostingGeometryMap:withTransaction - tx=%@, lastEnvironmentTx=%@", buf, 0x20u);
  }

  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  v11 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [transactionCopy dependentOn:v11];

  dependencyToken = [transactionCopy dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  transactionCoordinator = self->_transactionCoordinator;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_C4D24;
  v15[3] = &unk_261290;
  v15[4] = self;
  v16 = mapCopy;
  v14 = mapCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v15];
}

- (BOOL)lq_updateHostingGeometryMap:(id)map
{
  mapCopy = map;
  if (self->_hostingGeometryMap == mapCopy)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v6 = [_TUIHostingGeometryMapUpdate alloc];
    hostingGeometryMap = self->_hostingGeometryMap;
    viewRegistry = [(TUIManager *)self->_manager viewRegistry];
    hostedViewFactoryTypesWithGeometryReuse = [viewRegistry hostedViewFactoryTypesWithGeometryReuse];
    v10 = [(_TUIHostingGeometryMapUpdate *)v6 initWithFrom:hostingGeometryMap to:mapCopy reuseTypes:hostedViewFactoryTypesWithGeometryReuse];

    objc_storeStrong(&self->_hostingGeometryMap, map);
    if (self->_layoutNumberOfSections)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        sections = self->_sections;
        v14 = [NSNumber numberWithUnsignedInteger:v12];
        v15 = [(NSMutableDictionary *)sections objectForKeyedSubscript:v14];

        v11 |= [v15 lq_updateHostingGeometryMap:v10];
        ++v12;
      }

      while (v12 < self->_layoutNumberOfSections);
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11 & 1;
}

- (void)transactionCoordinator:(id)coordinator applyUpdatesFromTransactionGroup:(id)group
{
  groupCopy = group;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained feedLayoutController:self applyUpdatesFromTransactionGroup:groupCopy];
  }

  else
  {
    [groupCopy applyUpdates];
  }
}

- (void)transactionCoordinator:(id)coordinator updateWithTransactionGroup:(id)group
{
  groupCopy = group;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (self->_suspended)
  {
    currentRenderModel = self->_currentRenderModel;
    self->_currentRenderModel = 0;

    currentHostingMap = self->_currentHostingMap;
    self->_currentHostingMap = 0;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_C5018;
    v13[3] = &unk_25DCA0;
    v13[4] = self;
    v14 = groupCopy;
    [v14 computeFinalUpdatesWithBlock:v13];
  }

  else
  {
    v9 = +[UITraitCollection _currentTraitCollection];
    traitCollection = [(TUIEnvironment *)self->_environment traitCollection];
    [UITraitCollection _setCurrentTraitCollection:traitCollection];

    [(TUIFeedLayoutController *)self lq_updateRenderModelsWithTransactionGroup:groupCopy];
    [UITraitCollection _setCurrentTraitCollection:v9];
    captureController = self->_captureController;
    if (captureController)
    {
      [(TUIFeedCaptureController *)captureController endCapture];
      v12 = self->_captureController;
      self->_captureController = 0;
    }
  }
}

- (void)transactionCoordinator:(id)coordinator timeoutForSynchronousTransactionGroup:(id)group
{
  if (!self->_renderModelMode)
  {
    groupCopy = group;
    v7 = [[TUIRenderModelCollection alloc] initWithContent:self->_content sections:0 size:0 insets:0 visibleBoundsObservers:0 info:[(TUIEnvironment *)self->_environment layoutDirection] anchorSet:CGSizeZero.width layoutDirection:CGSizeZero.height matchingUUID:UIEdgeInsetsZero.top matchingUID:UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, 0];
    [(TUIRenderUpdateCollectionController *)self->_updateController updateWithHostingMap:0 transactionGroup:groupCopy];
    [(TUIRenderUpdateCollectionController *)self->_updateController updateWithRenderModel:v7 viewState:0 flags:0 transactionGroup:groupCopy];
  }
}

- (id)instantiateContext:(id)context serviceConformingToProtocol:(id)protocol
{
  if (protocol_isEqual(protocol, &OBJC_PROTOCOL___TUIWPService))
  {
    v5 = self->_wpService;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)lq_updateAXModelTreeWithTransactionGroup:(id)group
{
  groupCopy = group;
  workQueue = [(TUIWorkQueueContext *)self->_queueContext workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(TUIEnvironment *)self->_environment accessibilityElementsNeeded])
  {
    v24 = groupCopy;
    v6 = objc_opt_class();
    currentStackName = [(TUIFeedContent *)self->_content currentStackName];
    value = [currentStackName value];
    v9 = TUIDynamicCast(v6, value);

    v10 = objc_opt_new();
    v25 = objc_opt_new();
    if ([(NSMutableDictionary *)self->_sections count])
    {
      v11 = 0;
      do
      {
        sections = self->_sections;
        v13 = [NSNumber numberWithUnsignedInteger:v11];
        v14 = [(NSMutableDictionary *)sections objectForKey:v13];

        axModelTree = [v14 axModelTree];
        if (axModelTree)
        {
          [v10 addObject:axModelTree];
        }

        else
        {
          v16 = objc_opt_new();
          [v10 addObject:v16];
        }

        entry = [v14 entry];
        stackNames = [entry stackNames];
        v19 = [stackNames containsObject:v9];

        if ((v19 & 1) == 0)
        {
          [axModelTree setHidden:1];
        }

        renderModel = [v14 renderModel];
        if (renderModel)
        {
          v21 = [NSNumber numberWithUnsignedInteger:v11];
          [v25 setObject:renderModel forKeyedSubscript:v21];
        }

        ++v11;
      }

      while (v11 < [(NSMutableDictionary *)self->_sections count]);
    }

    objc_initWeak(&location, self);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_C54A4;
    v26[3] = &unk_2612B8;
    objc_copyWeak(&v30, &location);
    v22 = v10;
    v27 = v22;
    selfCopy = self;
    v23 = v25;
    v29 = v23;
    groupCopy = v24;
    [v24 appendUpdateBlock:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (void)suspendAndTeardownWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    transactionCopy = +[TUITransaction currentOrImplicitTransaction];
  }

  transactionCoordinator = self->_transactionCoordinator;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_C55B4;
  v6[3] = &unk_25EB80;
  v6[4] = self;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:transactionCopy block:v6];
}

- (void)resumeAndRebuildWithEnvironment:(id)environment state:(id)state transaction:(id)transaction
{
  environmentCopy = environment;
  transactionCopy = transaction;
  if (transactionCopy)
  {
    v10 = transactionCopy;
    stateCopy = state;
  }

  else
  {
    stateCopy2 = state;
    v10 = +[TUITransaction currentOrImplicitTransaction];
  }

  v13 = [state copy];

  v15 = TUITransactionLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    uniqueIdentifier = self->_feedId.uniqueIdentifier;
    WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
    *buf = 134218498;
    v27 = uniqueIdentifier;
    v28 = 2112;
    v29 = v10;
    v30 = 2112;
    v31 = WeakRetained;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[fid:%lu] FeedLayoutController: resumeAndRebuildWithEnvironment - tx=%@, lastEnvironmentToken=%@", buf, 0x20u);
  }

  v18 = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);
  [v10 dependentOn:v18];

  dependencyToken = [v10 dependencyToken];
  objc_storeWeak(&self->_lastEnvironmentTransactionToken, dependencyToken);

  transactionCoordinator = self->_transactionCoordinator;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_C586C;
  v23[3] = &unk_261218;
  v23[4] = self;
  v24 = environmentCopy;
  v25 = v13;
  v21 = v13;
  v22 = environmentCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v10 block:v23];
}

- (void)suspendUpdatesUntilMeetingLayoutCondition:(id)condition
{
  conditionCopy = condition;
  if (conditionCopy)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_C5A64;
    v8 = &unk_25E240;
    objc_copyWeak(&v9, &location);
    [conditionCopy onInvalidate:&v5];
    os_unfair_lock_lock(&self->_layoutConditionsLock);
    [(NSHashTable *)self->_layoutConditionsSuspendingUpdates addObject:conditionCopy, v5, v6, v7, v8];
    os_unfair_lock_unlock(&self->_layoutConditionsLock);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)suspendLayoutsUntilMeetingLayoutCondition:(id)condition
{
  conditionCopy = condition;
  if (conditionCopy)
  {
    objc_initWeak(&location, self);
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_C5B98;
    v8 = &unk_25E240;
    objc_copyWeak(&v9, &location);
    [conditionCopy onInvalidate:&v5];
    os_unfair_lock_lock(&self->_layoutConditionsLock);
    [(NSHashTable *)self->_layoutConditionsSuspendingLayout addObject:conditionCopy, v5, v6, v7, v8];
    os_unfair_lock_unlock(&self->_layoutConditionsLock);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_updateAfterLayoutConditionSuspendingUpdatesInvalidated
{
  v3 = +[TUITransaction implicitTransaction];
  [(TUITransactionCoordinating *)self->_transactionCoordinator scheduleLayoutUpdateWithTransaction:v3 block:&stru_2612D8];
}

- (void)beginLiveResize
{
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C5CCC;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(activeQueue, block);
}

- (void)endLiveResize
{
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C5EB0;
  block[3] = &unk_25DE30;
  block[4] = self;
  dispatch_async(activeQueue, block);
}

- (void)captureWithController:(id)controller completion:(id)completion
{
  controllerCopy = controller;
  completionCopy = completion;
  v8 = +[TUITransaction implicitTransaction];
  transactionCoordinator = self->_transactionCoordinator;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_C60D0;
  v12[3] = &unk_261320;
  v12[4] = self;
  v13 = controllerCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = controllerCopy;
  [(TUITransactionCoordinating *)transactionCoordinator scheduleLayoutUpdateWithTransaction:v8 block:v12];
}

- (void)dumpModelTreeForEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C6300;
  block[3] = &unk_261370;
  block[4] = self;
  v12 = entryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = entryCopy;
  dispatch_async(activeQueue, block);
}

- (void)dumpLayoutTreeForEntry:(id)entry completion:(id)completion
{
  entryCopy = entry;
  completionCopy = completion;
  activeQueue = [(TUIWorkQueueContext *)self->_queueContext activeQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C65FC;
  block[3] = &unk_261370;
  block[4] = self;
  v12 = entryCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = entryCopy;
  dispatch_async(activeQueue, block);
}

- (TUIFeedLayoutControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TUIActionHandlerDelegate)actionHandlerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionHandlerDelegate);

  return WeakRetained;
}

- (TUITransactionDependencyToken)lastEnvironmentTransactionToken
{
  WeakRetained = objc_loadWeakRetained(&self->_lastEnvironmentTransactionToken);

  return WeakRetained;
}

- (TUITransactionDependencyToken)lastContentTransactionToken
{
  WeakRetained = objc_loadWeakRetained(&self->_lastContentTransactionToken);

  return WeakRetained;
}

@end