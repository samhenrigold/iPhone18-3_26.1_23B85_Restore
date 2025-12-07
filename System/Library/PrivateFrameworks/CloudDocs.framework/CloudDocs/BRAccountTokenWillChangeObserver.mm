@interface BRAccountTokenWillChangeObserver
- (BRAccountTokenWillChangeObserver)initWithPersonaID:(id)d;
- (void)_accountWillChange;
@end

@implementation BRAccountTokenWillChangeObserver

- (BRAccountTokenWillChangeObserver)initWithPersonaID:(id)d
{
  dCopy = d;
  v5 = brc_bread_crumbs("[BRAccountTokenWillChangeObserver initWithPersonaID:]", 44);
  v6 = brc_default_log(1, 0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRAccountTokenWillChangeObserver initWithPersonaID:];
  }

  personaID = self->_personaID;
  self->_personaID = dCopy;
  v8 = dCopy;

  +[BRAccount startAccountTokenChangeObserverIfNeeded];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__accountWillChange name:@"BRAccountTokenWillChangeNotification" object:0];

  return self;
}

- (void)_accountWillChange
{
  v8 = *MEMORY[0x1E69E9840];
  personaID = [self personaID];
  OUTLINED_FUNCTION_1();
  v7 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] received token change notification, invalidating cache for persona: %@%@", v6, 0x16u);
}

@end