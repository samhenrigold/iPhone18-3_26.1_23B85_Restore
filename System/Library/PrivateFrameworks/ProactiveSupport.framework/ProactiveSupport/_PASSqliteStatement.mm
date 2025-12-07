@interface _PASSqliteStatement
- (BOOL)isNullForColumnAlias:(const char *)alias;
- (BOOL)isNullForColumnName:(const char *)name table:(const char *)table;
- (_PASSqliteStatement)initWithStatementPointer:(sqlite3_stmt *)pointer columnMapping:(id)mapping;
- (double)getDoubleForColumnAlias:(const char *)alias;
- (double)getDoubleForColumnName:(const char *)name table:(const char *)table;
- (id)description;
- (id)doubleAsNonnullNSNumberForColumn:(int)column;
- (id)doubleAsNonnullNSNumberForColumnAlias:(const char *)alias;
- (id)doubleAsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getDoubleAsNSNumberForColumn:(int)column;
- (id)getDoubleAsNSNumberForColumnAlias:(const char *)alias;
- (id)getDoubleAsNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getInt64AsNSNumberForColumn:(int)column;
- (id)getInt64AsNSNumberForColumnAlias:(const char *)alias;
- (id)getInt64AsNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getNSDataForColumnAlias:(const char *)alias;
- (id)getNSDataForColumnName:(const char *)name table:(const char *)table;
- (id)getNSNumberForColumn:(int)column;
- (id)getNSNumberForColumnAlias:(const char *)alias;
- (id)getNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)getNSStringForColumnAlias:(const char *)alias;
- (id)getNSStringForColumnName:(const char *)name table:(const char *)table;
- (id)int64AsNonnullNSNumberForColumn:(int)column;
- (id)int64AsNonnullNSNumberForColumnAlias:(const char *)alias;
- (id)int64AsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)nonnullNSDataForColumn:(int)column;
- (id)nonnullNSDataForColumnAlias:(const char *)alias;
- (id)nonnullNSDataForColumnName:(const char *)name table:(const char *)table;
- (id)nonnullNSNumberForColumn:(int)column;
- (id)nonnullNSNumberForColumnAlias:(const char *)alias;
- (id)nonnullNSNumberForColumnName:(const char *)name table:(const char *)table;
- (id)nonnullNSStringForColumn:(int)column;
- (id)nonnullNSStringForColumnAlias:(const char *)alias;
- (id)nonnullNSStringForColumnName:(const char *)name table:(const char *)table;
- (int)_bindParam:(int)param toObjcObject:(id)object sqliteMethodName:(const char *)name;
- (int)_checkBindStatus:(int)status forIndex:(int)index;
- (int)bindNamedParam:(const char *)param toBlock:(id)block;
- (int)bindNamedParam:(const char *)param toDouble:(double)double;
- (int)bindNamedParam:(const char *)param toDoubleAsNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toDoubleAsNonnullNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toInt64:(int64_t)int64;
- (int)bindNamedParam:(const char *)param toInt64AsNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toInt64AsNonnullNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toInteger:(int64_t)integer;
- (int)bindNamedParam:(const char *)param toNSArray:(id)array;
- (int)bindNamedParam:(const char *)param toNSData:(id)data;
- (int)bindNamedParam:(const char *)param toNSDictionary:(id)dictionary;
- (int)bindNamedParam:(const char *)param toNSIndexSet:(id)set;
- (int)bindNamedParam:(const char *)param toNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toNSOrderedSet:(id)set;
- (int)bindNamedParam:(const char *)param toNSSet:(id)set;
- (int)bindNamedParam:(const char *)param toNSString:(id)string;
- (int)bindNamedParam:(const char *)param toNonnullNSData:(id)data;
- (int)bindNamedParam:(const char *)param toNonnullNSNumber:(id)number;
- (int)bindNamedParam:(const char *)param toNonnullNSString:(id)string;
- (int)bindNamedParamToNull:(const char *)null;
- (int)bindParam:(int)param toBlock:(id)block;
- (int)bindParam:(int)param toDouble:(double)double;
- (int)bindParam:(int)param toDoubleAsNSNumber:(id)number;
- (int)bindParam:(int)param toDoubleAsNonnullNSNumber:(id)number;
- (int)bindParam:(int)param toInt64:(int64_t)int64;
- (int)bindParam:(int)param toInt64AsNSNumber:(id)number;
- (int)bindParam:(int)param toInt64AsNonnullNSNumber:(id)number;
- (int)bindParam:(int)param toInteger:(int64_t)integer;
- (int)bindParam:(int)param toNSData:(id)data;
- (int)bindParam:(int)param toNSNumber:(id)number;
- (int)bindParam:(int)param toNSString:(id)string;
- (int)bindParam:(int)param toNonnullNSData:(id)data;
- (int)bindParam:(int)param toNonnullNSNumber:(id)number;
- (int)bindParam:(int)param toNonnullNSString:(id)string;
- (int)bindParamToNull:(int)null;
- (int64_t)getInt64ForColumnAlias:(const char *)alias;
- (int64_t)getInt64ForColumnName:(const char *)name table:(const char *)table;
- (int64_t)getIntegerForColumnAlias:(const char *)alias;
- (int64_t)getIntegerForColumnName:(const char *)name table:(const char *)table;
- (void)accessBlobBytesForColumnAlias:(const char *)alias usingBlock:(id)block;
- (void)accessBlobBytesForColumnName:(const char *)name table:(const char *)table usingBlock:(id)block;
@end

