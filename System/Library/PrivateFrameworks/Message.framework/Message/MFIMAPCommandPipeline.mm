@interface MFIMAPCommandPipeline
- (id)failureResponsesFromSendingCommandsWithConnection:(id)connection;
- (void)_removeFetchUnitMatchingResponse:(id)response;
- (void)addFetchCommandForUid:(unsigned int)uid fetchItem:(id)item expectedLength:(unint64_t)length bodyDataConsumer:(id)consumer consumerSection:(id)section;
@end

@implementation MFIMAPCommandPipeline

- (void)addFetchCommandForUid:(unsigned int)uid fetchItem:(id)item expectedLength:(unint64_t)length bodyDataConsumer:(id)consumer consumerSection:(id)section
{
  v10 = *&uid;
  itemCopy = item;
  consumerCopy = consumer;
  sectionCopy = section;
  [(MFIMAPCommandPipeline *)self mf_lock];
  if (!self->_fetchUnits)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    fetchUnits = self->_fetchUnits;
    self->_fetchUnits = v14;
  }

  v16 = objc_alloc_init(_MFIMAPFetchUnit);
  [(_MFIMAPFetchUnit *)v16 setUid:v10];
  [(_MFIMAPFetchUnit *)v16 setFetchItem:itemCopy];
  [(_MFIMAPFetchUnit *)v16 setBodyDataConsumer:consumerCopy];
  [(_MFIMAPFetchUnit *)v16 setConsumerSection:sectionCopy];
  [(NSMutableArray *)self->_fetchUnits addObject:v16];
  chunkSize = self->_chunkSize;
  v18 = self->_expectedSize + length;
  self->_expectedSize = v18;
  if (v18 < chunkSize)
  {
    v19 = *(self + 24) & 0xFE;
  }

  else
  {
    v19 = (*(self + 24) & 0xFE) + 1;
  }

  *(self + 24) = v19;
  [(MFIMAPCommandPipeline *)self mf_unlock];
}

- (void)_removeFetchUnitMatchingResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy fetchResultWithType:8];
  v5 = [v4 uid];

  if (v5 && [(NSMutableArray *)self->_fetchUnits count])
  {
    v6 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:0];
    if ([v6 uid] == v5 && objc_msgSend(v6, "matchesFetchResponse:", responseCopy))
    {
      [(NSMutableArray *)self->_fetchUnits removeObjectAtIndex:0];
    }
  }
}

