@interface MNTracePreparedStatement
+ (id)preparedStatementForTrace:(id)trace statement:(id)statement outError:(id *)error;
- (BOOL)_prepareStatementForTrace:(id)trace statement:(id)statement outError:(id *)error;
- (BOOL)clearBindings;
- (BOOL)execute;
- (BOOL)reset;
- (BOOL)step;
- (BOOL)stepRow;
- (MNTracePreparedStatement)init;
- (id)columnData:(unint64_t)data;
- (id)columnObjects:(unint64_t)objects ofClasses:(id)classes;
- (id)columnObjectsOld:(unint64_t)old ofClasses:(id)classes;
- (id)columnString:(unint64_t)string;
- (id)debugDescription;
- (id)initForTrace:(id)trace statement:(id)statement outError:(id *)error;
- (unint64_t)_bindParameterIndexWithName:(id)name;
- (void)bind:(unint64_t)bind data:(id)data;
- (void)bind:(unint64_t)bind double:(double)double;
- (void)bind:(unint64_t)bind int:(int)int;
- (void)bind:(unint64_t)bind string:(id)string;
- (void)bindNull:(unint64_t)null;
- (void)bindNullParameter:(id)parameter;
- (void)bindParameter:(id)parameter data:(id)data;
- (void)bindParameter:(id)parameter double:(double)double;
- (void)bindParameter:(id)parameter int:(int)int;
- (void)bindParameter:(id)parameter string:(id)string;
- (void)dealloc;
- (void)finalize;
@end

@implementation MNTracePreparedStatement

- (BOOL)execute
{
  if ([(MNTracePreparedStatement *)self step])
  {
    reset = [(MNTracePreparedStatement *)self reset];
  }

  else
  {
    reset = 0;
  }

  return reset & [(MNTracePreparedStatement *)self clearBindings];
}

- (BOOL)step
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(self->_preparedStatement);
  v4 = v3 & 0xFFFFFFFE;
  if ((v3 & 0xFFFFFFFE) != 0x64)
  {
    v6 = v3;
    v7 = MEMORY[0x1E696AEC0];
    v8 = sqlite3_errstr(v3);
    v9 = [v7 stringWithFormat:@"Error (%d:%s) calling sqlite3_step(): %s", v6, v8, sqlite3_errmsg(self->_db)];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "result == SQLITE_DONE || result == SQLITE_ROW";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  return v4 == 100;
}

- (BOOL)reset
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_reset(self->_preparedStatement);
  v4 = v3;
  if (v3)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = sqlite3_errstr(v3);
    v8 = [v6 stringWithFormat:@"Error (%d:%s) calling sqlite3_reset(): %s", v4, v7, sqlite3_errmsg(self->_db)];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "result == SQLITE_OK";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  return v4 == 0;
}

- (BOOL)clearBindings
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_clear_bindings(self->_preparedStatement);
  v4 = v3;
  if (v3)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = sqlite3_errstr(v3);
    v8 = [v6 stringWithFormat:@"Error (%d:%s) calling sqlite3_clear_bindings(): %s", v4, v7, sqlite3_errmsg(self->_db)];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "result == SQLITE_OK";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  return v4 == 0;
}

- (id)debugDescription
{
  v2 = sqlite3_expanded_sql(self->_preparedStatement);
  v3 = MEMORY[0x1E696AEC0];

  return [v3 stringWithUTF8String:v2];
}

