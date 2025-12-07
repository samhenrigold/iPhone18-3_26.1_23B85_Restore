@interface STCoreDowntimeOverride
- (BOOL)_validateAssociatedDowntime:(id)downtime;
- (BOOL)_validateState:(id)state;
- (BOOL)_validateType:(id)type;
- (BOOL)updateWithDictionaryRepresentation:(id)representation;
- (BOOL)validateForDelete:(id *)delete;
- (BOOL)validateForInsert:(id *)insert;
- (BOOL)validateForUpdate:(id *)update;
- (id)dictionaryRepresentation;
- (int64_t)state;
- (int64_t)type;
- (void)setState:(int64_t)state;
- (void)setType:(int64_t)type;
@end

@implementation STCoreDowntimeOverride

- (int64_t)type
{
  [(STCoreDowntimeOverride *)self willAccessValueForKey:@"type"];
  primitiveType = [(STCoreDowntimeOverride *)self primitiveType];
  integerValue = [primitiveType integerValue];

  [(STCoreDowntimeOverride *)self didAccessValueForKey:@"type"];
  return integerValue;
}

- (void)setType:(int64_t)type
{
  [(STCoreDowntimeOverride *)self willChangeValueForKey:@"type"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(STCoreDowntimeOverride *)self setPrimitiveType:v5];

  [(STCoreDowntimeOverride *)self didChangeValueForKey:@"type"];
}

- (int64_t)state
{
  [(STCoreDowntimeOverride *)self willAccessValueForKey:@"state"];
  primitiveState = [(STCoreDowntimeOverride *)self primitiveState];
  integerValue = [primitiveState integerValue];

  [(STCoreDowntimeOverride *)self didAccessValueForKey:@"state"];
  return integerValue;
}

- (void)setState:(int64_t)state
{
  [(STCoreDowntimeOverride *)self willChangeValueForKey:@"state"];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(STCoreDowntimeOverride *)self setPrimitiveState:v5];

  [(STCoreDowntimeOverride *)self didChangeValueForKey:@"state"];
}

- (BOOL)updateWithDictionaryRepresentation:(id)representation
{
  v15 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v5 = [representationCopy objectForKeyedSubscript:@"isTombstoned"];
  -[STCoreDowntimeOverride setIsTombstoned:](self, "setIsTombstoned:", [v5 BOOLValue]);

  if ([(STCoreDowntimeOverride *)self isTombstoned])
  {
    v6 = +[STLog blueprint];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1B831F000, v6, OS_LOG_TYPE_DEFAULT, "Deleting tombstoned downtime override: %@", &v13, 0xCu);
    }

    managedObjectContext = [(STCoreDowntimeOverride *)self managedObjectContext];
    [managedObjectContext deleteObject:self];
  }

  else
  {
    v8 = [representationCopy objectForKeyedSubscript:@"type"];
    -[STCoreDowntimeOverride setType:](self, "setType:", [v8 integerValue]);

    v9 = [representationCopy objectForKeyedSubscript:@"state"];
    -[STCoreDowntimeOverride setState:](self, "setState:", [v9 integerValue]);

    v10 = [representationCopy objectForKeyedSubscript:@"creationDate"];
    [(STCoreDowntimeOverride *)self setCreationDate:v10];

    v11 = [representationCopy objectForKeyedSubscript:@"calendarIdentifier"];
    [(STCoreDowntimeOverride *)self setCalendarIdentifier:v11];

    managedObjectContext = [representationCopy objectForKeyedSubscript:@"endDate"];
    [(STCoreDowntimeOverride *)self setEndDate:managedObjectContext];
  }

  return 1;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STCoreDowntimeOverride type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[STCoreDowntimeOverride state](self, "state")}];
  [v3 setObject:v5 forKeyedSubscript:@"state"];

  creationDate = [(STCoreDowntimeOverride *)self creationDate];
  [v3 setObject:creationDate forKeyedSubscript:@"creationDate"];

  calendarIdentifier = [(STCoreDowntimeOverride *)self calendarIdentifier];
  [v3 setObject:calendarIdentifier forKeyedSubscript:@"calendarIdentifier"];

  endDate = [(STCoreDowntimeOverride *)self endDate];
  [v3 setObject:endDate forKeyedSubscript:@"endDate"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[STCoreDowntimeOverride isTombstoned](self, "isTombstoned")}];
  [v3 setObject:v9 forKeyedSubscript:@"isTombstoned"];

  v10 = [v3 copy];

  return v10;
}

