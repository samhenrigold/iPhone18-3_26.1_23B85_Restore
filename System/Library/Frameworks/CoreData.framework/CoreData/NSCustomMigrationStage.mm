@interface NSCustomMigrationStage
- (NSCustomMigrationStage)initWithCurrentModelReference:(NSManagedObjectModelReference *)currentModel nextModelReference:(NSManagedObjectModelReference *)nextModel;
- (void)dealloc;
@end

@implementation NSCustomMigrationStage

- (NSCustomMigrationStage)initWithCurrentModelReference:(NSManagedObjectModelReference *)currentModel nextModelReference:(NSManagedObjectModelReference *)nextModel
{
  v13[2] = *MEMORY[0x1E69E9840];
  if ([(NSString *)[(NSManagedObjectModelReference *)currentModel versionChecksum] isEqualToString:[(NSManagedObjectModelReference *)nextModel versionChecksum]])
  {

    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v12[0] = @"currentModel versionChecksum";
    v12[1] = @"nextModel versionChecksum";
    v13[0] = [(NSManagedObjectModelReference *)currentModel versionChecksum];
    v13[1] = [(NSManagedObjectModelReference *)nextModel versionChecksum];
    objc_exception_throw([v9 exceptionWithName:v10 reason:@"The current model reference and the next model reference cannot be equal." userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, v12, 2)}]);
  }

  v11.receiver = self;
  v11.super_class = NSCustomMigrationStage;
  v7 = [(NSMigrationStage *)&v11 init];
  if (v7)
  {
    v7->_currentModel = currentModel;
    v7->_nextModel = nextModel;
  }

  return v7;
}

- (void)dealloc
{
  self->_currentModel = 0;

  self->_nextModel = 0;
  self->_willMigrateHandler = 0;

  self->_didMigrateHandler = 0;
  v3.receiver = self;
  v3.super_class = NSCustomMigrationStage;
  [(NSMigrationStage *)&v3 dealloc];
}

@end