- (unint64_t)_bindParameterIndexWithName:(id)name
{
  v14 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = sqlite3_bind_parameter_index(self->_preparedStatement, [nameCopy UTF8String]);
  if (v5 <= 0)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error calling -[MNTracePreparedStatement bindParameter:] because no parameter with the name %@ was found.", nameCopy];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "NO";
      v12 = 2112;
      v13 = nameCopy;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }

    v6 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (BOOL)_prepareStatementForTrace:(id)trace statement:(id)statement outError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  traceCopy = trace;
  statementCopy = statement;
  if (error)
  {
    *error = 0;
  }

  v10 = sqlite3_prepare_v2([traceCopy db], objc_msgSend(statementCopy, "UTF8String"), -1, &self->_preparedStatement, 0);
  if (v10)
  {
    v11 = sqlite3_errmsg([traceCopy db]);
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Error (%s) preparing statement %@: %s", sqlite3_errstr(v10), statementCopy, v11];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
    }

    if (error)
    {
      v17 = *MEMORY[0x1E696A278];
      v18 = v12;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MNTraceErrorDomain" code:9 userInfo:v14];
      *error = v15;
    }
  }

  return v10 == 0;
}

- (id)columnObjectsOld:(unint64_t)old ofClasses:(id)classes
{
  v6 = MEMORY[0x1E696ACD0];
  classesCopy = classes;
  v8 = [(MNTracePreparedStatement *)self columnData:old];
  v9 = [v6 unarchivedArrayOfObjectsOfClasses:classesCopy fromData:v8 error:0];

  return v9;
}

- (id)columnObjects:(unint64_t)objects ofClasses:(id)classes
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696ACD0];
  v7 = MEMORY[0x1E695DFD8];
  classesCopy = classes;
  v9 = [v7 setWithObject:objc_opt_class()];
  v10 = [(MNTracePreparedStatement *)self columnData:objects];
  v15 = 0;
  v11 = [v6 unarchivedDictionaryWithKeysOfClasses:v9 objectsOfClasses:classesCopy fromData:v10 error:&v15];

  v12 = v15;
  if (v12)
  {
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "columnObjects error decoding: %@", buf, 0xCu);
    }
  }

  return v11;
}

- (id)columnData:(unint64_t)data
{
  dataCopy = data;
  v5 = sqlite3_column_bytes(self->_preparedStatement, data);
  if (v5 < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:sqlite3_column_blob(self->_preparedStatement length:{dataCopy), v5}];
  }

  return v6;
}

- (id)columnString:(unint64_t)string
{
  v3 = sqlite3_column_text(self->_preparedStatement, string);
  if (v3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v3];
  }

  else
  {
    v4 = &stru_1F4EB6B70;
  }

  return v4;
}

- (BOOL)stepRow
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = sqlite3_step(self->_preparedStatement);
  v4 = v3;
  if ((v3 & 0xFFFFFFFE) != 0x64)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = sqlite3_errstr(v3);
    v8 = [v6 stringWithFormat:@"Error (%d:%s) calling sqlite3_step(): %s", v4, v7, sqlite3_errmsg(self->_db)];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "result == SQLITE_DONE || result == SQLITE_ROW";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }

  return v4 == 100;
}

- (void)bindNullParameter:(id)parameter
{
  v4 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:parameter];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(MNTracePreparedStatement *)self bindNull:v4];
  }
}

- (void)bindParameter:(id)parameter data:(id)data
{
  dataCopy = data;
  v6 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:parameter];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MNTracePreparedStatement *)self bind:v6 data:dataCopy];
  }
}

- (void)bindParameter:(id)parameter string:(id)string
{
  stringCopy = string;
  v6 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:parameter];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(MNTracePreparedStatement *)self bind:v6 string:stringCopy];
  }
}

- (void)bindParameter:(id)parameter double:(double)double
{
  v6 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:parameter];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(MNTracePreparedStatement *)self bind:v6 double:double];
  }
}

- (void)bindParameter:(id)parameter int:(int)int
{
  v4 = *&int;
  v6 = [(MNTracePreparedStatement *)self _bindParameterIndexWithName:parameter];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(MNTracePreparedStatement *)self bind:v6 int:v4];
  }
}

- (void)bindNull:(unint64_t)null
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_bind_null(self->_preparedStatement, null);
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = sqlite3_errstr(v4);
    v7 = [v5 stringWithFormat:@"Error (%s) calling sqlite3_bind_null(): %s", v6, sqlite3_errmsg(self->_db)];
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "result == SQLITE_OK";
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }
}

