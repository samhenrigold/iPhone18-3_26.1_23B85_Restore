@interface PPSRecipeEngine
+ (id)recipeHandlers;
+ (id)sharedInstance;
- (PPSRecipeEngine)init;
- (id)createEventRecipeForMetric:(id)metric;
- (id)createMetricRecipeForMetric:(id)metric;
- (id)createTimeSeriesRecipeForMetric:(id)metric;
- (id)executeEventRecipe:(id)recipe on:(id)on metrics:(id)metrics error:(id *)error;
- (id)executeMetricRecipe:(id)recipe on:(id)on metric:(id)metric error:(id *)error;
- (id)executeTimeSeriesRecipe:(id)recipe on:(id)on metrics:(id)metrics error:(id *)error;
- (void)registerHandlersForClass:(Class)class;
- (void)setupHandlers;
@end

@implementation PPSRecipeEngine

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[PPSRecipeEngine sharedInstance];
  }

  v3 = sharedInstance_recipeEngine;

  return v3;
}

uint64_t __33__PPSRecipeEngine_sharedInstance__block_invoke()
{
  sharedInstance_recipeEngine = objc_alloc_init(PPSRecipeEngine);

  return MEMORY[0x2821F96F8]();
}

- (id)createEventRecipeForMetric:(id)metric
{
  metricCopy = metric;
  v5 = metricCopy;
  if (metricCopy)
  {
    v6 = MEMORY[0x277CCACA8];
    subsystem = [metricCopy subsystem];
    category = [v5 category];
    v9 = [v6 stringWithFormat:@"%@::%@", subsystem, category];
  }

  else
  {
    v10 = PPSReaderLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine createEventRecipeForMetric:];
    }

    v9 = 0;
  }

  eventRecipeHandlers = [(PPSRecipeEngine *)self eventRecipeHandlers];
  v12 = [eventRecipeHandlers objectForKeyedSubscript:v9];
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)createMetricRecipeForMetric:(id)metric
{
  metricCopy = metric;
  v5 = metricCopy;
  if (metricCopy)
  {
    v6 = MEMORY[0x277CCACA8];
    subsystem = [metricCopy subsystem];
    category = [v5 category];
    name = [v5 name];
    v10 = [v6 stringWithFormat:@"%@::%@::%@", subsystem, category, name];
  }

  else
  {
    v11 = PPSReaderLog(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine createEventRecipeForMetric:];
    }

    v10 = 0;
  }

  metricRecipeHandlers = [(PPSRecipeEngine *)self metricRecipeHandlers];
  v13 = [metricRecipeHandlers objectForKeyedSubscript:v10];
  if (v13)
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v14;
}

- (id)createTimeSeriesRecipeForMetric:(id)metric
{
  metricCopy = metric;
  v5 = metricCopy;
  if (metricCopy)
  {
    v6 = MEMORY[0x277CCACA8];
    subsystem = [metricCopy subsystem];
    category = [v5 category];
    v9 = [v6 stringWithFormat:@"%@::%@", subsystem, category];
  }

  else
  {
    v10 = PPSReaderLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine createEventRecipeForMetric:];
    }

    v9 = 0;
  }

  timeSeriesRecipeHandlers = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
  v12 = [timeSeriesRecipeHandlers objectForKeyedSubscript:v9];
  if (v12)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (id)executeEventRecipe:(id)recipe on:(id)on metrics:(id)metrics error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  onCopy = on;
  metricsCopy = metrics;
  eventRecipeHandlers = [(PPSRecipeEngine *)self eventRecipeHandlers];
  v14 = [eventRecipeHandlers objectForKeyedSubscript:recipeCopy];

  if (!v14)
  {
    recipeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated event recipe is not supported %@", recipeCopy];
    v18 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25[0] = recipeCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    *error = [v18 errorWithDomain:@"com.apple.PPSRecipeEngine" code:3 userInfo:v19];

    v21 = PPSReaderLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeEventRecipe:on:metrics:error:];
    }

    goto LABEL_9;
  }

  v15 = (v14)[2](v14, onCopy, metricsCopy, error);
  recipeCopy = v15;
  if (*error)
  {
    v17 = PPSReaderLog(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeEventRecipe:on:metrics:error:];
    }

LABEL_9:
    v22 = 0;
    goto LABEL_11;
  }

  v22 = [onCopy copy];
  [v22 setMetrics:recipeCopy];
LABEL_11:

  return v22;
}

- (id)executeMetricRecipe:(id)recipe on:(id)on metric:(id)metric error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  onCopy = on;
  metricCopy = metric;
  metricRecipeHandlers = [(PPSRecipeEngine *)self metricRecipeHandlers];
  v14 = [metricRecipeHandlers objectForKeyedSubscript:recipeCopy];

  if (v14)
  {
    v15 = (v14)[2](v14, onCopy, metricCopy, error);
    v16 = v15;
    if (!*error)
    {
      goto LABEL_9;
    }

    recipeCopy = PPSReaderLog(v15);
    if (os_log_type_enabled(recipeCopy, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:on:metric:error:];
    }
  }

  else
  {
    recipeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated metric recipe is not supported %@", recipeCopy];
    v18 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = recipeCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v18 errorWithDomain:@"com.apple.PPSRecipeEngine" code:3 userInfo:v19];

    v21 = PPSReaderLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:on:metric:error:];
    }

    v16 = 0;
  }

