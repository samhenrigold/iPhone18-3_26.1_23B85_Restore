@interface BMIndexSearch
- (BMIndexSearch)initWithIndex:(id)index startFields:(id)fields endFields:(id)endFields database:(id)database;
- (id)_buildSearchQueryWithStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events reversed:(BOOL)reversed;
- (id)description;
- (id)performSearchWithError:(id *)error;
- (id)performSearchWithStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events reversed:(BOOL)reversed error:(id *)error;
@end

@implementation BMIndexSearch

- (BMIndexSearch)initWithIndex:(id)index startFields:(id)fields endFields:(id)endFields database:(id)database
{
  indexCopy = index;
  fieldsCopy = fields;
  endFieldsCopy = endFields;
  databaseCopy = database;
  v15 = [fieldsCopy count];
  if (v15 != [endFieldsCopy count])
  {
    [BMIndexSearch initWithIndex:a2 startFields:self endFields:? database:?];
  }

  v20.receiver = self;
  v20.super_class = BMIndexSearch;
  v16 = [(BMIndexSearch *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_index, index);
    objc_storeStrong(&v17->_startFields, fields);
    objc_storeStrong(&v17->_endFields, endFields);
    objc_storeStrong(&v17->_database, database);
  }

  return v17;
}

- (id)_buildSearchQueryWithStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events reversed:(BOOL)reversed
{
  reversedCopy = reversed;
  v85 = *MEMORY[0x1E69E9840];
  v10 = objc_opt_new();
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  selfCopy = self;
  schema = [(BMIndex *)self->_index schema];
  columns = [schema columns];

  v13 = [columns countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v80;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v80 != v15)
        {
          objc_enumerationMutation(columns);
        }

        v17 = *(*(&v79 + 1) + 8 * i);
        v18 = objc_alloc(MEMORY[0x1E696AEC0]);
        name = [v17 name];
        v20 = [v18 initWithFormat:@"%@", name];
        [v10 addObject:v20];
      }

      v14 = [columns countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v14);
  }

  v74 = objc_opt_new();
  if ([(NSArray *)selfCopy->_startFields count])
  {
    v21 = 0;
    do
    {
      v22 = [(NSArray *)selfCopy->_startFields objectAtIndexedSubscript:v21];
      null = [MEMORY[0x1E695DFB0] null];

      if (v22 != null)
      {
        v24 = MEMORY[0x1E696AEC0];
        schema2 = [(BMIndex *)selfCopy->_index schema];
        columns2 = [schema2 columns];
        v27 = [columns2 objectAtIndexedSubscript:v21];
        name2 = [v27 name];
        v29 = [v24 stringWithFormat:@"%@ >= ?", name2];
        [v74 addObject:v29];
      }

      v30 = [(NSArray *)selfCopy->_endFields objectAtIndexedSubscript:v21];
      null2 = [MEMORY[0x1E695DFB0] null];

      if (v30 != null2)
      {
        v32 = MEMORY[0x1E696AEC0];
        schema3 = [(BMIndex *)selfCopy->_index schema];
        columns3 = [schema3 columns];
        v35 = [columns3 objectAtIndexedSubscript:v21];
        name3 = [v35 name];
        v37 = [v32 stringWithFormat:@"%@ <= ?", name3];
        [v74 addObject:v37];
      }

      ++v21;
    }

    while ([(NSArray *)selfCopy->_startFields count]> v21);
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v40 = v39;

  if (v40 != time)
  {
    v41 = MEMORY[0x1E696AEC0];
    v42 = BMEventTimestampSQLColumn();
    name4 = [v42 name];
    v44 = [v41 stringWithFormat:@"%@ >= ?", name4];
    [v74 addObject:v44];
  }

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v47 = v46;

  if (v47 != endTime)
  {
    v48 = MEMORY[0x1E696AEC0];
    v49 = BMEventTimestampSQLColumn();
    name5 = [v49 name];
    v51 = [v48 stringWithFormat:@"%@ <= ?", name5];
    [v74 addObject:v51];
  }

  if ([v74 count])
  {
    v52 = MEMORY[0x1E696AEC0];
    v53 = [v74 componentsJoinedByString:@" AND "];
    v71 = [v52 stringWithFormat:@"WHERE %@", v53];
  }

  else
  {
    v71 = &stru_1EF2B2408;
  }

  v54 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  fields = [(BMIndex *)selfCopy->_index fields];
  v56 = [fields countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v56)
  {
    v57 = v56;
    v58 = *v76;
    do
    {
      for (j = 0; j != v57; ++j)
      {
        if (*v76 != v58)
        {
          objc_enumerationMutation(fields);
        }

        name6 = [*(*(&v75 + 1) + 8 * j) name];
        v61 = name6;
        if (reversedCopy)
        {
          v62 = [name6 stringByAppendingString:@" DESC"];

          v61 = v62;
        }

        [v54 addObject:v61];
      }

      v57 = [fields countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v57);
  }

  v63 = MEMORY[0x1E696AEC0];
  v64 = [v10 componentsJoinedByString:{@", "}];
  schema4 = [(BMIndex *)selfCopy->_index schema];
  tableName = [schema4 tableName];
  v67 = [v54 componentsJoinedByString:{@", "}];
  v68 = [v63 stringWithFormat:@"SELECT %@ FROM %@ %@ ORDER BY %@", v64, tableName, v71, v67];

  if (events != -1)
  {
    v69 = [v68 stringByAppendingString:@" LIMIT ?"];

    v68 = v69;
  }

  return v68;
}

- (id)performSearchWithError:(id *)error
{
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v7 = v6;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v10 = [(BMIndexSearch *)self performSearchWithStartTime:-1 endTime:0 maxEvents:error reversed:v7 error:v9];

  return v10;
}

- (id)performSearchWithStartTime:(double)time endTime:(double)endTime maxEvents:(unint64_t)events reversed:(BOOL)reversed error:(id *)error
{
  v67[2] = *MEMORY[0x1E69E9840];
  v12 = [BMIndexSearch _buildSearchQueryWithStartTime:"_buildSearchQueryWithStartTime:endTime:maxEvents:reversed:" endTime:events maxEvents:reversed reversed:?];
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [BMIndexSearch performSearchWithStartTime:v12 endTime:v13 maxEvents:? reversed:? error:?];
  }

  ppStmt = 0;
  v14 = sqlite3_prepare_v2(-[BMSQLDatabase db](self->_database, "db"), [v12 UTF8String], -1, &ppStmt, 0);
  if (v14)
  {
    if (error)
    {
      v15 = v14;
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to prepare statement for index search query: %@", v12];
      BMSQLDatabaseError(v15, -[BMSQLDatabase db](self->_database, "db"), [v16 UTF8String]);
      *error = v17 = 0;
      goto LABEL_41;
    }

    v17 = 0;
    goto LABEL_43;
  }

  v16 = objc_opt_new();
  if ([(NSArray *)self->_startFields count])
  {
    v18 = 0;
    do
    {
      v19 = [(NSArray *)self->_startFields objectAtIndexedSubscript:v18];
      null = [MEMORY[0x1E695DFB0] null];

      if (v19 != null)
      {
        v21 = [(NSArray *)self->_startFields objectAtIndexedSubscript:v18];
        [v16 addObject:v21];
      }

      v22 = [(NSArray *)self->_endFields objectAtIndexedSubscript:v18];
      null2 = [MEMORY[0x1E695DFB0] null];

      if (v22 != null2)
      {
        v24 = [(NSArray *)self->_endFields objectAtIndexedSubscript:v18];
        [v16 addObject:v24];
      }

      ++v18;
    }

    while ([(NSArray *)self->_startFields count]> v18);
  }

  v25 = 0x1E695D000uLL;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v28 = v27;

  if (v28 != time)
  {
    v29 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:time];
    [v16 addObject:v29];
  }

  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v32 = v31;

  if (v32 != endTime)
  {
    v33 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:endTime];
    [v16 addObject:v33];
  }

  if (events != -1)
  {
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:events];
    [v16 addObject:v34];
  }

  if (![v16 count])
  {
LABEL_40:
    v54 = [BMIndexRowEnumerator alloc];
    v55 = [(BMSQLDatabase *)self->_database db];
    v17 = [(BMIndexRowEnumerator *)v54 initWithDatabase:v55 statement:ppStmt index:self->_index];
    goto LABEL_41;
  }

  v35 = 0;
  v36 = 0x1E696A000uLL;
  while (1)
  {
    v37 = [v16 objectAtIndexedSubscript:v35];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = ppStmt;
      [v37 doubleValue];
LABEL_25:
      v40 = sqlite3_bind_double(v38, v35 + 1, v39);
      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = ppStmt;
      [v37 timeIntervalSince1970];
      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = sqlite3_bind_text(ppStmt, v35 + 1, [v37 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
LABEL_26:
      v41 = v40;
      if (v40)
      {
        goto LABEL_36;
      }

      goto LABEL_27;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v63 = ppStmt;
      v42 = v37;
      v43 = v37;
      bytes = [v43 bytes];
      v45 = v25;
      v46 = v12;
      errorCopy = error;
      v48 = [v43 length];

      v49 = v35 + 1;
      v50 = v63;
      v51 = bytes;
      v36 = 0x1E696A000;
      v52 = v48;
      error = errorCopy;
      v12 = v46;
      v25 = v45;
      goto LABEL_35;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    v67[0] = 0;
    v67[1] = 0;
    [v37 getUUIDBytes:v67];
    v50 = ppStmt;
    v49 = v35 + 1;
    v51 = v67;
    v52 = 16;
LABEL_35:
    v41 = sqlite3_bind_blob(v50, v49, v51, v52, 0xFFFFFFFFFFFFFFFFLL);
    if (v41)
    {
LABEL_36:
      if (!error)
      {
        goto LABEL_39;
      }

      v53 = [*(v36 + 3776) stringWithFormat:@"Failed to bind value %@ at index: %d", v37, v35 + 1];
      *error = BMSQLDatabaseError(v41, -[BMSQLDatabase db](self->_database, "db"), [v53 UTF8String]);
      goto LABEL_38;
    }

LABEL_27:

    if ([v16 count] <= ++v35)
    {
      goto LABEL_40;
    }
  }

  if (error)
  {
    v57 = *(v36 + 3776);
    v58 = objc_opt_class();
    v59 = NSStringFromClass(v58);
    v53 = [v57 stringWithFormat:@"Failed to bind value %@ at index: %d %@ is not a valid sqlite type", v37, v35 + 1, v59];;

    v60 = objc_alloc(MEMORY[0x1E696ABC0]);
    v65 = *MEMORY[0x1E696A578];
    v61 = [v53 copy];
    v66 = v61;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    *error = [v60 initWithDomain:@"BMSQLDatabaseErrorDomain" code:-1 userInfo:v62];

LABEL_38:
  }

LABEL_39:

  v17 = 0;
LABEL_41:

LABEL_43:

  return v17;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> index: %@, startFields: %@, endFields: %@", objc_opt_class(), self, self->_index, self->_startFields, self->_endFields];

  return v2;
}

@end