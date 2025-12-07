@interface PGTitleGeneratorDateMatching
+ (BOOL)type:(int64_t)type isBetterThanType:(int64_t)thanType;
+ (id)_typeMatchings;
- (BOOL)_dateNodeIntersectsWithReferenceDateIntervalByIgnoringYear;
- (PGTitle)title;
- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval highlightNode:(id)node titleGenerationContext:(id)context;
- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval momentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior isForHighlight:(BOOL)highlight titleGenerationContext:(id)context;
- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval momentNodes:(id)nodes titleGenerationContext:(id)context holidayName:(id)name isForHighlight:(BOOL)highlight;
- (int64_t)_findBestType;
- (int64_t)_matchingTypeForDateNode:(id)node;
- (unint64_t)allowedTimeTitleFormats;
@end

@implementation PGTitleGeneratorDateMatching

- (int64_t)_matchingTypeForDateNode:(id)node
{
  v36 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  [objc_opt_class() _typeMatchings];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  type = 0;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v5)
  {
    v19 = *v32;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v32 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v31 + 1) + 8 * v6);
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v8 = self->_graph;
      v9 = self->_momentNodes;
      v10 = self->_referenceDateInterval;
      collection = [nodeCopy collection];
      momentNodes = [collection momentNodes];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __57__PGTitleGeneratorDateMatching__matchingTypeForDateNode___block_invoke;
      v21[3] = &unk_278882308;
      v13 = v9;
      v26 = &v27;
      v22 = v13;
      v23 = v7;
      v14 = v8;
      v24 = v14;
      v15 = v10;
      v25 = v15;
      [momentNodes enumerateNodesUsingBlock:v21];

      v16 = *(v28 + 24);
      if (v16 == 1)
      {
        type = [v7 type];
      }

      _Block_object_dispose(&v27, 8);
      if (v16)
      {
        break;
      }

      if (v5 == ++v6)
      {
        v5 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return type;
}

void __57__PGTitleGeneratorDateMatching__matchingTypeForDateNode___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = [*(a1 + 40) eventEvaluationBlock];
    *(*(*(a1 + 64) + 8) + 24) = (v5)[2](v5, *(a1 + 48), *(a1 + 56), v6);

    *a3 = *(*(*(a1 + 64) + 8) + 24);
  }
}

- (int64_t)_findBestType
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_referenceDateInterval)
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_dateNodes;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [(PGTitleGeneratorDateMatching *)self _matchingTypeForDateNode:*(*(&v12 + 1) + 8 * i), v12];
        if (v9)
        {
          v10 = v9;
          if ([objc_opt_class() type:v9 isBetterThanType:v6])
          {
            v6 = v10;
          }
        }
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_dateNodeIntersectsWithReferenceDateIntervalByIgnoringYear
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_referenceDateInterval)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    startDate = self->_dateNodes;
    v4 = [(NSSet *)startDate countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = 0;
      v8 = *v33;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(startDate);
          }

          localDate = [*(*(&v32 + 1) + 8 * i) localDate];
          if (!v7 || [v7 compare:localDate] == 1)
          {
            v11 = localDate;

            v7 = v11;
          }

          if (!v6 || [v6 compare:localDate] == -1)
          {
            v12 = localDate;

            v6 = v12;
          }
        }

        v5 = [(NSSet *)startDate countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v5);

      if (!v7)
      {
        v28 = 0;
        goto LABEL_31;
      }

      startDate = [(NSDateInterval *)self->_referenceDateInterval startDate];
      v13 = [MEMORY[0x277D27690] components:24 fromDate:startDate];
      v14 = MEMORY[0x277D27690];
      endDate = [(NSDateInterval *)self->_referenceDateInterval endDate];
      v31 = [v14 components:24 fromDate:endDate];
      while (2)
      {

        v16 = v7;
        v17 = [MEMORY[0x277D27690] components:24 fromDate:v16];
        v18 = [MEMORY[0x277D27690] components:24 fromDate:v6];
        v30 = v16;
        do
        {
          v19 = [v13 day];
          if (v19 == [v17 day])
          {
            month = [v13 month];
            if (month == [v17 month])
            {
              LOBYTE(v7) = 1;
              goto LABEL_28;
            }
          }

          endDate = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:v16];

          v21 = [MEMORY[0x277D27690] components:24 fromDate:endDate];

          v22 = [v21 day];
          if (v22 > [v18 day])
          {
            break;
          }

          month2 = [v21 month];
          v17 = v21;
          v16 = endDate;
        }

        while (month2 <= [v18 month]);
        v24 = [MEMORY[0x277D27690] dateByAddingDays:1 toDate:startDate];

        v25 = [MEMORY[0x277D27690] components:24 fromDate:v24];

        v26 = [v25 day];
        if (v26 <= [v31 day])
        {
          month3 = [v25 month];
          if (month3 <= [v31 month])
          {

            v13 = v25;
            startDate = v24;
            continue;
          }
        }

        break;
      }

      LOBYTE(v7) = 0;
      v17 = v21;
      startDate = v24;
      v16 = endDate;
      v13 = v25;
