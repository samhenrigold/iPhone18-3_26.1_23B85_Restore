@interface FSFCurareInteractionStream
+ (id)eventFilterForEventTypes:(id)types;
+ (id)getWithStreamId:(id)id sourceType:(unint64_t)type;
- (BOOL)deleteCurrentStream;
- (BOOL)insert:(id)insert error:(id *)error;
- (FSFCurareInteractionStream)initWithStreamId:(id)id sourceType:(unint64_t)type;
- (id)retrieve:(id)retrieve;
- (id)retrieveWithInteractionWrapper:(id)wrapper;
- (void)retrieve:(id)retrieve completionHandler:(id)handler;
- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler;
@end

@implementation FSFCurareInteractionStream

+ (id)getWithStreamId:(id)id sourceType:(unint64_t)type
{
  idCopy = id;
  v6 = [[FSFCurareInteractionStream alloc] initWithStreamId:idCopy sourceType:type];

  return v6;
}

- (FSFCurareInteractionStream)initWithStreamId:(id)id sourceType:(unint64_t)type
{
  v16[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  v15.receiver = self;
  v15.super_class = FSFCurareInteractionStream;
  v7 = [(FSFCurareInteractionStream *)&v15 init];
  if (v7)
  {
    if (type == 1)
    {
      v10 = objc_opt_class();
      v16[0] = idCopy;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      v9 = [v10 eventFilterForEventTypes:v11];

      v12 = [[FSFCurareInteractionSELFStream alloc] initWithFilter:v9];
      stream = v7->_stream;
      v7->_stream = v12;

      goto LABEL_6;
    }

    if (!type)
    {
      v8 = [[FSFCurareInteractionFeatureStoreStream alloc] initWithStreamId:idCopy];
      v9 = v7->_stream;
      v7->_stream = v8;
LABEL_6:
    }
  }

  return v7;
}

- (BOOL)insert:(id)insert error:(id *)error
{
  insertCopy = insert;
  stream = [(FSFCurareInteractionStream *)self stream];
  LOBYTE(error) = [stream insert:insertCopy error:error];

  return error;
}

- (id)retrieve:(id)retrieve
{
  retrieveCopy = retrieve;
  stream = [(FSFCurareInteractionStream *)self stream];
  v6 = [stream retrieve:retrieveCopy];

  return v6;
}

- (void)retrieve:(id)retrieve completionHandler:(id)handler
{
  handlerCopy = handler;
  retrieveCopy = retrieve;
  stream = [(FSFCurareInteractionStream *)self stream];
  [stream retrieve:retrieveCopy completionHandler:handlerCopy];
}

- (id)retrieveWithInteractionWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  stream = [(FSFCurareInteractionStream *)self stream];
  v6 = [stream retrieveWithInteractionWrapper:wrapperCopy];

  return v6;
}

- (void)retrieveWithInteractionWrapper:(id)wrapper completionHandler:(id)handler
{
  handlerCopy = handler;
  wrapperCopy = wrapper;
  stream = [(FSFCurareInteractionStream *)self stream];
  [stream retrieveWithInteractionWrapper:wrapperCopy completionHandler:handlerCopy];
}

- (BOOL)deleteCurrentStream
{
  stream = [(FSFCurareInteractionStream *)self stream];
  deleteCurrentStream = [stream deleteCurrentStream];

  return deleteCurrentStream;
}

+ (id)eventFilterForEventTypes:(id)types
{
  v37 = *MEMORY[0x277D85DE8];
  typesCopy = types;
  v4 = typesCopy;
  if (!typesCopy)
  {
    everything = [MEMORY[0x277CE4880] everything];
    goto LABEL_22;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = typesCopy;
  obj = typesCopy;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (!v5)
  {
    everything = 0;
    goto LABEL_21;
  }

  v6 = v5;
  everything = 0;
  v8 = *v32;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v32 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v31 + 1) + 8 * i);
      v11 = [v10 componentsSeparatedByString:@"."];
      if ([v11 count] >= 3)
        v23 = {;
        v24 = MEMORY[0x277CBEAD8];
        v25 = *MEMORY[0x277CBE660];
        goto LABEL_29;
      }

      v12 = [v11 objectAtIndexedSubscript:0];
      v13 = NSClassFromString(v12);

      if (([(objc_class *)v13 isSubclassOfClass:objc_opt_class()]& 1) == 0)
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [v11 objectAtIndexedSubscript:0];
        v27 = LABEL_28:;

        v24 = MEMORY[0x277CBEAD8];
        v25 = *MEMORY[0x277CBE660];
        v23 = v27;
LABEL_29:
        v28 = [v24 exceptionWithName:v25 reason:v23 userInfo:0];
        objc_exception_throw(v28);
      }

      if ([v11 count] == 2 && (objc_msgSend(v11, "objectAtIndexedSubscript:", 1), v14 = objc_claimAutoreleasedReturnValue(), v15 = NSClassFromString(v14), v14, v15))
      {
        if (([(objc_class *)v15 isSubclassOfClass:objc_opt_class()]& 1) == 0)
        {
          v26 = MEMORY[0x277CCACA8];
          v22 = [v11 objectAtIndexedSubscript:1];
          goto LABEL_28;
        }

        v16 = MEMORY[0x277CE4880];
        v35 = v15;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
        v18 = [v16 someOf:v13 types:v17];

        if (!everything)
        {
LABEL_13:
          everything = v18;
          goto LABEL_16;
        }
      }

      else
      {
        v18 = [MEMORY[0x277CE4880] allOf:v13];
        if (!everything)
        {
          goto LABEL_13;
        }
      }

      v19 = [everything combine:v18];

      everything = v19;
LABEL_16:
    }

    v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  }

  while (v6);
LABEL_21:

  v4 = v29;
LABEL_22:

  return everything;
}

@end