@implementation _PASSqliteStatement

- (BOOL)isNullForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self isColumnNull:v4];
}

- (id)nonnullNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self nonnullNSNumberForColumn:v4];
}

- (id)getNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getNSNumberForColumn:v4];
}

- (id)doubleAsNonnullNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self doubleAsNonnullNSNumberForColumn:v4];
}

- (id)getDoubleAsNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getDoubleAsNSNumberForColumn:v4];
}

- (double)getDoubleForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  [(_PASSqliteStatement *)self getDoubleForColumn:v4];
  return result;
}

- (id)int64AsNonnullNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self int64AsNonnullNSNumberForColumn:v4];
}

- (id)getInt64AsNSNumberForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getInt64AsNSNumberForColumn:v4];
}

- (int64_t)getInt64ForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getInt64ForColumn:v4];
}

- (int64_t)getIntegerForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getIntegerForColumn:v4];
}

- (void)accessBlobBytesForColumnAlias:(const char *)alias usingBlock:(id)block
{
  columnMapping = self->_columnMapping;
  blockCopy = block;
  [(_PASSqliteStatement *)self accessBlobBytesForColumn:[(_PASSQLColumnMapping *)columnMapping indexForColumnAlias:alias] usingBlock:blockCopy];
}

- (id)nonnullNSDataForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self nonnullNSDataForColumn:v4];
}

- (id)getNSDataForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getNSDataForColumn:v4];
}

- (id)nonnullNSStringForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self nonnullNSStringForColumn:v4];
}

- (id)getNSStringForColumnAlias:(const char *)alias
{
  v4 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnAlias:alias];

  return [(_PASSqliteStatement *)self getNSStringForColumn:v4];
}

- (BOOL)isNullForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self isColumnNull:v5];
}

- (id)nonnullNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self nonnullNSNumberForColumn:v5];
}

- (id)getNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getNSNumberForColumn:v5];
}

- (id)doubleAsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self doubleAsNonnullNSNumberForColumn:v5];
}

- (id)getDoubleAsNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getDoubleAsNSNumberForColumn:v5];
}

- (double)getDoubleForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  [(_PASSqliteStatement *)self getDoubleForColumn:v5];
  return result;
}

- (id)int64AsNonnullNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self int64AsNonnullNSNumberForColumn:v5];
}

- (id)getInt64AsNSNumberForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getInt64AsNSNumberForColumn:v5];
}

- (int64_t)getInt64ForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getInt64ForColumn:v5];
}

- (int64_t)getIntegerForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getIntegerForColumn:v5];
}

- (void)accessBlobBytesForColumnName:(const char *)name table:(const char *)table usingBlock:(id)block
{
  columnMapping = self->_columnMapping;
  blockCopy = block;
  [(_PASSqliteStatement *)self accessBlobBytesForColumn:[(_PASSQLColumnMapping *)columnMapping indexForColumnName:name table:table] usingBlock:blockCopy];
}

