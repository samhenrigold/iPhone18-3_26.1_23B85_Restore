@interface AVCaptureSynchronizedMetadataObjectData
- (id)_initWithMetadataObjectCollection:(id)collection;
- (void)addSynchronizedData:(id)data;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedMetadataObjectData

- (id)_initWithMetadataObjectCollection:(id)collection
{
  if (![collection metadataObjects])
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations(v6, v7))
    {
      objc_exception_throw(v5);
    }

    NSLog(&cfstr_SuppressingExc.isa, v5);
    return 0;
  }

  if (collection)
  {
    objc_msgSend_time(collection);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  v11.receiver = self;
  v11.super_class = AVCaptureSynchronizedMetadataObjectData;
  v8 = [(AVCaptureSynchronizedData *)&v11 _initWithTimestamp:v12];
  if (v8)
  {
    v9 = objc_alloc_init(AVCaptureSynchronizedMetadataObjectDataInternal);
    v8[2] = v9;
    if (v9)
    {
      *(v8[2] + 16) = [collection handledMetadataObjectTypes];
      *(v8[2] + 8) = [collection metadataObjects];
      return v8;
    }

    return 0;
  }

  return v8;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
  }

  v4.receiver = self;
  v4.super_class = AVCaptureSynchronizedMetadataObjectData;
  [(AVCaptureSynchronizedData *)&v4 dealloc];
}

- (void)addSynchronizedData:(id)data
{
  memset(&v22[1], 0, sizeof(CMTime));
  if (self)
  {
    objc_msgSend_timestamp(self, a2);
  }

  memset(v22, 0, 24);
  if (data)
  {
    objc_msgSend_timestamp(data, a2);
  }

  if (v22[1].flags & 1) != 0 && (v22[0].flags)
  {
    time1 = v22[0];
    time2 = v22[1];
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time1 = v22[0];
      [(AVCaptureSynchronizedData *)self setTimestampOverride:&time1];
    }
  }

  v5 = -[NSSet setByAddingObjectsFromSet:](self->_internal->handledMetadataObjectTypes, "setByAddingObjectsFromSet:", [data handledMetadataObjectTypes]);

  self->_internal->handledMetadataObjectTypes = v5;
  v6 = [MEMORY[0x1E695DF70] arrayWithArray:self->_internal->metadataObjects];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  metadataObjects = [data metadataObjects];
  v8 = [metadataObjects countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(metadataObjects);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __63__AVCaptureSynchronizedMetadataObjectData_addSynchronizedData___block_invoke;
        v14[3] = &unk_1E7875C98;
        v14[4] = v12;
        v13 = [v6 indexOfObjectPassingTest:v14];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v6 addObject:v12];
        }

        else
        {
          [v6 insertObject:v12 atIndex:v13];
        }
      }

      v9 = [metadataObjects countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v9);
  }

  self->_internal->metadataObjects = v6;
}

BOOL __63__AVCaptureSynchronizedMetadataObjectData_addSynchronizedData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    objc_msgSend_time(a2);
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_time(v6);
  }

  else
  {
    memset(&v9, 0, sizeof(v9));
  }

  v7 = CMTimeCompare(&time1, &v9);
  if (v7 >= 1)
  {
    *a4 = 1;
  }

  return v7 > 0;
}

@end