LABEL_9:

  return v16;
}

- (id)executeTimeSeriesRecipe:(id)recipe on:(id)on metrics:(id)metrics error:(id *)error
{
  v24[1] = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  onCopy = on;
  metricsCopy = metrics;
  timeSeriesRecipeHandlers = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
  v14 = [timeSeriesRecipeHandlers objectForKeyedSubscript:recipeCopy];

  if (v14)
  {
    v15 = (v14)[2](v14, onCopy, metricsCopy, error);
    v16 = v15;
    if (!*error)
    {
      goto LABEL_9;
    }

    recipeCopy = PPSReaderLog(v15);
    if (os_log_type_enabled(recipeCopy, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:on:metric:error:];
    }
  }

  else
  {
    recipeCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated time series recipe is not supported %@", recipeCopy];
    v18 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = recipeCopy;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    *error = [v18 errorWithDomain:@"com.apple.PPSRecipeEngine" code:3 userInfo:v19];

    v21 = PPSReaderLog(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PPSRecipeEngine executeMetricRecipe:on:metric:error:];
    }

    v16 = 0;
  }

LABEL_9:

  return v16;
}

- (PPSRecipeEngine)init
{
  v5.receiver = self;
  v5.super_class = PPSRecipeEngine;
  v2 = [(PPSRecipeEngine *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PPSRecipeEngine *)v2 setupHandlers];
  }

  return v3;
}

- (void)setupHandlers
{
  v3 = objc_opt_new();
  eventRecipeHandlers = self->_eventRecipeHandlers;
  self->_eventRecipeHandlers = v3;

  v5 = objc_opt_new();
  metricRecipeHandlers = self->_metricRecipeHandlers;
  self->_metricRecipeHandlers = v5;

  v7 = objc_opt_new();
  timeSeriesRecipeHandlers = self->_timeSeriesRecipeHandlers;
  self->_timeSeriesRecipeHandlers = v7;

  v9 = +[PPSRecipeEngine recipeHandlers];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__PPSRecipeEngine_setupHandlers__block_invoke;
  v10[3] = &unk_279A11620;
  v10[4] = self;
  [v9 enumerateObjectsUsingBlock:v10];
}

- (void)registerHandlersForClass:(Class)class
{
  v58 = *MEMORY[0x277D85DE8];
  eventRecipes = [(objc_class *)class eventRecipes];
  metricRecipes = [(objc_class *)class metricRecipes];
  timeSeriesRecipes = [(objc_class *)class timeSeriesRecipes];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = eventRecipes;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        eventRecipeHandlers = [(PPSRecipeEngine *)self eventRecipeHandlers];
        v13 = [eventRecipeHandlers objectForKeyedSubscript:v11];

        if (v13)
        {
          v15 = PPSReaderLog(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v56 = v11;
            _os_log_error_impl(&dword_25E225000, v15, OS_LOG_TYPE_ERROR, "Attempting to register duplicate handler for %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          v15 = [v6 objectForKeyedSubscript:v11];
          eventRecipeHandlers2 = [(PPSRecipeEngine *)self eventRecipeHandlers];
          [eventRecipeHandlers2 setObject:v15 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v8);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v17 = metricRecipes;
  v18 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v45 + 1) + 8 * j);
        metricRecipeHandlers = [(PPSRecipeEngine *)self metricRecipeHandlers];
        v24 = [metricRecipeHandlers objectForKeyedSubscript:v22];

        if (v24)
        {
          v26 = PPSReaderLog(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v56 = v22;
            _os_log_error_impl(&dword_25E225000, v26, OS_LOG_TYPE_ERROR, "Attempting to register duplicate handler for %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          v26 = [v17 objectForKeyedSubscript:v22];
          metricRecipeHandlers2 = [(PPSRecipeEngine *)self metricRecipeHandlers];
          [metricRecipeHandlers2 setObject:v26 forKeyedSubscript:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v19);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = timeSeriesRecipes;
  v29 = [v28 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v41 + 1) + 8 * k);
        timeSeriesRecipeHandlers = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
        v35 = [timeSeriesRecipeHandlers objectForKeyedSubscript:v33];

        if (v35)
        {
          v37 = PPSReaderLog(v36);
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v56 = v33;
            _os_log_error_impl(&dword_25E225000, v37, OS_LOG_TYPE_ERROR, "Attempting to register duplicate handler for %@, skipping", buf, 0xCu);
          }
        }

        else
        {
          v37 = [v28 objectForKeyedSubscript:v33];
          timeSeriesRecipeHandlers2 = [(PPSRecipeEngine *)self timeSeriesRecipeHandlers];
          [timeSeriesRecipeHandlers2 setObject:v37 forKeyedSubscript:v33];
        }
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v30);
  }
}

+ (id)recipeHandlers
{
  if (recipeHandlers_onceToken != -1)
  {
    +[PPSRecipeEngine recipeHandlers];
  }

  v3 = recipeHandlers_recipeHandlers;

  return v3;
}

void __33__PPSRecipeEngine_recipeHandlers__block_invoke()
{
  v0 = objc_opt_new();
  [v0 addObject:NSClassFromString(&cfstr_Ppsbasebandrec.isa)];
  [v0 addObject:NSClassFromString(&cfstr_Ppsmodelurlrec.isa)];
  v1 = recipeHandlers_recipeHandlers;
  recipeHandlers_recipeHandlers = v0;
}

@end