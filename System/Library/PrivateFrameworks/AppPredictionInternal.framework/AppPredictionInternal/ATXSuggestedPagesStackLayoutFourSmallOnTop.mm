@interface ATXSuggestedPagesStackLayoutFourSmallOnTop
- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment;
- (unint64_t)maxAppRowsForPageType:(int64_t)type;
- (void)layOutStacks:(id)stacks numberOfColumns:(unint64_t)columns forPageType:(int64_t)type;
@end

@implementation ATXSuggestedPagesStackLayoutFourSmallOnTop

- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment
{
  v32 = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  environmentCopy = environment;
  if (type == 4 || ([MEMORY[0x277D42590] isiPad] & 1) != 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = widgetsCopy;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v26 + 1) + 8 * i);
          if (![v16 size])
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    if ([v10 count] >= 4)
    {
      v17 = +[ATXSuggestedPagesUtils createSmallStack];
      v18 = +[ATXSuggestedPagesUtils createSmallStack];
      v19 = +[ATXSuggestedPagesUtils createSmallStack];
      v20 = +[ATXSuggestedPagesUtils createSmallStack];
      v30[0] = v17;
      v30[1] = v18;
      v30[2] = v19;
      v30[3] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];
      v22 = [ATXSuggestedPagesUtils sortWidgetsByDescendingScore:v10 limit:4];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __89__ATXSuggestedPagesStackLayoutFourSmallOnTop_makeStacksFromWidgets_pageType_environment___block_invoke;
      v24[3] = &unk_27859C210;
      v9 = v21;
      v25 = v9;
      [v22 enumerateObjectsUsingBlock:v24];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

void __89__ATXSuggestedPagesStackLayoutFourSmallOnTop_makeStacksFromWidgets_pageType_environment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v5 = MEMORY[0x277CBEA60];
  v6 = a2;
  v7 = [v5 arrayWithObjects:&v9 count:1];
  v8 = [*(a1 + 32) objectAtIndexedSubscript:{a3, v9, v10}];

  [v8 setWidgets:v7];
}

- (void)layOutStacks:(id)stacks numberOfColumns:(unint64_t)columns forPageType:(int64_t)type
{
  stacksCopy = stacks;
  if ([stacksCopy count] != 4)
  {
    [ATXSuggestedPagesStackLayoutFourSmallOnTop layOutStacks:a2 numberOfColumns:self forPageType:?];
  }

  v8 = [stacksCopy objectAtIndexedSubscript:0];
  [v8 assignWidgetSpaceCoordinateWithRow:0 column:0];

  v9 = [stacksCopy objectAtIndexedSubscript:1];
  [v9 assignWidgetSpaceCoordinateWithRow:0 column:1];

  v10 = [stacksCopy objectAtIndexedSubscript:2];
  [v10 assignWidgetSpaceCoordinateWithRow:1 column:0];

  v11 = [stacksCopy objectAtIndexedSubscript:3];

  [v11 assignWidgetSpaceCoordinateWithRow:1 column:1];
}

- (unint64_t)maxAppRowsForPageType:(int64_t)type
{
  if ([MEMORY[0x277D42590] isiPad])
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (void)layOutStacks:(uint64_t)a1 numberOfColumns:(uint64_t)a2 forPageType:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXSuggestedPagesStackLayoutFourSmallOnTop.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"stacks.count == 4"}];
}

@end