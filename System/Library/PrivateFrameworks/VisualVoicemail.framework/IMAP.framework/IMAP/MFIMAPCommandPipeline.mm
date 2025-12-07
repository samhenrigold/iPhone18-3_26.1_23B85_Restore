@interface MFIMAPCommandPipeline
- (MFIMAPCommandPipeline)initWithMambaID:(const char *)d;
- (id)failureResponsesFromSendingCommandsWithConnection:(id)connection;
- (void)_removeFetchUnitMatchingResponse:(id)response;
- (void)addFetchCommandForUid:(unsigned int)uid fetchItem:(id)item expectedLength:(unint64_t)length bodyDataConsumer:(id)consumer consumerSection:(id)section;
- (void)dealloc;
@end

@implementation MFIMAPCommandPipeline

- (MFIMAPCommandPipeline)initWithMambaID:(const char *)d
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = MFIMAPCommandPipeline;
  if ([(MFIMAPCommandPipeline *)&v4 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v8 = mambaID;
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = objc_opt_class();
    v13 = 2048;
    selfCopy = self;
    v5 = v12;
    _os_log_impl(&dword_2720B1000, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p deleted", buf, 0x2Au);
  }

  v6.receiver = self;
  v6.super_class = MFIMAPCommandPipeline;
  [(MFIMAPCommandPipeline *)&v6 dealloc];
}

- (void)addFetchCommandForUid:(unsigned int)uid fetchItem:(id)item expectedLength:(unint64_t)length bodyDataConsumer:(id)consumer consumerSection:(id)section
{
  v10 = *&uid;
  v35 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  consumerCopy = consumer;
  sectionCopy = section;
  [(MFIMAPCommandPipeline *)self mf_lock];
  v15 = ctu::OsLogLogger::getOsLogHandle(self->logger.__ptr_);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v23 = 136316418;
    v24 = mambaID;
    v25 = 2080;
    v26 = " ";
    v27 = 2048;
    v28 = v10;
    v29 = 2112;
    v30 = itemCopy;
    v31 = 2048;
    lengthCopy = length;
    v33 = 2112;
    v34 = sectionCopy;
    _os_log_impl(&dword_2720B1000, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s[FetchActivity] Adding fetch command for uid %lu, item %@, length %lu, section %@", &v23, 0x3Eu);
  }

  if (!self->_fetchUnits)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    fetchUnits = self->_fetchUnits;
    self->_fetchUnits = v17;
  }

  v19 = objc_alloc_init(_MFIMAPFetchUnit);
  [(_MFIMAPFetchUnit *)v19 setUid:v10];
  [(_MFIMAPFetchUnit *)v19 setFetchItem:itemCopy];
  [(_MFIMAPFetchUnit *)v19 setBodyDataConsumer:consumerCopy];
  [(_MFIMAPFetchUnit *)v19 setConsumerSection:sectionCopy];
  [(NSMutableArray *)self->_fetchUnits addObject:v19];
  chunkSize = self->_chunkSize;
  v21 = self->_expectedSize + length;
  self->_expectedSize = v21;
  if (v21 < chunkSize)
  {
    v22 = *(self + 24) & 0xFE;
  }

  else
  {
    v22 = (*(self + 24) & 0xFE) + 1;
  }

  *(self + 24) = v22;
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
  v72[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  [(MFIMAPCommandPipeline *)self mf_lock];
  v4 = [(NSMutableArray *)self->_fetchUnits count];
  if (v4)
  {
    for (i = 0; i < v4; ++i)
    {
      v57 = [(NSMutableArray *)self->_fetchUnits objectAtIndex:i];
      v6 = [v57 uid];
      fetchItem = [v57 fetchItem];
      bodyDataConsumer = [v57 bodyDataConsumer];
      if (!bodyDataConsumer || ([v57 consumerSection], v8 = objc_claimAutoreleasedReturnValue(), v9 = v8 == 0, v8, bodyDataConsumer, v9))
      {
        v10 = 0;
      }

      else
      {
        v10 = objc_alloc_init(MFIMAPResponseConsumer);
        bodyDataConsumer2 = [v57 bodyDataConsumer];
        consumerSection = [v57 consumerSection];
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

      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", v6];
      v27 = v26;
      v28 = fetchItem;
      if (!v25)
      {
        v28 = v14;
      }

      v72[0] = v26;
      v72[1] = v28;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];

      v67 = 0;
      v64 = 0;
      v65 = 0;
      LODWORD(v63) = 21;
      v30 = v29;
      v64 = v30;
      v31 = v65;
      v65 = 0;
      v66 = 0;

      objc_storeStrong(&v67, v10);
      v32 = v69;
      if (v69 >= v70)
      {
        v33 = std::vector<IMAPCommandParameters>::__emplace_back_slow_path<IMAPCommandParameters const&>(&v68, &v63);
      }

      else
      {
        *v69 = v63;
        v32[1] = v64;
        v32[2] = v65;
        v32[3] = v66;
        v32[4] = v67;
        v33 = (v32 + 5);
      }

      v69 = v33;
    }
  }

  if (v69 != v68)
  {
    *(self + 24) |= 2u;
    [connectionCopy mf_lock];
    Current = CFAbsoluteTimeGetCurrent();
    v35 = [connectionCopy _responseFromSendingCommands:? count:?];
    [connectionCopy setReadBufferSizeFromElapsedTime:self->_expectedSize bytesRead:CFAbsoluteTimeGetCurrent() - Current];
    [connectionCopy mf_unlock];
    v36 = v68;
    v37 = v69;
    while (v36 != v37)
    {
      LODWORD(v63) = *v36;
      v38 = *(v36 + 8);
      v64 = v38;
      v39 = *(v36 + 16);
      v40 = *(v36 + 24);
      v41 = *(v36 + 32);
      v65 = v39;
      v66 = v40;
      v42 = v41;
      v67 = v42;
      v43 = v39;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v44 = v43;
      v45 = [v44 countByEnumeratingWithState:&v59 objects:v71 count:16];
      if (v45)
      {
        v46 = *v60;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v60 != v46)
            {
              objc_enumerationMutation(v44);
            }

            v48 = *(*(&v59 + 1) + 8 * j);
            if ([v48 isUntagged])
            {
              if ([v48 responseType] == 17)
              {
                [(MFIMAPCommandPipeline *)self _removeFetchUnitMatchingResponse:v48];
              }
            }
          }

          v45 = [v44 countByEnumeratingWithState:&v59 objects:v71 count:16];
        }

        while (v45);
      }

      v36 += 40;
    }

    *(self + 24) &= ~2u;
  }

  if ([(NSMutableArray *)self->_fetchUnits count])
  {
    v49 = self->_fetchUnits;
    fetchUnits = self->_fetchUnits;
    self->_fetchUnits = 0;
  }

  else
  {
    v49 = 0;
  }

  self->_expectedSize = 0;
  *(self + 24) &= ~1u;
  [(MFIMAPCommandPipeline *)self mf_unlock];
  [connectionCopy didFinishCommands:? count:?];
  v51 = [(NSMutableArray *)v49 count];
  if (v51)
  {
    v52 = 0;
    do
    {
      v53 = [(NSMutableArray *)v49 objectAtIndex:v52];
      copyFailedFetchResponse = [v53 copyFailedFetchResponse];
      if (copyFailedFetchResponse)
      {
        [(NSMutableArray *)v49 replaceObjectAtIndex:v52++ withObject:copyFailedFetchResponse];
      }

      else
      {
        [(NSMutableArray *)v49 removeObjectAtIndex:v52];
        --v51;
      }
    }

    while (v52 < v51);
  }

  if (![(NSMutableArray *)v49 count])
  {

    v49 = 0;
  }

  v63 = &v68;
  std::vector<IMAPCommandParameters>::__destroy_vector::operator()[abi:ne200100](&v63);

  return v49;
}

@end