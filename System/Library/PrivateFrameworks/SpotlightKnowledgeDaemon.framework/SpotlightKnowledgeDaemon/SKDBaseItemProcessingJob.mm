@interface SKDBaseItemProcessingJob
- (SKDBaseItemProcessingJob)initWithName:(id)name version:(id)version pipelines:(id)pipelines;
- (void)endBatch;
- (void)setFetchAttributes:(id)attributes;
- (void)startBatch;
@end

@implementation SKDBaseItemProcessingJob

- (void)startBatch
{
  logger = [(SKDBaseJob *)self logger];
  v3 = +[SKDPipelineEvent processingBatchEvent];
  v4 = [logger trackingEventBeginWithName:@"process-batch" event:v3];
  currentTrackingEvent = self->_currentTrackingEvent;
  self->_currentTrackingEvent = v4;
}

- (void)endBatch
{
  logger = [(SKDBaseJob *)self logger];
  [logger trackingEventEnd:self->_currentTrackingEvent];

  currentTrackingEvent = self->_currentTrackingEvent;
  self->_currentTrackingEvent = 0;
}

- (SKDBaseItemProcessingJob)initWithName:(id)name version:(id)version pipelines:(id)pipelines
{
  v23 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = SKDBaseItemProcessingJob;
  v5 = [(SKDBaseJob *)&v21 initWithName:name version:version pipelines:pipelines];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    pipelines = [(SKDBaseJob *)v5 pipelines];
    v8 = [pipelines countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = v8;
    v10 = *v18;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(pipelines);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        descriptor = [v12 descriptor];
        if ([descriptor enabled])
        {
          canRun = [v12 canRun];

          if (!canRun)
          {
            continue;
          }

          descriptor = [v12 fetchAttributes];
          [v6 addObjectsFromArray:descriptor];
        }
      }

      v9 = [pipelines countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (!v9)
      {
LABEL_13:

        [v6 addObjectsFromArray:&unk_2846E80E8];
        allObjects = [v6 allObjects];
        [(SKDBaseItemProcessingJob *)v5 setFetchAttributes:allObjects];

        return v5;
      }
    }
  }

  return v5;
}

- (void)setFetchAttributes:(id)attributes
{
  v4 = [attributes copy];
  fetchAttributes = self->_fetchAttributes;
  self->_fetchAttributes = v4;
}

@end