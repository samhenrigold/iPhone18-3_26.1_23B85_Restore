@interface BCIngestSidecarPlistProducer
- (BCIngestSidecarPlistProducer)initWithPath:(id)path sidecarPath:(id)sidecarPath;
- (BOOL)shouldRetry;
- (id)produceData;
- (void)dealloc;
@end

@implementation BCIngestSidecarPlistProducer

- (BCIngestSidecarPlistProducer)initWithPath:(id)path sidecarPath:(id)sidecarPath
{
  v5 = [(BCPlistProducer *)self initWithPath:path];
  if (v5)
  {
    v6 = [[NSDictionary alloc] initWithContentsOfFile:sidecarPath];
    v7 = objc_opt_class();
    v5->_sidecarDeletes = BCDynamicCast(v7, [v6 objectForKey:@"Deletes"]);
    v5->_filterMatches = 0;
  }

  return v5;
}

- (void)dealloc
{
  self->_sidecarDeletes = 0;

  self->_filterMatches = 0;
  v3.receiver = self;
  v3.super_class = BCIngestSidecarPlistProducer;
  [(BCPlistProducer *)&v3 dealloc];
}

- (BOOL)shouldRetry
{
  v3 = [(NSArray *)self->_sidecarDeletes count];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = BCIngestSidecarPlistProducer;
    LOBYTE(v3) = [(BCPlistProducer *)&v5 shouldRetry];
  }

  return v3;
}

- (id)produceData
{
  v4 = [NSMutableDictionary dictionaryWithContentsOfFile:self->super._path];
  v5 = objc_opt_class();
  v6 = BCDynamicCast(v5, [(NSMutableDictionary *)v4 objectForKey:@"Books"]);

  selfCopy = self;
  self->_filterMatches = objc_alloc_init(NSMutableArray);
  if (-[NSArray count](self->_sidecarDeletes, "count") && [v6 count])
  {
    v33 = v4;
    v31 = a2;
    v32 = v6;
    v7 = [v6 arrayOfDictionariesSortedByKey:@"Path"];
    v8 = [(NSArray *)self->_sidecarDeletes sortedArrayUsingSelector:"compare:"];
    v9 = [(NSArray *)v8 count];
    v10 = [(NSArray *)v8 objectAtIndex:0];
    obj = v7;
    v37 = +[NSMutableArray array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = [v7 countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v11)
    {
      v13 = v11;
      v35 = 0;
      v14 = 0;
      v15 = *v39;
      do
      {
        v16 = 0;
        do
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v38 + 1) + 8 * v16);
          v18 = objc_opt_class();
          v19 = BCDynamicCast(v18, v17);
          v20 = objc_opt_class();
          v21 = BCDynamicCast(v20, [v19 objectForKey:@"Path"]);
          if ([v21 length])
          {
            v22 = v10 == 0;
          }

          else
          {
            v22 = 1;
          }

          if (v22)
          {
LABEL_20:
            [v37 addObject:v19];
          }

          else
          {
            while (1)
            {
              v23 = [v10 compare:v21];
              if (v23 != -1)
              {
                break;
              }

              if (++v14 >= v9)
              {
                v10 = 0;
                goto LABEL_20;
              }

              v10 = [(NSArray *)v8 objectAtIndex:v14];
            }

            if (v23 == &dword_0 + 1)
            {
              goto LABEL_20;
            }

            if (!v23)
            {
              [(NSMutableArray *)selfCopy->_filterMatches addObject:v21];
              ++v35;
              if (++v14 >= v9)
              {
                v10 = 0;
              }

              else
              {
                v10 = [(NSArray *)v8 objectAtIndex:v14];
              }
            }
          }

          v16 = v16 + 1;
        }

        while (v16 != v13);
        v24 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
        v13 = v24;
      }

      while (v24);
    }

    else
    {
      v35 = 0;
    }

    v25 = BCDefaultLog(0, v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [v32 count];
      v27 = [(NSArray *)selfCopy->_sidecarDeletes count];
      v28 = [v37 count];
      *buf = 134218752;
      v43 = v26;
      v44 = 2048;
      v45 = v27;
      v46 = 2048;
      v47 = v28;
      v48 = 2048;
      v49 = v35;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "Unfiltered: %lu; Filter: %lu; Filtered: %lu; Filter Hit: %lu", buf, 0x2Au);
    }

    v29 = [v37 count] + v35;
    if (v29 == [v32 count])
    {
      if (v35)
      {
LABEL_32:
        v4 = v33;
        [(NSMutableDictionary *)v33 setObject:v37 forKey:@"Books"];
        return v4;
      }
    }

    else
    {
      -[NSAssertionHandler handleFailureInMethod:object:file:lineNumber:description:](+[NSAssertionHandler currentHandler](NSAssertionHandler, "currentHandler"), "handleFailureInMethod:object:file:lineNumber:description:", v31, selfCopy, @"BCIngestSidecarPlistProducer.m", 143, @"Unexpected Counts: Unfiltered: %lu; Filter: %lu; Filtered: %lu; Filter Hit: %lu", [v32 count], -[NSArray count](selfCopy->_sidecarDeletes, "count"), objc_msgSend(v37, "count"), v35);
      if (v35)
      {
        goto LABEL_32;
      }
    }

    selfCopy->super._dataUnchanged = 1;
    return v33;
  }

  self->super._dataUnchanged = 1;
  return v4;
}

@end