- (id)failureResponsesFromSendingCommandsWithConnection:(id)connection
{
  v66[2] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(MFIMAPCommandPipeline *)self mf_lock];
  v4 = [(NSMutableArray *)self->_fetchUnits count];
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      connectionCopy = [(NSMutableArray *)self->_fetchUnits objectAtIndex:i, connectionCopy];
      v6 = [connectionCopy uid];
      fetchItem = [connectionCopy fetchItem];
      bodyDataConsumer = [connectionCopy bodyDataConsumer];
      if (!bodyDataConsumer || ([connectionCopy consumerSection], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, bodyDataConsumer, v9))
      {
        v10 = 0;
      }

      else
      {
        v10 = objc_alloc_init(MFIMAPResponseConsumer);
        bodyDataConsumer2 = [connectionCopy bodyDataConsumer];
        consumerSection = [connectionCopy consumerSection];
        [(MFIMAPResponseConsumer *)v10 addConsumer:bodyDataConsumer2 forSection:consumerSection];
      }

      v13 = i + 1;
      if (i + 1 >= v4)
      {
        v14 = 0;
        v25 = 1;
      }

      else
      {
        v14 = 0;
        v15 = v10;
        do
        {
          v16 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:v13];
          if ([v16 uid] == v6)
          {
            [(NSMutableArray *)self->_fetchUnits removeObjectAtIndex:v13];
            [(NSMutableArray *)self->_fetchUnits insertObject:v16 atIndex:++i];
            fetchItem2 = [v16 fetchItem];
            v18 = [fetchItem2 isEqual:fetchItem];

            if ((v18 & 1) == 0)
            {
              if (!v14)
              {
                v14 = objc_msgSend(@"("), "mutableCopyWithZone:", 0;
                [v14 appendString:fetchItem];
              }

              [v14 appendString:@" "];
              fetchItem3 = [v16 fetchItem];
              [v14 appendString:fetchItem3];

              bodyDataConsumer3 = [v16 bodyDataConsumer];
              if (bodyDataConsumer3)
              {
                consumerSection2 = [v16 consumerSection];
                v22 = consumerSection2 == 0;

                if (!v22)
                {
                  if (!v15)
                  {
                    v15 = objc_alloc_init(MFIMAPResponseConsumer);
                  }

                  bodyDataConsumer4 = [v16 bodyDataConsumer];
                  consumerSection3 = [v16 consumerSection];
                  [(MFIMAPResponseConsumer *)v15 addConsumer:bodyDataConsumer4 forSection:consumerSection3];
                }
              }
            }
          }

          ++v13;
        }

        while (v4 != v13);
        if (v14)
        {
          [v14 appendString:@""]);
          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        v10 = v15;
      }

      v26 = [_MFIMAPCommandParameters alloc];
      v27 = EFStringWithInt();
      v28 = v27;
      v29 = fetchItem;
      if (!v25)
      {
        v29 = v14;
      }

      v66[0] = v27;
      v66[1] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:2];
      v31 = [(_MFIMAPCommandParameters *)v26 initWithCommand:21 arguments:v30];

      [(_MFIMAPCommandParameters *)v31 setResponseConsumer:v10];
      [v53 addObject:v31];
    }
  }

  if ([v53 count])
  {
    *(self + 24) |= 2u;
    [v52 mf_lock];
    Current = CFAbsoluteTimeGetCurrent();
    v33 = [v52 _responseFromSendingCommands:v53];
    [v52 setReadBufferSizeFromElapsedTime:self->_expectedSize bytesRead:CFAbsoluteTimeGetCurrent() - Current];
    [v52 mf_unlock];
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v34 = v53;
    v35 = [v34 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v35)
    {
      v36 = *v61;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v61 != v36)
          {
            objc_enumerationMutation(v34);
          }

          untaggedResponses = [*(*(&v60 + 1) + 8 * j) untaggedResponses];
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
          v39 = untaggedResponses;
          v40 = [v39 countByEnumeratingWithState:&v56 objects:v64 count:16];
          if (v40)
          {
            v41 = *v57;
            do
            {
              for (k = 0; k != v40; ++k)
              {
                if (*v57 != v41)
                {
                  objc_enumerationMutation(v39);
                }

                v43 = *(*(&v56 + 1) + 8 * k);
                if ([v43 isUntagged] && objc_msgSend(v43, "responseType") == 17)
                {
                  [(MFIMAPCommandPipeline *)self _removeFetchUnitMatchingResponse:v43];
                }
              }

              v40 = [v39 countByEnumeratingWithState:&v56 objects:v64 count:16];
            }

            while (v40);
          }
        }

        v35 = [v34 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v35);
    }

    *(self + 24) &= ~2u;
  }

  if ([(NSMutableArray *)self->_fetchUnits count])
  {
    v44 = self->_fetchUnits;
    fetchUnits = self->_fetchUnits;
    self->_fetchUnits = 0;
  }

  else
  {
    v44 = 0;
  }

  self->_expectedSize = 0;
  *(self + 24) &= ~1u;
  [(MFIMAPCommandPipeline *)self mf_unlock];
  [v52 didFinishCommands:v53];
  v46 = [(NSMutableArray *)v44 count];
  if (v46)
  {
    v47 = 0;
    do
    {
      v48 = [(NSMutableArray *)v44 objectAtIndex:v47];
      copyFailedFetchResponse = [v48 copyFailedFetchResponse];
      if (copyFailedFetchResponse)
      {
        [(NSMutableArray *)v44 replaceObjectAtIndex:v47++ withObject:copyFailedFetchResponse];
      }

      else
      {
        [(NSMutableArray *)v44 removeObjectAtIndex:v47];
        --v46;
      }
    }

    while (v47 < v46);
  }

  if (![(NSMutableArray *)v44 count])
  {

    v44 = 0;
  }

  return v44;
}

@end