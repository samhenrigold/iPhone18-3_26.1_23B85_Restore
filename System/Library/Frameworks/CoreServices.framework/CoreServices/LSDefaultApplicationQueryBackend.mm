@interface LSDefaultApplicationQueryBackend
- (BOOL)_isApp:(id)app defaultForCategory:(unint64_t)category;
- (LSDefaultApplicationQueryBackend)initWithDatastore:(id)datastore defaultAppEvaluator:(id)evaluator;
- (id)refreshQueryResultForApplication:(id)application category:(unint64_t)category;
@end

@implementation LSDefaultApplicationQueryBackend

- (LSDefaultApplicationQueryBackend)initWithDatastore:(id)datastore defaultAppEvaluator:(id)evaluator
{
  datastoreCopy = datastore;
  evaluatorCopy = evaluator;
  v12.receiver = self;
  v12.super_class = LSDefaultApplicationQueryBackend;
  v9 = [(LSDefaultApplicationQueryBackend *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_datastore, datastore);
    objc_storeStrong(&v10->_defaultAppEvaluator, evaluator);
  }

  return v10;
}

- (BOOL)_isApp:(id)app defaultForCategory:(unint64_t)category
{
  appCopy = app;
  v7 = [(LSDefaultApplicationQueryDefaultAppEvaluator *)self->_defaultAppEvaluator URLOfDefaultAppForCategory:category];
  v8 = [appCopy URL];
  v9 = [v7 isEqual:v8];

  return v9;
}

- (id)refreshQueryResultForApplication:(id)application category:(unint64_t)category
{
  v41 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  v7 = [(LSDefaultApplicationQueryDatastore *)self->_datastore entryForApplication:applicationCopy category:category];
  v8 = _LSDefaultLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [applicationCopy bundleIdentifier];
    v10 = bundleIdentifier;
    v11 = "";
    *v36 = 136315650;
    if (!v7)
    {
      v11 = "no ";
    }

    *&v36[4] = v11;
    v37 = 2112;
    v38 = bundleIdentifier;
    v39 = 2048;
    categoryCopy = category;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "%sentry for app %@ in category %lu", v36, 0x20u);
  }

  if (v7)
  {
    v13 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      windowOpenDates = [v7 windowOpenDates];
      *v36 = 138412290;
      *&v36[4] = windowOpenDates;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "window open dates %@", v36, 0xCu);
    }
  }

  v15 = [MEMORY[0x1E695DF00] now];
  if (!v7)
  {
    goto LABEL_18;
  }

  newestWindowOpenDate = [v7 newestWindowOpenDate];
  [v15 timeIntervalSinceDate:newestWindowOpenDate];
  v18 = v17 < 3600.0;

  if (v18)
  {
    v19 = [(LSDefaultApplicationQueryBackend *)self _isApp:applicationCopy defaultForCategory:category];
    v20 = [v7 updatedEntryWithRefreshDate:v15 defaultForCategory:v19];
    [(LSDefaultApplicationQueryDatastore *)self->_datastore setEntry:v20 forApplication:applicationCopy category:category];
    v21 = [[LSDefaultApplicationQueryResult alloc] initWithReferenceDate:v15 didRefresh:1 refreshAfter:0 defaultForCategory:v19];
    v22 = _LSDefaultLog(v21);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *v36 = 138412546;
    *&v36[4] = v15;
    v37 = 2112;
    v38 = v21;
    v23 = "refreshed open window at %@, returning %@";
    goto LABEL_23;
  }

  oldestWindowOpenDate = [v7 oldestWindowOpenDate];
  [v15 timeIntervalSinceDate:oldestWindowOpenDate];
  if (v25 >= 31536000.0)
  {

    goto LABEL_18;
  }

  isOpenWindowGroupFull = [v7 isOpenWindowGroupFull];

  if ((isOpenWindowGroupFull & 1) == 0)
  {
LABEL_18:
    v33 = [(LSDefaultApplicationQueryBackend *)self _isApp:applicationCopy defaultForCategory:category];
    if (v7)
    {
      v34 = [v7 updatedEntryRotatingInWindowOpenDate:v15 refreshDate:v15 defaultForCategory:v33];
    }

    else
    {
      v34 = [[LSDefaultApplicationQueryEntry alloc] initWithWindowOpenDate:v15 refreshDate:v15 defaultForCategory:v33];
    }

    v20 = v34;
    [(LSDefaultApplicationQueryDatastore *)self->_datastore setEntry:v34 forApplication:applicationCopy category:category];
    v21 = [[LSDefaultApplicationQueryResult alloc] initWithReferenceDate:v15 didRefresh:1 refreshAfter:0 defaultForCategory:v33];
    v22 = _LSDefaultLog(v21);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    *v36 = 138412546;
    *&v36[4] = v15;
    v37 = 2112;
    v38 = v21;
    v23 = "opened new window at %@, returning %@";
LABEL_23:
    v31 = v22;
    v32 = 22;
    goto LABEL_24;
  }

  oldestWindowOpenDate2 = [v7 oldestWindowOpenDate];
  v20 = [oldestWindowOpenDate2 dateByAddingTimeInterval:31536000.0];

  v28 = [LSDefaultApplicationQueryResult alloc];
  refreshDate = [v7 refreshDate];
  v21 = -[LSDefaultApplicationQueryResult initWithReferenceDate:didRefresh:refreshAfter:defaultForCategory:](v28, "initWithReferenceDate:didRefresh:refreshAfter:defaultForCategory:", refreshDate, 0, v20, [v7 isDefaultForCategory]);

  v22 = _LSDefaultLog(v30);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  *v36 = 138412290;
  *&v36[4] = v21;
  v23 = "stale windows, returning %@";
  v31 = v22;
  v32 = 12;
LABEL_24:
  _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEFAULT, v23, v36, v32);
LABEL_25:

  return v21;
}

@end