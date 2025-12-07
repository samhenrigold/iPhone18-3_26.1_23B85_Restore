@interface IKStyleList
- (IKStyleList)initWithClassSelector:(id)selector styles:(id)styles baseStyleList:(id)list;
- (id)resolvedStyleWithMediaQueryEvaluator:(id)evaluator;
- (void)_resolveWithMediaQueryEvaluator:(id)evaluator;
- (void)setNeedsReresolution;
@end

@implementation IKStyleList

- (IKStyleList)initWithClassSelector:(id)selector styles:(id)styles baseStyleList:(id)list
{
  v30 = *MEMORY[0x277D85DE8];
  selectorCopy = selector;
  stylesCopy = styles;
  listCopy = list;
  v28.receiver = self;
  v28.super_class = IKStyleList;
  v11 = [(IKStyleList *)&v28 init];
  if (v11)
  {
    requiresMediaQueryEvaluation = [listCopy requiresMediaQueryEvaluation];
    v11->_requiresMediaQueryEvaluation = requiresMediaQueryEvaluation;
    if ((requiresMediaQueryEvaluation & 1) == 0)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v13 = stylesCopy;
      v14 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v25;
        while (2)
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v25 != v16)
            {
              objc_enumerationMutation(v13);
            }

            mediaQueryList = [*(*(&v24 + 1) + 8 * i) mediaQueryList];

            if (mediaQueryList)
            {
              v11->_requiresMediaQueryEvaluation = 1;
              goto LABEL_13;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v24 objects:v29 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    objc_storeStrong(&v11->_baseStyleList, list);
    v19 = [stylesCopy copy];
    styles = v11->_styles;
    v11->_styles = v19;

    v21 = [selectorCopy copy];
    classSelector = v11->_classSelector;
    v11->_classSelector = v21;

    if (!v11->_requiresMediaQueryEvaluation)
    {
      [(IKStyleList *)v11 _resolveWithMediaQueryEvaluator:0];
    }
  }

  return v11;
}

- (id)resolvedStyleWithMediaQueryEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  if (![(IKStyleList *)self isResolutionDone])
  {
    [(IKStyleList *)self _resolveWithMediaQueryEvaluator:evaluatorCopy];
  }

  resolvedStyle = [(IKStyleList *)self resolvedStyle];

  return resolvedStyle;
}

- (void)setNeedsReresolution
{
  if ([(IKStyleList *)self requiresMediaQueryEvaluation])
  {
    [(IKStyleList *)self setResolvedStyle:0];
    [(IKStyleList *)self setResolutionDone:0];
    baseStyleList = [(IKStyleList *)self baseStyleList];
    [baseStyleList setNeedsReresolution];
  }
}

- (void)_resolveWithMediaQueryEvaluator:(id)evaluator
{
  v28 = *MEMORY[0x277D85DE8];
  evaluatorCopy = evaluator;
  if (![(IKStyleList *)self isResolutionDone])
  {
    v5 = MEMORY[0x277CBEB18];
    styles = [(IKStyleList *)self styles];
    v7 = [v5 arrayWithCapacity:{objc_msgSend(styles, "count") + 1}];

    baseStyleList = [(IKStyleList *)self baseStyleList];
    v9 = [baseStyleList resolvedStyleWithMediaQueryEvaluator:evaluatorCopy];

    if (v9)
    {
      [v7 addObject:v9];
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = [(IKStyleList *)self styles:v9];
    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          mediaQueryList = [v15 mediaQueryList];
          if (mediaQueryList)
          {
            v17 = mediaQueryList;
            mediaQueryList2 = [v15 mediaQueryList];
            v19 = [evaluatorCopy evaluateStyleMediaQueryList:mediaQueryList2];

            if (!v19)
            {
              continue;
            }
          }

          [v7 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    if ([v7 count])
    {
      v20 = [IKViewElementStyle elementStyleWithSelector:0 aggregatingStyles:v7];
    }

    else
    {
      v20 = 0;
    }

    [v22 setResolvedStyle:v20];
    [v22 setResolutionDone:1];
  }
}

@end