LABEL_28:

      v28 = v30;
    }

    else
    {
      v28 = 0;
      v6 = 0;
      LOBYTE(v7) = 0;
    }

LABEL_31:
    return v7;
  }

  LOBYTE(v7) = 0;
  return v7;
}

- (unint64_t)allowedTimeTitleFormats
{
  type = self->_type;
  if (!type)
  {
    return 3;
  }

  if (type == 4 && (+[PGUserDefaults isShowingHolidayCalendarEvents](PGUserDefaults, "isShowingHolidayCalendarEvents") || +[PGUserDefaults isAlwaysShowingHolidayCalendarEvents]))
  {
    return 4;
  }

  return 1;
}

- (PGTitle)title
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"PGRelativeDateTitleOnThisDay" value:@"PGRelativeDateTitleOnThisDay" table:@"Localizable"];

  type = self->_type;
  if ((type - 1) >= 2)
  {
    if (type != 3)
    {
      if (type != 4)
      {
        goto LABEL_22;
      }

      if (+[PGUserDefaults isAlwaysShowingHolidayCalendarEvents])
      {
        v6 = [PGCommonTitleUtility holidayNameForDateNodes:self->_dateNodes];
        goto LABEL_8;
      }

      if (+[PGUserDefaults isShowingHolidayCalendarEvents])
      {
        v6 = self->_holidayName;
LABEL_8:
        v7 = v6;
        v8 = 0;
        if (!v6)
        {
LABEL_9:
          v9 = 0;
          goto LABEL_23;
        }

        goto LABEL_12;
      }
    }

    if ([(PGTitleGeneratorDateMatching *)self _dateNodeIntersectsWithReferenceDateIntervalByIgnoringYear])
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = 0;
    v7 = 0;
    goto LABEL_23;
  }

LABEL_11:
  v7 = v4;
  v8 = 1;
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_12:
  lineBreakBehavior = self->_lineBreakBehavior;
  if (!(v8 & 1 | !self->_isForHighlight))
  {
    v11 = [PGHighlightsTitleSpecFactory titleSpecForHolidayEventIncludingLocationIfPossible:1];
    [v11 setInsertNonBreakableSpace:(lineBreakBehavior >> 1) & 1];
    v12 = [PGTitleSpecArgumentEvaluationContext alloc];
    locationHelper = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
    serviceManager = [(PGTitleGenerationContext *)self->_titleGenerationContext serviceManager];
    v15 = [(PGTitleSpecArgumentEvaluationContext *)v12 initWithLocationHelper:locationHelper serviceManager:serviceManager];

    v16 = [v11 titleWithMomentNodes:self->_momentNodes argumentEvaluationContext:v15];
    stringValue = [v16 stringValue];

    if (!stringValue)
    {
      v18 = [PGHighlightsTitleSpecFactory titleSpecForHolidayEventIncludingLocationIfPossible:0];
      [v18 setInsertNonBreakableSpace:(lineBreakBehavior >> 1) & 1];
      v19 = [v18 titleWithMomentNodes:self->_momentNodes argumentEvaluationContext:v15];
      stringValue = [v19 stringValue];
    }

    v7 = stringValue;
  }

  if (lineBreakBehavior)
  {
    v20 = v8;
  }

  else
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = [PGCommonTitleUtility titleWithLineBreakForTitle:v7];

    v7 = v21;
  }

  v9 = [PGTitle titleWithString:v7 category:5];
