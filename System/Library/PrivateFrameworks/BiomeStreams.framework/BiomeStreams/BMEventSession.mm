@interface BMEventSession
+ (id)openSessionsFromBookmark:(id)bookmark;
+ (id)sessionPublisherWithStreamPublisher:(id)publisher startingBlock:(id)block endingBlock:(id)endingBlock sessionKeyBlock:(id)keyBlock options:(unint64_t)options;
- (BMEventSession)initWithCoder:(id)coder;
- (BMEventSession)initWithKey:(id)key events:(id)events;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMEventSession

- (BMEventSession)initWithKey:(id)key events:(id)events
{
  keyCopy = key;
  eventsCopy = events;
  v12.receiver = self;
  v12.super_class = BMEventSession;
  v9 = [(BMEventSession *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_key, key);
    objc_storeStrong(&v10->_events, events);
  }

  return v10;
}

BOOL __24__BMEventSession_events__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFB0];
  v3 = a2;
  v4 = [v2 null];

  return v4 != v3;
}

+ (id)sessionPublisherWithStreamPublisher:(id)publisher startingBlock:(id)block endingBlock:(id)endingBlock sessionKeyBlock:(id)keyBlock options:(unint64_t)options
{
  v28[2] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  endingBlockCopy = endingBlock;
  keyBlockCopy = keyBlock;
  publisherCopy = publisher;
  v15 = objc_opt_new();
  v28[0] = v15;
  v28[1] = MEMORY[0x1E695E0F0];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __104__BMEventSession_sessionPublisherWithStreamPublisher_startingBlock_endingBlock_sessionKeyBlock_options___block_invoke;
  v23[3] = &unk_1E6E54230;
  v24 = keyBlockCopy;
  v25 = blockCopy;
  v26 = endingBlockCopy;
  optionsCopy = options;
  v17 = endingBlockCopy;
  v18 = blockCopy;
  v19 = keyBlockCopy;
  v20 = [publisherCopy scanWithInitial:v16 nextPartialResult:v23];

  v21 = [v20 flatMapWithTransform:&__block_literal_global_11];

  return v21;
}

id __104__BMEventSession_sessionPublisherWithStreamPublisher_startingBlock_endingBlock_sessionKeyBlock_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = (*(v8 + 16))(v8, v5);

    v7 = v9;
  }

  v10 = (*(*(a1 + 40) + 16))();
  v11 = (*(*(a1 + 48) + 16))();
  v12 = [v6 objectForKeyedSubscript:v7];
  v13 = v12;
  if (!v10)
  {
    if (v11)
    {
      if (v12)
      {
        [v12[1] addObject:v5];
        [v6 removeObjectForKey:v7];
        v18 = v13;
      }

      else
      {
        if ((*(a1 + 56) & 4) == 0)
        {
          goto LABEL_17;
        }

        v25 = [BMEventSession alloc];
        v36 = v5;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
        v27 = [v26 mutableCopy];
        v18 = [(BMEventSession *)v25 initWithKey:v7 events:v27];

        if (!v18)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_12;
    }

    if (!v12)
    {
      if ((*(a1 + 56) & 4) == 0)
      {
        goto LABEL_17;
      }

      v15 = [BMEventSession alloc];
      v35 = v5;
      v16 = MEMORY[0x1E695DEC8];
      v17 = &v35;
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (!v12)
  {
    v15 = [BMEventSession alloc];
    v37 = v5;
    v16 = MEMORY[0x1E695DEC8];
    v17 = &v37;
    goto LABEL_16;
  }

  v14 = *(a1 + 56);
  if ((v14 & 1) == 0)
  {
    if ((v14 & 2) == 0)
    {
      if ((v14 & 4) == 0)
      {
        v15 = [BMEventSession alloc];
        v38 = v5;
        v16 = MEMORY[0x1E695DEC8];
        v17 = &v38;
LABEL_16:
        v21 = [v16 arrayWithObjects:v17 count:1];
        v22 = [v21 mutableCopy];
        v23 = [(BMEventSession *)v15 initWithKey:v7 events:v22];
        [v6 setObject:v23 forKeyedSubscript:v7];

        goto LABEL_17;
      }

      v18 = v12;
      v28 = [BMEventSession alloc];
      v39[0] = v5;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      v30 = [v29 mutableCopy];
      v31 = [(BMEventSession *)v28 initWithKey:v7 events:v30];
      [v6 setObject:v31 forKeyedSubscript:v7];

LABEL_12:
      v33 = v18;
      v34[0] = v6;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
      v34[1] = v19;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];

      goto LABEL_18;
    }

LABEL_14:
    [v12[1] addObject:v5];
  }

LABEL_17:
  v32[0] = v6;
  v32[1] = MEMORY[0x1E695E0F0];
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v18 = 0;
LABEL_18:

  return v20;
}

id __104__BMEventSession_sessionPublisherWithStreamPublisher_startingBlock_endingBlock_sessionKeyBlock_options___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 objectAtIndexedSubscript:1];
  v3 = [v2 bpsPublisher];

  return v3;
}

+ (id)openSessionsFromBookmark:(id)bookmark
{
  upstreams = [bookmark upstreams];
  v4 = [upstreams objectAtIndexedSubscript:0];

  value = [v4 value];
  v6 = [value objectAtIndexedSubscript:0];

  allValues = [v6 allValues];

  return allValues;
}

- (void)encodeWithCoder:(id)coder
{
  key = self->_key;
  coderCopy = coder;
  [coderCopy encodeObject:key forKey:@"key"];
  [coderCopy encodeObject:self->_events forKey:@"events"];
}

- (BMEventSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"key"];
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = objc_opt_class();
  v8 = [v6 initWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"events"];

  v10 = [(BMEventSession *)self initWithKey:v5 events:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [equalCopy[2] isEqual:self->_key])
  {
    v5 = [equalCopy[1] isEqualToArray:self->_events];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end