- (void)bind:(unint64_t)bind data:(id)data
{
  bindCopy = bind;
  v21 = *MEMORY[0x1E69E9840];
  preparedStatement = self->_preparedStatement;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  v12 = sqlite3_bind_blob(preparedStatement, bindCopy, bytes, v11, 0xFFFFFFFFFFFFFFFFLL);
  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = sqlite3_errstr(v12);
    v15 = [v13 stringWithFormat:@"Error (%s) calling sqlite3_bind_blob(): %s", v14, sqlite3_errmsg(self->_db)];
    v16 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "result == SQLITE_OK";
      v19 = 2112;
      v20 = v15;
      _os_log_impl(&dword_1D311E000, v16, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }
}

- (void)bind:(unint64_t)bind string:(id)string
{
  bindCopy = bind;
  v18 = *MEMORY[0x1E69E9840];
  preparedStatement = self->_preparedStatement;
  stringCopy = string;
  v9 = sqlite3_bind_text(preparedStatement, bindCopy, [string UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = sqlite3_errstr(v9);
    v12 = [v10 stringWithFormat:@"Error (%s) calling sqlite3_bind_text(): %s", v11, sqlite3_errmsg(self->_db)];
    v13 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "result == SQLITE_OK";
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }
}

- (void)bind:(unint64_t)bind double:(double)double
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = sqlite3_bind_double(self->_preparedStatement, bind, double);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = sqlite3_errstr(v5);
    v8 = [v6 stringWithFormat:@"Error (%s) calling sqlite3_bind_double(): %s", v7, sqlite3_errmsg(self->_db)];
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "result == SQLITE_OK";
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }
}

- (void)bind:(unint64_t)bind int:(int)int
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = sqlite3_bind_int(self->_preparedStatement, bind, int);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x1E696AEC0];
    v8 = sqlite3_errstr(v5);
    v9 = [v7 stringWithFormat:@"Error (%d:%s) calling sqlite3_bind_int(): %s", v6, v8, sqlite3_errmsg(self->_db)];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "result == SQLITE_OK";
      v13 = 2112;
      v14 = v9;
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "Assertion failed: (%s) '%@'", buf, 0x16u);
    }
  }
}

- (void)finalize
{
  sqlite3_finalize(self->_preparedStatement);
  self->_db = 0;
  self->_preparedStatement = 0;
}

- (void)dealloc
{
  [(MNTracePreparedStatement *)self finalize];
  v3.receiver = self;
  v3.super_class = MNTracePreparedStatement;
  [(MNTracePreparedStatement *)&v3 dealloc];
}

- (id)initForTrace:(id)trace statement:(id)statement outError:(id *)error
{
  traceCopy = trace;
  statementCopy = statement;
  v14.receiver = self;
  v14.super_class = MNTracePreparedStatement;
  v10 = [(MNTracePreparedStatement *)&v14 init];
  v11 = v10;
  if (v10)
  {
    if (![(MNTracePreparedStatement *)v10 _prepareStatementForTrace:traceCopy statement:statementCopy outError:error])
    {
      v12 = 0;
      goto LABEL_6;
    }

    v11->_db = [traceCopy db];
  }

  v12 = v11;
LABEL_6:

  return v12;
}

- (MNTracePreparedStatement)init
{
  result = [MEMORY[0x1E695DF30] raise:@"GEOMethodNotAvailableException" format:@"This method is unavailable."];
  __break(1u);
  return result;
}

+ (id)preparedStatementForTrace:(id)trace statement:(id)statement outError:(id *)error
{
  statementCopy = statement;
  traceCopy = trace;
  v9 = [[MNTracePreparedStatement alloc] initForTrace:traceCopy statement:statementCopy outError:error];

  return v9;
}

@end