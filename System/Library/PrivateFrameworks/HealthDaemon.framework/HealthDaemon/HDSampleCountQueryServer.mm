@interface HDSampleCountQueryServer
- (HDSampleCountQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (void)_queue_start;
@end

@implementation HDSampleCountQueryServer

- (HDSampleCountQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = HDSampleCountQueryServer;
  v11 = [(HDQueryServer *)&v16 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    queryDescriptors = [configurationCopy queryDescriptors];
    v13 = objc_msgSend_copy(queryDescriptors);
    queryDescriptors = v11->_queryDescriptors;
    v11->_queryDescriptors = v13;
  }

  return v11;
}

- (void)_queue_start
{
  v33 = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = HDSampleCountQueryServer;
  [(HDQueryServer *)&v31 _queue_start];
  if ([(NSArray *)self->_queryDescriptors count])
  {
    clientProxy = [(HDQueryServer *)self clientProxy];
    remoteObjectProxy = [clientProxy remoteObjectProxy];

    v4 = MEMORY[0x277CBEB38];
    v5 = [(NSArray *)self->_queryDescriptors count];
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v20 = [v4 dictionaryWithCapacity:v6];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = self->_queryDescriptors;
    v7 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = *v28;
LABEL_7:
      v9 = 0;
      while (1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v23 = 0;
        v24 = &v23;
        v25 = 0x2020000000;
        v26 = 0;
        v11 = HKWithAutoreleasePool();
        v12 = 0;
        if (v11)
        {
          queryUUID = [MEMORY[0x277CCABB0] numberWithInteger:v24[3]];
          [v20 setObject:queryUUID forKeyedSubscript:v10];
        }

        else
        {
          queryUUID = [(HDQueryServer *)self queryUUID];
          [remoteObjectProxy client_deliverError:v12 forQuery:queryUUID];
        }

        _Block_object_dispose(&v23, 8);
        if (!v11)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSArray *)obj countByEnumeratingWithState:&v27 objects:v32 count:16];
          if (v7)
          {
            goto LABEL_7;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
LABEL_16:

      obj = [(HDQueryServer *)self queryUUID];
      [remoteObjectProxy client_deliverSampleCountDictionary:v20 forQuery:obj];
    }
  }

  else
  {
    clientProxy2 = [(HDQueryServer *)self clientProxy];
    remoteObjectProxy2 = [clientProxy2 remoteObjectProxy];

    profile = [(HDQueryServer *)self profile];
    v23 = 0;
    v17 = [HDSampleEntity sampleCountsByTypeForProfile:profile error:&v23];
    v18 = v23;

    queryUUID2 = [(HDQueryServer *)self queryUUID];
    if (v17)
    {
      [remoteObjectProxy2 client_deliverSampleTypeCountDictionary:v17 forQuery:queryUUID2];
    }

    else
    {
      [remoteObjectProxy2 client_deliverError:v18 forQuery:queryUUID2];
    }
  }
}

BOOL __40__HDSampleCountQueryServer__queue_start__block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) sampleType];
  v5 = [*(a1 + 32) _filter];
  v6 = [*(a1 + 40) profile];
  v7 = [v5 predicateWithProfile:v6];

  v8 = [objc_msgSend(v4 "dataObjectClass")];
  v9 = [*(a1 + 40) profile];
  *(*(*(a1 + 48) + 8) + 24) = [v8 countOfSamplesWithType:v4 profile:v9 matchingPredicate:v7 withError:a2];

  v10 = *a2 == 0;
  return v10;
}

@end