LABEL_23:

  return v9;
}

- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval momentNodes:(id)nodes titleGenerationContext:(id)context holidayName:(id)name isForHighlight:(BOOL)highlight
{
  v42 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  nodesCopy = nodes;
  contextCopy = context;
  nameCopy = name;
  v39.receiver = self;
  v39.super_class = PGTitleGeneratorDateMatching;
  v18 = [(PGTitleGeneratorDateMatching *)&v39 init];
  if (!v18)
  {
    goto LABEL_19;
  }

  if ([nodesCopy count])
  {
    v35 = nameCopy;
    v36 = intervalCopy;
    anyObject = [nodesCopy anyObject];
    graph = [anyObject graph];

    v21 = graph;
    objc_storeStrong(&v18->_graph, graph);
    objc_storeStrong(&v18->_referenceDateInterval, interval);
    objc_storeStrong(&v18->_momentNodes, nodes);
    v22 = [PGCommonTitleUtility dateNodesFromMomentNodes:nodesCopy];
    dateNodes = v18->_dateNodes;
    v18->_dateNodes = v22;

    objc_storeStrong(&v18->_titleGenerationContext, context);
    objc_storeStrong(&v18->_holidayName, name);
    v18->_isForHighlight = highlight;
    if ([(NSSet *)v18->_dateNodes count]== 1 && !v18->_holidayName)
    {
      v24 = +[PGUserDefaults isAlwaysShowingHolidayCalendarEvents];
      v25 = v18->_dateNodes;
      if (v24)
      {
        v26 = [PGCommonTitleUtility holidayNameForDateNodes:v25];
        v27 = [v26 length];

        if (v27)
        {
          type = 4;
LABEL_18:
          v18->_type = type;

          nameCopy = v35;
          intervalCopy = v36;
LABEL_19:
          v28 = v18;
          goto LABEL_20;
        }
      }

      else
      {
        v38 = 0;
        v29 = [PGCommonTitleUtility containsCelebrationForDateNodes:v25 holidayName:&v38 titleGenerationContext:v18->_titleGenerationContext graph:v18->_graph];
        v30 = v38;
        v31 = v38;
        v32 = v31;
        if (v29)
        {
          if (v31)
          {
            objc_storeStrong(&v18->_holidayName, v30);
            type = 4;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              v34 = v18->_dateNodes;
              *buf = 138412290;
              v41 = v34;
              _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Date %@ contains celebration but holiday name is nil", buf, 0xCu);
            }

            type = [(PGTitleGeneratorDateMatching *)v18 _findBestType];
          }
        }
      }
    }

    if (!type)
    {
      type = [(PGTitleGeneratorDateMatching *)v18 _findBestType];
    }

    goto LABEL_18;
  }

  v28 = 0;
LABEL_20:

  return v28;
}

- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval highlightNode:(id)node titleGenerationContext:(id)context
{
  intervalCopy = interval;
  contextCopy = context;
  collection = [node collection];
  momentNodes = [collection momentNodes];

  if ([momentNodes count])
  {
    temporarySet = [momentNodes temporarySet];
    self = [(PGTitleGeneratorDateMatching *)self initWithType:type referenceDateInterval:intervalCopy momentNodes:temporarySet titleGenerationContext:contextCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PGTitleGeneratorDateMatching)initWithType:(int64_t)type referenceDateInterval:(id)interval momentNodes:(id)nodes lineBreakBehavior:(unint64_t)behavior isForHighlight:(BOOL)highlight titleGenerationContext:(id)context
{
  result = [(PGTitleGeneratorDateMatching *)self initWithType:type referenceDateInterval:interval momentNodes:nodes titleGenerationContext:context holidayName:0 isForHighlight:highlight];
  if (result)
  {
    result->_lineBreakBehavior = behavior;
  }

  return result;
}

+ (id)_typeMatchings
{
  if (_typeMatchings_onceToken != -1)
  {
    dispatch_once(&_typeMatchings_onceToken, &__block_literal_global_28475);
  }

  v3 = _typeMatchings_typeMatchingBlocks;

  return v3;
}

void __46__PGTitleGeneratorDateMatching__typeMatchings__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v0 = [PGTitleGeneratorTypeMatching typeMatchingWithType:8 eventEvaluationBlock:&__block_literal_global_267];
  v4[0] = v0;
  v1 = [PGTitleGeneratorTypeMatching typeMatchingWithType:9 eventEvaluationBlock:&__block_literal_global_271];
  v4[1] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];
  v3 = _typeMatchings_typeMatchingBlocks;
  _typeMatchings_typeMatchingBlocks = v2;
}

BOOL __46__PGTitleGeneratorDateMatching__typeMatchings__block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if ([MEMORY[0x277D276A8] dateIntervalIntersectsWeekend:v5])
  {
    v18 = 0;
    v19 = 0.0;
    v7 = MEMORY[0x277D276A8];
    v8 = [v5 startDate];
    [v7 nextWeekendLocalStartDate:&v18 interval:&v19 options:4 afterDate:v8];
    v9 = v18;

    [v9 timeIntervalSince1970];
    v11 = v10;

    v12 = v11 + v19;
    [v6 timestampUTCStart];
    v14 = v13;
    [v6 timestampUTCEnd];
    v16 = v14 < v12 && v15 > v11;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

uint64_t __46__PGTitleGeneratorDateMatching__typeMatchings__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v20 = 0;
  v21 = 0.0;
  v7 = MEMORY[0x277D276A8];
  v8 = [v5 startDate];
  v9 = [v7 nextWeekendLocalStartDate:&v20 interval:&v21 options:0 afterDate:v8];
  v10 = v20;

  if (v9)
  {
    v11 = objc_alloc(MEMORY[0x277CCA970]);
    v12 = [v11 initWithStartDate:v10 duration:v21];
    if ([v5 intersectsDateInterval:v12])
    {
      [v10 timeIntervalSince1970];
      v14 = v13;
      v15 = v13 + v21;
      [v6 timestampUTCStart];
      v17 = v16;
      [v6 timestampUTCEnd];
      v9 = v17 < v15 && v18 > v14;
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (BOOL)type:(int64_t)type isBetterThanType:(int64_t)thanType
{
  v4 = 0;
  v23 = *MEMORY[0x277D85DE8];
  if (type && type != thanType)
  {
    _typeMatchings = [objc_opt_class() _typeMatchings];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [_typeMatchings countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v19;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v14 = 0;
        v17 = v10;
        do
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(_typeMatchings);
          }

          v15 = *(*(&v18 + 1) + 8 * v14);
          if ([v15 type] == type)
          {
            v13 = v10;
          }

          if ([v15 type] == thanType)
          {
            v12 = v10;
          }

          ++v10;
          ++v14;
        }

        while (v9 != v14);
        v10 = v17 + v9;
        v9 = [_typeMatchings countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    else
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v13 < v12;
  }

  return v4;
}

@end