- (BOOL)validateForUpdate:(id *)update
{
  v10.receiver = self;
  v10.super_class = STCoreDowntimeOverride;
  if ([(STCoreDowntimeOverride *)&v10 validateForUpdate:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STCoreDowntimeOverride *)self _validateState:v5];
    [(STCoreDowntimeOverride *)self _validateType:v5];
    [(STCoreDowntimeOverride *)self _validateAssociatedDowntime:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STCoreDowntimeOverride validateForUpdate:];
      }
    }

    v9.receiver = self;
    v9.super_class = STCoreDowntimeOverride;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:update otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDowntimeOverride validateForUpdate:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForInsert:(id *)insert
{
  v10.receiver = self;
  v10.super_class = STCoreDowntimeOverride;
  if ([(STCoreDowntimeOverride *)&v10 validateForInsert:?])
  {
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    v5 = objc_opt_new();
    [(STCoreDowntimeOverride *)self _validateState:v5];
    [(STCoreDowntimeOverride *)self _validateType:v5];
    [(STCoreDowntimeOverride *)self _validateAssociatedDowntime:v5];
    if ([v5 count])
    {
      v6 = +[STLog coreDataValidation];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [STCoreDowntimeOverride validateForInsert:];
      }
    }

    v9.receiver = self;
    v9.super_class = STCoreDowntimeOverride;
    v7 = [(NSManagedObject *)&v9 parseValidationErrors:insert otherErrors:v5];
  }

  else
  {
    v5 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [STCoreDowntimeOverride validateForInsert:];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)validateForDelete:(id *)delete
{
  v6.receiver = self;
  v6.super_class = STCoreDowntimeOverride;
  v3 = [(STCoreDowntimeOverride *)&v6 validateForDelete:?];
  if (v3)
  {
    _os_feature_enabled_impl();
  }

  else
  {
    v4 = +[STLog coreDataValidation];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [STCoreDowntimeOverride validateForDelete:];
    }
  }

  return v3;
}

- (BOOL)_validateState:(id)state
{
  v11[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  state = [(STCoreDowntimeOverride *)self state];
  if (state >= 2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"CoreDowntimeOverride has an unexpected state.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:544 userInfo:v7];
    [stateCopy addObject:v8];
  }

  return state < 2;
}

- (BOOL)_validateType:(id)type
{
  v11[1] = *MEMORY[0x1E69E9840];
  typeCopy = type;
  type = [(STCoreDowntimeOverride *)self type];
  if (type >= 2)
  {
    v6 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"CoreDowntimeOverride has an unexpected type.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:544 userInfo:v7];
    [typeCopy addObject:v8];
  }

  return type < 2;
}

- (BOOL)_validateAssociatedDowntime:(id)downtime
{
  v11[1] = *MEMORY[0x1E69E9840];
  downtimeCopy = downtime;
  downtime = [(STCoreDowntimeOverride *)self downtime];

  if (!downtime)
  {
    v6 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v11[0] = @"CoreDowntimeOverride does not have an associated Downtime blueprint.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v8 = [v6 errorWithDomain:@"STErrorDomain" code:546 userInfo:v7];
    [downtimeCopy addObject:v8];
  }

  return downtime != 0;
}

- (void)validateForUpdate:.cold.1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for update on CoreDowntimeOverride failed with: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForUpdate:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Validate for update on CoreDowntimeOverride failed with error: %{public}@", v1, 0x16u);
}

- (void)validateForInsert:.cold.1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for Insert on CoreDowntimeOverride failed with: %{public}@", v2, v3, v4, v5, v6);
}

- (void)validateForInsert:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(&dword_1B831F000, v0, OS_LOG_TYPE_ERROR, "%{public}s Validate for Insert on CoreDowntimeOverride failed with error: %{public}@", v1, 0x16u);
}

- (void)validateForDelete:.cold.1()
{
  v6 = 136446466;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1_0(&dword_1B831F000, v0, v1, "%{public}s Built-in CoreData Validation for Delete on CoreDowntimeOverride failed with: %{public}@", v2, v3, v4, v5, v6);
}

@end