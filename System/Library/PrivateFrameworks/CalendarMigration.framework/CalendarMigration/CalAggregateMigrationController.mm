@interface CalAggregateMigrationController
- (BOOL)shouldPerformMigration;
- (CalAggregateMigrationController)initWithControllers:(id)controllers;
- (void)migrationDidFinishWithResult:(unint64_t)result;
@end

@implementation CalAggregateMigrationController

- (CalAggregateMigrationController)initWithControllers:(id)controllers
{
  controllersCopy = controllers;
  v9.receiver = self;
  v9.super_class = CalAggregateMigrationController;
  v5 = [(CalAggregateMigrationController *)&v9 init];
  if (v5)
  {
    v6 = [controllersCopy copy];
    controllers = v5->_controllers;
    v5->_controllers = v6;
  }

  return v5;
}

- (BOOL)shouldPerformMigration
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  controllers = [(CalAggregateMigrationController *)self controllers];
  v3 = [controllers countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(controllers);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldPerformMigration])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [controllers countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (void)migrationDidFinishWithResult:(unint64_t)result
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  controllers = [(CalAggregateMigrationController *)self controllers];
  v5 = [controllers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(controllers);
        }

        [*(*(&v9 + 1) + 8 * v8++) migrationDidFinishWithResult:result];
      }

      while (v6 != v8);
      v6 = [controllers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end