@interface BMSQLColumn
- (BMSQLColumn)initWithName:(id)name dataType:(int64_t)type requestOnly:(BOOL)only extractBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error;
- (id)description;
@end

@implementation BMSQLColumn

- (BMSQLColumn)initWithName:(id)name dataType:(int64_t)type requestOnly:(BOOL)only extractBlock:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v18.receiver = self;
  v18.super_class = BMSQLColumn;
  v13 = [(BMSQLColumn *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_name, name);
    v14->_dataType = type;
    v14->_requestOnly = only;
    v15 = _Block_copy(blockCopy);
    extractBlock = v14->_extractBlock;
    v14->_extractBlock = v15;
  }

  return v14;
}

- (BOOL)setSQLiteValueFromRow:(id)row sqliteContext:(sqlite3_context *)context error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  rowCopy = row;
  extractBlock = [(BMSQLColumn *)self extractBlock];
  v10 = (extractBlock)[2](extractBlock, rowCopy, error);

  if (*error)
  {
    goto LABEL_2;
  }

  if (!v10)
  {
    sqlite3_result_null(context);
    goto LABEL_17;
  }

  v13 = v10;
  selfCopy = self;
  if ([(BMSQLColumn *)selfCopy dataType]<= 6 && (v15 = objc_opt_class(), v15))
  {
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_11;
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31[0] = *MEMORY[0x1E696A578];
    v17 = MEMORY[0x1E696AEC0];
    name = [(BMSQLColumn *)selfCopy name];
    v19 = [v17 stringWithFormat:@"value for column (%@) is type %@ instead of expected type %@", name, objc_opt_class(), v15];
    v30[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v31 count:1];
    v21 = v16;
    v22 = 20;
  }

  else
  {
    v23 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31[0] = *MEMORY[0x1E696A578];
    v24 = MEMORY[0x1E696AEC0];
    dataType = [(BMSQLColumn *)selfCopy dataType];
    name = [(BMSQLColumn *)selfCopy name];
    v19 = [v24 stringWithFormat:@"unknown data type (%ld) for column '%@'", dataType, name];
    v30[0] = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v31 count:1];
    v21 = v23;
    v22 = 1;
  }

  *error = [v21 initWithDomain:@"BMSQLDatabaseErrorDomain" code:v22 userInfo:v20];

LABEL_11:
  if (*error)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_3;
  }

  dataType2 = [(BMSQLColumn *)selfCopy dataType];
  v11 = 1;
  if (dataType2 <= 2)
  {
    if (!dataType2)
    {
      sqlite3_result_int64(context, [v13 longLongValue]);
      goto LABEL_3;
    }

    if (dataType2 == 1)
    {
      [v13 doubleValue];
      goto LABEL_29;
    }

    if (dataType2 != 2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v28 = v13;
    sqlite3_result_text(context, [v28 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

    goto LABEL_3;
  }

  if (dataType2 <= 4)
  {
    if (dataType2 != 3)
    {
      v27 = v13;
      sqlite3_result_blob(context, [v27 bytes], objc_msgSend(v27, "length"), 0xFFFFFFFFFFFFFFFFLL);

LABEL_17:
      v11 = 1;
      goto LABEL_3;
    }

    [v13 timeIntervalSince1970];
LABEL_29:
    sqlite3_result_double(context, v29);
    goto LABEL_3;
  }

  if (dataType2 == 5)
  {
    goto LABEL_25;
  }

  if (dataType2 == 6)
  {
    v30[0] = 0;
    v30[1] = 0;
    [v13 getUUIDBytes:v30];
    sqlite3_result_blob(context, v30, 16, 0xFFFFFFFFFFFFFFFFLL);
  }

LABEL_3:

  return v11;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  name = self->_name;
  v6 = BMSQLDataTypeToString(self->_dataType);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requestOnly];
  v8 = [v3 initWithFormat:@"<%@ %p> name: %@, datatype: %@, request only: %@", v4, self, name, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    name = [(BMSQLColumn *)self name];
    name2 = [v5 name];
    if ([name isEqual:name2] && (dataType = self->_dataType, dataType == objc_msgSend(v5, "dataType")))
    {
      requestOnly = self->_requestOnly;
      v10 = requestOnly == [v5 requestOnly];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end