- (id)nonnullNSDataForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self nonnullNSDataForColumn:v5];
}

- (id)getNSDataForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getNSDataForColumn:v5];
}

- (id)nonnullNSStringForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self nonnullNSStringForColumn:v5];
}

- (id)getNSStringForColumnName:(const char *)name table:(const char *)table
{
  v5 = [(_PASSQLColumnMapping *)self->_columnMapping indexForColumnName:name table:table];

  return [(_PASSqliteStatement *)self getNSStringForColumn:v5];
}

- (id)nonnullNSNumberForColumn:(int)column
{
  v5 = [(_PASSqliteStatement *)self getNSNumberForColumn:*&column];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:626 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  return v5;
}

- (id)getNSNumberForColumn:(int)column
{
  v5 = sqlite3_column_type(self->_stmt, column);
  if (v5 == 5)
  {
    v6 = 0;
  }

  else
  {
    if (v5 == 1)
    {
      [MEMORY[0x1E696AD98] numberWithLongLong:{sqlite3_column_int64(self->_stmt, column)}];
    }

    else
    {
      [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(self->_stmt, column)}];
    }
    v6 = ;
  }

  return v6;
}

- (id)doubleAsNonnullNSNumberForColumn:(int)column
{
  v5 = [(_PASSqliteStatement *)self getDoubleAsNSNumberForColumn:*&column];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:607 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  return v5;
}

- (id)getDoubleAsNSNumberForColumn:(int)column
{
  v3 = *&column;
  if ([(_PASSqliteStatement *)self isColumnNull:?])
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AD98];
    [(_PASSqliteStatement *)self getDoubleForColumn:v3];
    v5 = [v6 numberWithDouble:?];
  }

  return v5;
}

- (id)int64AsNonnullNSNumberForColumn:(int)column
{
  v5 = [(_PASSqliteStatement *)self getInt64AsNSNumberForColumn:*&column];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:586 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  return v5;
}

- (id)getInt64AsNSNumberForColumn:(int)column
{
  v3 = *&column;
  if ([(_PASSqliteStatement *)self isColumnNull:?])
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[_PASSqliteStatement getInt64ForColumn:](self, "getInt64ForColumn:", v3)}];
  }

  return v5;
}

- (id)nonnullNSDataForColumn:(int)column
{
  v5 = [(_PASSqliteStatement *)self getNSDataForColumn:*&column];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:555 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  return v5;
}

- (id)nonnullNSStringForColumn:(int)column
{
  v5 = [(_PASSqliteStatement *)self getNSStringForColumn:*&column];
  if (!v5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:543 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  return v5;
}

- (int)bindParam:(int)param toBlock:(id)block
{
  v4 = *&param;
  v6 = [block copy];
  LODWORD(v4) = [(_PASSqliteStatement *)self _bindParam:v4 toObjcObject:v6 sqliteMethodName:"_pas_block"];

  return v4;
}

- (int)_bindParam:(int)param toObjcObject:(id)object sqliteMethodName:(const char *)name
{
  v6 = *&param;
  v21 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    nameCopy = name;
    v15 = 2112;
    v16 = objc_opt_class();
    v17 = 2048;
    v18 = objectCopy;
    v19 = 1024;
    v20 = v6;
    v11 = v16;
    _os_log_debug_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "#passqlitestatement Retaining %s(%@ %p) for param %d", buf, 0x26u);

    if (objectCopy)
    {
      return [(_PASSqliteStatement *)self _checkBindStatus:sqlite3_bind_pointer(self->_stmt forIndex:v6, objectCopy, name, releaseObjcObject), v6];
    }

LABEL_5:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:496 description:{@"Invalid parameter not satisfying: %@", @"objcObject"}];

    return [(_PASSqliteStatement *)self _checkBindStatus:sqlite3_bind_pointer(self->_stmt forIndex:v6, objectCopy, name, releaseObjcObject), v6];
  }

  if (!objectCopy)
  {
    goto LABEL_5;
  }

  return [(_PASSqliteStatement *)self _checkBindStatus:sqlite3_bind_pointer(self->_stmt forIndex:v6, objectCopy, name, releaseObjcObject), v6];
}

