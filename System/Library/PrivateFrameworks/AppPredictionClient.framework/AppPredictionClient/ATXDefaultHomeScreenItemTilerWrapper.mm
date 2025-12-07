@interface ATXDefaultHomeScreenItemTilerWrapper
- (ATXDefaultHomeScreenItemTilerWrapper)initWithDefaultStack:(id)stack defaultWidgetsSmall:(id)small defaultWidgetsMedium:(id)medium defaultWidgetsLarge:(id)large defaultWidgetsExtraLarge:(id)extraLarge widgetFamilyMask:(unint64_t)mask gridSize:(unint64_t)size galleryRequest:(id)self0;
@end

@implementation ATXDefaultHomeScreenItemTilerWrapper

- (ATXDefaultHomeScreenItemTilerWrapper)initWithDefaultStack:(id)stack defaultWidgetsSmall:(id)small defaultWidgetsMedium:(id)medium defaultWidgetsLarge:(id)large defaultWidgetsExtraLarge:(id)extraLarge widgetFamilyMask:(unint64_t)mask gridSize:(unint64_t)size galleryRequest:(id)self0
{
  stackCopy = stack;
  smallCopy = small;
  mediumCopy = medium;
  largeCopy = large;
  extraLargeCopy = extraLarge;
  requestCopy = request;
  v33.receiver = self;
  v33.super_class = ATXDefaultHomeScreenItemTilerWrapper;
  v22 = [(ATXDefaultHomeScreenItemTilerWrapper *)&v33 init];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_24;
  }

  if (size <= 1)
  {
    if (!size)
    {
      if (requestCopy)
      {
        clientIdentity = [requestCopy clientIdentity];
        if ([clientIdentity widgetClient] == 2)
        {
          limit = [requestCopy limit];
          unsignedIntegerValue = [limit unsignedIntegerValue];
        }

        else
        {
          unsignedIntegerValue = 12;
        }
      }

      else
      {
        unsignedIntegerValue = 12;
      }

      v28 = [[ATXDefaultHomeScreenItemTilerGridSize2 alloc] initWithDefaultStack:stackCopy defaultWidgetsSmall:smallCopy defaultWidgetsMedium:mediumCopy defaultWidgetsLarge:largeCopy defaultWidgetsExtraLarge:extraLargeCopy widgetFamilyMask:mask targetNumberOfSuggestions:unsignedIntegerValue];
      goto LABEL_22;
    }

    if (size != 1)
    {
      goto LABEL_24;
    }

    v25 = ATXDefaultHomeScreenItemTilerGridSize3;
    goto LABEL_12;
  }

  switch(size)
  {
    case 2uLL:
      v25 = ATXDefaultHomeScreenItemTilerGridSize4;
LABEL_12:
      v26 = [v25 alloc];
      v27 = 7;
LABEL_14:
      v28 = [(ATXDefaultHomeScreenItemTilerPodBuilder *)v26 initWithDefaultStack:stackCopy defaultWidgetsSmall:smallCopy defaultWidgetsMedium:mediumCopy defaultWidgetsLarge:largeCopy defaultWidgetsExtraLarge:extraLargeCopy widgetFamilyMask:mask targetNumberOfSuggestions:v27];
LABEL_22:
      tiler = v23->_tiler;
      v23->_tiler = v28;
LABEL_23:

      break;
    case 3uLL:
      v26 = [ATXDefaultHomeScreenItemTilerGridSize5 alloc];
      v27 = 10;
      goto LABEL_14;
    case 4uLL:
      tiler = __atxlog_handle_modes(v22);
      if (os_log_type_enabled(tiler, OS_LOG_TYPE_FAULT))
      {
        [ATXDefaultHomeScreenItemTilerWrapper initWithDefaultStack:? defaultWidgetsSmall:? defaultWidgetsMedium:? defaultWidgetsLarge:? defaultWidgetsExtraLarge:? widgetFamilyMask:? gridSize:? galleryRequest:?];
      }

      goto LABEL_23;
  }

LABEL_24:

  return v23;
}

- (void)initWithDefaultStack:(os_log_t)log defaultWidgetsSmall:defaultWidgetsMedium:defaultWidgetsLarge:defaultWidgetsExtraLarge:widgetFamilyMask:gridSize:galleryRequest:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 134217984;
  v2 = 4;
  _os_log_fault_impl(&dword_1BF549000, log, OS_LOG_TYPE_FAULT, "ATXDefaultHomeScreenItemTiler: grid size is not valid: %lu", &v1, 0xCu);
}

@end