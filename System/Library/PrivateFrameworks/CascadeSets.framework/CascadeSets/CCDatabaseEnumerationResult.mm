@interface CCDatabaseEnumerationResult
- (CCDatabaseEnumerationResult)init;
- (CCDatabaseEnumerationResult)initWithStatement:(id)statement database:(id)database command:(id)command error:(id)error;
- (id)nextRow;
- (void)dealloc;
@end

@implementation CCDatabaseEnumerationResult

- (CCDatabaseEnumerationResult)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseEnumerationResult)initWithStatement:(id)statement database:(id)database command:(id)command error:(id)error
{
  statementCopy = statement;
  databaseCopy = database;
  commandCopy = command;
  errorCopy = error;
  v18.receiver = self;
  v18.super_class = CCDatabaseEnumerationResult;
  v15 = [(CCDatabaseEnumerationResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_database, database);
    objc_storeStrong(&v16->_command, command);
    objc_storeStrong(&v16->_statement, statement);
    objc_storeStrong(&v16->_error, error);
  }

  return v16;
}

- (void)dealloc
{
  statement = self->_statement;
  if (statement)
  {
    sqlite3_reset([(CCSQLitePreparedStatement *)statement stmt]);
  }

  v4.receiver = self;
  v4.super_class = CCDatabaseEnumerationResult;
  [(CCDatabaseEnumerationResult *)&v4 dealloc];
}

- (id)nextRow
{
  v18[3] = *MEMORY[0x1E69E9840];
  if (self->_error)
  {
    goto LABEL_2;
  }

  statement = self->_statement;
  if (statement)
  {
    stmt = [(CCSQLitePreparedStatement *)statement stmt];
    v6 = sqlite3_step(stmt);
    if (v6 == 101)
    {
      sqlite3_reset(stmt);
      v8 = self->_statement;
      self->_statement = 0;
    }

    else
    {
      v7 = v6;
      if (v6 == 100)
      {
        statement = self->_statement;
        goto LABEL_3;
      }

      lastExtendedErrorCode = [(CCSQLiteDatabase *)self->_database lastExtendedErrorCode];
      v10 = _errorDescriptionForCommand(self->_command);
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18[0] = self->_command;
      v12 = *MEMORY[0x1E696AA08];
      v17[0] = @"command";
      v17[1] = v12;
      v13 = _createSQLiteAPIErrorFromResultCode(v7, lastExtendedErrorCode);
      v17[2] = *MEMORY[0x1E696A578];
      v18[1] = v13;
      v18[2] = v10;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
      v15 = [v11 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v14];
      error = self->_error;
      self->_error = v15;
    }

LABEL_2:
    statement = 0;
  }

LABEL_3:

  return statement;
}

@end