- (int)bindParam:(int)param toNonnullNSNumber:(id)number
{
  v4 = *&param;
  numberCopy = number;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:480 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  if (CFNumberIsFloatType(numberCopy))
  {
    [numberCopy doubleValue];
    v8 = [(_PASSqliteStatement *)self bindParam:v4 toDouble:?];
  }

  else
  {
    v8 = -[_PASSqliteStatement bindParam:toInt64:](self, "bindParam:toInt64:", v4, [numberCopy longLongValue]);
  }

  v9 = v8;

  return v9;
}

- (int)bindParam:(int)param toNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindParam:*&param toNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindParamToNull:*&param];
  }
}

- (int)bindParam:(int)param toDoubleAsNonnullNSNumber:(id)number
{
  v4 = *&param;
  numberCopy = number;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  [numberCopy doubleValue];
  v8 = [(_PASSqliteStatement *)self bindParam:v4 toDouble:?];

  return v8;
}

- (int)bindParam:(int)param toDoubleAsNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindParam:*&param toDoubleAsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindParamToNull:*&param];
  }
}

- (int)bindParam:(int)param toDouble:(double)double
{
  v4 = *&param;
  v6 = sqlite3_bind_double(self->_stmt, param, double);

  return [(_PASSqliteStatement *)self _checkBindStatus:v6 forIndex:v4];
}

- (int)bindParam:(int)param toInt64AsNonnullNSNumber:(id)number
{
  v4 = *&param;
  numberCopy = number;
  if (!numberCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:445 description:{@"Invalid parameter not satisfying: %@", @"val != nil"}];
  }

  v8 = -[_PASSqliteStatement bindParam:toInt64:](self, "bindParam:toInt64:", v4, [numberCopy longLongValue]);

  return v8;
}

- (int)bindParam:(int)param toInt64AsNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindParam:*&param toInt64AsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindParamToNull:*&param];
  }
}

- (int)bindParam:(int)param toInt64:(int64_t)int64
{
  v4 = *&param;
  v6 = sqlite3_bind_int64(self->_stmt, param, int64);

  return [(_PASSqliteStatement *)self _checkBindStatus:v6 forIndex:v4];
}

- (int)bindParam:(int)param toInteger:(int64_t)integer
{
  v4 = *&param;
  v6 = sqlite3_bind_int64(self->_stmt, param, integer);

  return [(_PASSqliteStatement *)self _checkBindStatus:v6 forIndex:v4];
}

- (int)bindParam:(int)param toNonnullNSData:(id)data
{
  v4 = *&param;
  v6 = _PAS_sqlite3_bind_nsdata(self->_stmt, *&param, data);

  return [(_PASSqliteStatement *)self _checkBindStatus:v6 forIndex:v4];
}

- (int)bindParam:(int)param toNSData:(id)data
{
  if (data)
  {
    return [(_PASSqliteStatement *)self bindParam:*&param toNonnullNSData:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindParamToNull:*&param];
  }
}

- (int)bindParam:(int)param toNonnullNSString:(id)string
{
  v4 = *&param;
  v6 = _PAS_sqlite3_bind_nsstring(self->_stmt, *&param, string);

  return [(_PASSqliteStatement *)self _checkBindStatus:v6 forIndex:v4];
}

- (int)bindParam:(int)param toNSString:(id)string
{
  if (string)
  {
    return [(_PASSqliteStatement *)self bindParam:*&param toNonnullNSString:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindParamToNull:*&param];
  }
}

- (int)bindParamToNull:(int)null
{
  v3 = *&null;
  v5 = sqlite3_bind_null(self->_stmt, null);

  return [(_PASSqliteStatement *)self _checkBindStatus:v5 forIndex:v3];
}

