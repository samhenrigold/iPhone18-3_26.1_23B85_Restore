@interface NSSQLStoreRequestContext
- (BOOL)executeRequestCore:(id *)core;
- (BOOL)executeRequestUsingConnection:(id)connection;
- (NSSQLObjectFaultRequestContext)createNestedObjectFaultContextForObjectWithID:(NSSQLObjectFaultRequestContext *)result;
- (NSSQLStoreRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core;
- (uint64_t)debugLogLevel;
- (void)dealloc;
- (void)setConnection:(uint64_t)connection;
- (void)setQueryGenerationToken:(id *)token;
@end

@implementation NSSQLStoreRequestContext

- (uint64_t)debugLogLevel
{
  if (result)
  {
    return +[NSSQLCore debugDefault];
  }

  return result;
}

- (void)dealloc
{
  if (self->_connection)
  {
    NSLog(@"API misuse: there shouldn't be a connection here", a2);
    __break(1u);
  }

  else
  {
    self->_sqlCore = 0;

    self->_queryGeneration = 0;
    self->_persistentStoreRequest = 0;

    self->_context = 0;
    self->_error = 0;

    self->_exception = 0;
    self->_result = 0;

    self->_connection = 0;
    v3.receiver = self;
    v3.super_class = NSSQLStoreRequestContext;
    [(NSSQLStoreRequestContext *)&v3 dealloc];
  }
}

- (NSSQLStoreRequestContext)initWithRequest:(id)request context:(id)context sqlCore:(id)core
{
  v12.receiver = self;
  v12.super_class = NSSQLStoreRequestContext;
  v8 = [(NSSQLStoreRequestContext *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_sqlCore = core;
    v8->_persistentStoreRequest = request;
    v9->_context = context;
    v9->_useColoredLogging = +[NSSQLCore coloredLoggingDefault];
    v9->_useConcurrentFetching = +[NSSQLCore useConcurrentFetching];
    if (core)
    {
      v9->_hasHistoryTracking = (*(core + 50) & 0x400) != 0;
      v10 = (*(core + 201) >> 6) & 1;
    }

    else
    {
      LOBYTE(v10) = 0;
      v9->_hasHistoryTracking = 0;
    }

    v9->_storeIsInMemory = v10;
    [(NSSQLStoreRequestContext *)&v9->super.isa setQueryGenerationToken:?];
  }

  return v9;
}

- (void)setQueryGenerationToken:(id *)token
{
  if (token && ([token isWritingRequest] & 1) == 0 && objc_msgSend(token[1], "supportsGenerationalQuerying"))
  {
    if ([a2 _isEnabled])
    {
      token[8] = [(_NSQueryGenerationToken *)a2 _generationalComponentForStore:?];
    }

    else
    {

      token[8] = 0;
    }
  }
}

- (NSSQLObjectFaultRequestContext)createNestedObjectFaultContextForObjectWithID:(NSSQLObjectFaultRequestContext *)result
{
  if (result)
  {
    v3 = result;
    v4 = [NSSQLObjectFaultRequestContext alloc];
    context = v3->super._context;
    sqlCore = v3->super._sqlCore;

    return [(NSSQLObjectFaultRequestContext *)v4 initWithObjectID:a2 context:context sqlCore:sqlCore];
  }

  return result;
}

- (BOOL)executeRequestCore:(id *)core
{
  v5 = objc_opt_class();
  NSRequestConcreteImplementation(self, a2, v5, v6, v7, v8, v9, v10);
  return 0;
}

- (BOOL)executeRequestUsingConnection:(id)connection
{
  v27[1] = *MEMORY[0x1E69E9840];
  newValue = 0;
  isWritingRequest = [(NSSQLStoreRequestContext *)self isWritingRequest];
  if (self)
  {
    queryGeneration = self->_queryGeneration;
  }

  else
  {
    queryGeneration = 0;
  }

  [(NSSQLStoreRequestContext *)self setConnection:connection];
  [(NSSQLiteConnection *)connection connect];
  v18 = 0u;
  if (self && (context = self->_context) != 0 && (*(&context->_flags + 3) & 0x20) != 0)
  {
    [(NSSQLiteConnection *)connection currentStats];
    v18 = v23;
    v8 = v24;
  }

  else
  {
    v8 = 0;
  }

  if (queryGeneration)
  {
    v9 = isWritingRequest;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    [(NSSQLiteConnection *)connection beginReadTransaction];
    v10 = [(NSSQLiteConnection *)connection adoptQueryGenerationWithIdentifier:?];
    if (v10)
    {
      v26 = @"NSSQLiteErrorDomain";
      v27[0] = [MEMORY[0x1E696AD98] numberWithInt:v10];
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      v17 = [_NSCoreDataException exceptionWithName:v10 code:@"Database connection failed to adopt query generation" reason:v16 userInfo:?];
      [(_NSCoreDataException *)v17 _setDomain:?];
      objc_exception_throw(v17);
    }
  }

  v12 = [(NSSQLStoreRequestContext *)self executeRequestCore:&newValue, *&v18];
  if (v9)
  {
    if (!self)
    {
      goto LABEL_23;
    }
  }

  else
  {
    [(NSSQLiteConnection *)connection commitTransaction];
    if (!self)
    {
      goto LABEL_23;
    }
  }

  v13 = self->_context;
  if (v13 && (*(&v13->_flags + 3) & 0x20) != 0)
  {
    v23 = 0u;
    v24 = 0u;
    [(NSSQLiteConnection *)connection currentStats];
    v14 = self->_context;
    v20 = vsubq_s64(v23, v19);
    v21 = v24 - v8;
    v22 = *(&v24 + 1);
    [(NSManagedObjectContext *)v14 _updateDatabaseStaticsWithCacheStats:?];
  }

  if (newValue)
  {
    objc_setProperty_nonatomic(self, v11, newValue, 40);
  }

LABEL_23:
  [(NSSQLStoreRequestContext *)self setConnection:?];
  return v12;
}

- (void)setConnection:(uint64_t)connection
{
  if (connection)
  {
    v4 = *(connection + 24);
    if (v4 != a2)
    {
      if (a2)
      {
        if (v4)
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"*RequestContext connection may not be reset" userInfo:0]);
        }
      }

      v5 = a2;

      *(connection + 24) = a2;
    }
  }
}

@end