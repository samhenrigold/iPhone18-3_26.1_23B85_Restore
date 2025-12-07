@interface ATXSuggestedPagesStackLayoutOneSmallOnTop
- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment;
- (unint64_t)maxAppRowsForPageType:(int64_t)type;
@end

@implementation ATXSuggestedPagesStackLayoutOneSmallOnTop

- (id)makeStacksFromWidgets:(id)widgets pageType:(int64_t)type environment:(id)environment
{
  v26 = *MEMORY[0x277D85DE8];
  widgetsCopy = widgets;
  environmentCopy = environment;
  v8 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = widgetsCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (![v14 size])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v11);
  }

  if ([v8 count])
  {
    v15 = +[ATXSuggestedPagesUtils createSmallStack];
    tunableConstants = [environmentCopy tunableConstants];
    v17 = +[ATXSuggestedPagesUtils sortWidgetsByDescendingScore:limit:](ATXSuggestedPagesUtils, "sortWidgetsByDescendingScore:limit:", v8, [tunableConstants maxWidgetsInStack]);
    [v15 setWidgets:v17];

    v24 = v15;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (unint64_t)maxAppRowsForPageType:(int64_t)type
{
  if ([MEMORY[0x277D42590] isiPad])
  {
    return 4;
  }

  else
  {
    return 3;
  }
}

@end