- (int)_checkBindStatus:(int)status forIndex:(int)index
{
  v18 = *MEMORY[0x1E69E9840];
  if (status)
  {
    v5 = *&index;
    if (status == 7)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:376 description:{@"SQLITE_NOMEM when binding to index %i: %@", v5, self}];
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 67109890;
      statusCopy = status;
      v12 = 2080;
      v13 = sqlite3_errstr(status);
      v14 = 1024;
      v15 = v5;
      v16 = 2112;
      selfCopy = self;
      _os_log_fault_impl(&dword_1A7F47000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Error %i (%s) binding to index %i (this is typically caused by a bug, and may become a fatal error in the future!): %@", buf, 0x22u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  return status;
}

- (int)bindNamedParam:(const char *)param toBlock:(id)block
{
  stmt = self->_stmt;
  blockCopy = block;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toBlock:param), blockCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSDictionary:(id)dictionary
{
  stmt = self->_stmt;
  dictionaryCopy = dictionary;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSDictionary:param), dictionaryCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSOrderedSet:(id)set
{
  stmt = self->_stmt;
  setCopy = set;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSOrderedSet:param), setCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSSet:(id)set
{
  stmt = self->_stmt;
  setCopy = set;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSSet:param), setCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSArray:(id)array
{
  stmt = self->_stmt;
  arrayCopy = array;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSArray:param), arrayCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSIndexSet:(id)set
{
  stmt = self->_stmt;
  setCopy = set;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSIndexSet:param), setCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNonnullNSNumber:(id)number
{
  stmt = self->_stmt;
  numberCopy = number;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSNumber:param), numberCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:param toNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:param];
  }
}

- (int)bindNamedParam:(const char *)param toDoubleAsNonnullNSNumber:(id)number
{
  stmt = self->_stmt;
  numberCopy = number;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toDoubleAsNonnullNSNumber:param), numberCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toDoubleAsNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:param toDoubleAsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:param];
  }
}

- (int)bindNamedParam:(const char *)param toDouble:(double)double
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, param);

  return sqlite3_bind_double(stmt, v6, double);
}

- (int)bindNamedParam:(const char *)param toInt64AsNonnullNSNumber:(id)number
{
  stmt = self->_stmt;
  numberCopy = number;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toInt64AsNonnullNSNumber:param), numberCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toInt64AsNSNumber:(id)number
{
  if (number)
  {
    return [(_PASSqliteStatement *)self bindNamedParam:param toInt64AsNonnullNSNumber:?];
  }

  else
  {
    return [(_PASSqliteStatement *)self bindNamedParamToNull:param];
  }
}

- (int)bindNamedParam:(const char *)param toInt64:(int64_t)int64
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, param);

  return sqlite3_bind_int64(stmt, v6, int64);
}

- (int)bindNamedParam:(const char *)param toInteger:(int64_t)integer
{
  stmt = self->_stmt;
  v6 = _indexForBindParam(stmt, param);

  return sqlite3_bind_int64(stmt, v6, integer);
}

- (int)bindNamedParam:(const char *)param toNonnullNSData:(id)data
{
  stmt = self->_stmt;
  dataCopy = data;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSData:param), dataCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSData:(id)data
{
  stmt = self->_stmt;
  dataCopy = data;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSData:param), dataCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNonnullNSString:(id)string
{
  stmt = self->_stmt;
  stringCopy = string;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNonnullNSString:param), stringCopy];

  return param;
}

- (int)bindNamedParam:(const char *)param toNSString:(id)string
{
  stmt = self->_stmt;
  stringCopy = string;
  LODWORD(param) = [(_PASSqliteStatement *)self bindParam:_indexForBindParam(stmt toNSString:param), stringCopy];

  return param;
}

- (int)bindNamedParamToNull:(const char *)null
{
  stmt = self->_stmt;
  v4 = _indexForBindParam(stmt, null);

  return sqlite3_bind_null(stmt, v4);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:sqlite3_sql(self->_stmt) encoding:4];
  v5 = [v3 initWithFormat:@"<stmt: '%@'>", v4];

  return v5;
}

- (_PASSqliteStatement)initWithStatementPointer:(sqlite3_stmt *)pointer columnMapping:(id)mapping
{
  mappingCopy = mapping;
  if (!pointer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASSqliteStatement.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"stmt"}];
  }

  v14.receiver = self;
  v14.super_class = _PASSqliteStatement;
  v8 = [(_PASSqliteStatement *)&v14 init];
  v9 = v8;
  if (v8)
  {
    v8->_stmt = pointer;
    if (mappingCopy)
    {
      v10 = mappingCopy;
    }

    else
    {
      v10 = [[_PASSQLColumnMapping alloc] initWithStatementPtr:pointer];
    }

    columnMapping = v9->_columnMapping;
    v9->_columnMapping = v10;
  }

  return v9;
}

@end