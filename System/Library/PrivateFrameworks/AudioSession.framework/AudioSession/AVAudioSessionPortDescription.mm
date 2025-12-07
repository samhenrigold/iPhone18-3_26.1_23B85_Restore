@interface AVAudioSessionPortDescription
+ (id)privateCreateArray:(id)array owningSession:(id)session;
- (AVAudioSessionDataSourceDescription)preferredDataSource;
- (AVAudioSessionDataSourceDescription)selectedDataSource;
- (AVAudioSessionPortDescription)initWithRawPortDescriptionXPC:(id)c owningSession:(id)session;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPort:(id)port compareStrict:(BOOL)strict;
- (BOOL)setPreferredDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError;
- (NSArray)channels;
- (NSArray)dataSources;
- (id)description;
- (unint64_t)hash;
- (void)configureChannelsAndDataSources:(id)sources;
- (void)dealloc;
@end

@implementation AVAudioSessionPortDescription

- (void)dealloc
{
  impl = self->_impl;
  if (impl)
  {
    PortDescriptionImpl::~PortDescriptionImpl(impl);
    MEMORY[0x1B26ED410]();
  }

  self->_impl = 0;
  v4.receiver = self;
  v4.super_class = AVAudioSessionPortDescription;
  [(AVAudioSessionPortDescription *)&v4 dealloc];
}

- (NSArray)dataSources
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 10);
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)description
{
  impl = self->_impl;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = *(impl + 2);
  v8 = *(impl + 3);
  v9 = *(impl + 4);
  dataSourceName = [*(impl + 11) dataSourceName];
  v11 = [v4 stringWithFormat:@"<%@: %p, type = %@ name = %@; UID = %@; selectedDataSource = %@>", v6, self, v7, v8, v9, dataSourceName];;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(AVAudioSessionPortDescription *)self isEqualToPort:v5 compareStrict:1];
  }

  return v6;
}

- (BOOL)isEqualToPort:(id)port compareStrict:(BOOL)strict
{
  strictCopy = strict;
  portCopy = port;
  if (self == portCopy)
  {
    goto LABEL_19;
  }

  v7 = [(AVAudioSessionPortDescription *)self UID];
  v8 = [(AVAudioSessionPortDescription *)portCopy UID];
  v9 = [v7 isEqualToString:v8];

  if ((v9 & 1) == 0)
  {
    goto LABEL_20;
  }

  portType = [(AVAudioSessionPortDescription *)self portType];
  portType2 = [(AVAudioSessionPortDescription *)portCopy portType];
  v12 = [portType isEqualToString:portType2];

  if ((v12 & 1) == 0)
  {
    goto LABEL_20;
  }

  portName = [(AVAudioSessionPortDescription *)self portName];
  portName2 = [(AVAudioSessionPortDescription *)portCopy portName];
  v15 = [portName isEqualToString:portName2];

  if ((v15 & 1) == 0)
  {
    goto LABEL_20;
  }

  if (strictCopy)
  {
    channels = [(AVAudioSessionPortDescription *)self channels];
    channels2 = [(AVAudioSessionPortDescription *)portCopy channels];
    v18 = (channels == 0) ^ (channels2 != 0);

    if ((v18 & 1) == 0)
    {
      goto LABEL_20;
    }

    channels3 = [(AVAudioSessionPortDescription *)self channels];
    if (channels3)
    {
      channels4 = [(AVAudioSessionPortDescription *)self channels];
      channels5 = [(AVAudioSessionPortDescription *)portCopy channels];
      v22 = [channels4 isEqualToArray:channels5];

      if ((v22 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    dataSources = [(AVAudioSessionPortDescription *)self dataSources];
    if (dataSources)
    {
    }

    else
    {
      dataSources2 = [(AVAudioSessionPortDescription *)portCopy dataSources];

      if (!dataSources2)
      {
        goto LABEL_19;
      }
    }

    dataSources3 = [(AVAudioSessionPortDescription *)self dataSources];
    if (dataSources3)
    {
      dataSources4 = [(AVAudioSessionPortDescription *)portCopy dataSources];

      if (!dataSources4)
      {
        goto LABEL_20;
      }
    }

    dataSources5 = [(AVAudioSessionPortDescription *)self dataSources];
    dataSources6 = [(AVAudioSessionPortDescription *)portCopy dataSources];
    v29 = [dataSources5 isEqualToArray:dataSources6];

    if ((v29 & 1) == 0)
    {
      goto LABEL_20;
    }

    selectedDataSource = [(AVAudioSessionPortDescription *)self selectedDataSource];
    if (selectedDataSource)
    {

      goto LABEL_18;
    }

    selectedDataSource2 = [(AVAudioSessionPortDescription *)portCopy selectedDataSource];

    if (selectedDataSource2)
    {
LABEL_18:
      selectedDataSource3 = [(AVAudioSessionPortDescription *)self selectedDataSource];
      selectedDataSource4 = [(AVAudioSessionPortDescription *)portCopy selectedDataSource];
      v34 = [selectedDataSource3 isEqual:selectedDataSource4];

      if (v34)
      {
        goto LABEL_19;
      }

LABEL_20:
      v35 = 0;
      goto LABEL_21;
    }
  }

LABEL_19:
  v35 = 1;
LABEL_21:

  return v35;
}

- (unint64_t)hash
{
  v2 = [(AVAudioSessionPortDescription *)self UID];
  v3 = [v2 hash];

  return v3;
}

- (NSArray)channels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 9);
  objc_sync_exit(selfCopy);

  return v3;
}

- (AVAudioSessionDataSourceDescription)selectedDataSource
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = *(selfCopy->_impl + 11);
  objc_sync_exit(selfCopy);

  return v3;
}

- (AVAudioSessionDataSourceDescription)preferredDataSource
{
  v20 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  WeakRetained = objc_loadWeakRetained(impl);
  v5 = copyDataSourcePreference([WeakRetained opaqueSessionID], *(impl + 1));

  if (v5)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = *(impl + 10);
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          dataSourceID = [v11 dataSourceID];
          v13 = [v5 isEqualToNumber:dataSourceID];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setPreferredDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError
{
  v28[2] = *MEMORY[0x1E69E9840];
  v6 = dataSource;
  privateGetImplementation = [(AVAudioSessionPortDescription *)self privateGetImplementation];
  p_var0 = &privateGetImplementation->var0;
  if (v6)
  {
    v9 = *MEMORY[0x1E69B06A8];
    v27[0] = v9;
    privateGetID = [(AVAudioSessionPortDescription *)self privateGetID];
    v28[0] = privateGetID;
    v11 = *MEMORY[0x1E69B0698];
    v27[1] = v11;
    dataSourceID = [(AVAudioSessionDataSourceDescription *)v6 dataSourceID];
    v28[1] = dataSourceID;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v14 = MEMORY[0x1E69B0240];
  }

  else
  {
    if (!privateGetImplementation->var16)
    {
      v19 = 1;
      goto LABEL_12;
    }

    v9 = *MEMORY[0x1E69B06A8];
    v25[0] = v9;
    privateGetID = [(AVAudioSessionPortDescription *)self privateGetID];
    v26[0] = privateGetID;
    v11 = *MEMORY[0x1E69B0698];
    v25[1] = v11;
    dataSourceID = [p_var0[12] dataSourceID];
    v26[1] = dataSourceID;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
    v14 = MEMORY[0x1E69AFED8];
  }

  v15 = *v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v13];
  objc_storeStrong(p_var0 + 12, dataSource);
  WeakRetained = objc_loadWeakRetained(p_var0);
  AVAudioSessionGetXPCConnection(&v23, [WeakRetained opaqueSessionID]);

  v21 = v23;
  v22 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = objc_loadWeakRetained(p_var0);
  avas::client::SetPropertyXPC(&v21, [v18 opaqueSessionID], v15, v16, 1);

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  v19 = FormatNSErrorForReturn();
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

LABEL_12:
  return v19;
}

- (AVAudioSessionPortDescription)initWithRawPortDescriptionXPC:(id)c owningSession:(id)session
{
  v11 = *MEMORY[0x1E69E9840];
  cCopy = c;
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = AVAudioSessionPortDescription;
  if ([(AVAudioSessionPortDescription *)&v10 init])
  {
    operator new();
  }

  v8 = 0;

  return v8;
}

- (void)configureChannelsAndDataSources:(id)sources
{
  v39 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  privateGetImplementation = [(AVAudioSessionPortDescription *)self privateGetImplementation];
  v24 = *MEMORY[0x1E69B0650];
  v5 = [sourcesCopy objectForKey:?];
  v27 = *MEMORY[0x1E69B05D8];
  v6 = [sourcesCopy objectForKey:?];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v26 = v6;
  v8 = [AVAudioSessionChannelDescription privateCreateArray:v6 portUID:privateGetImplementation->var4];
  var13 = privateGetImplementation->var13;
  privateGetImplementation->var13 = v8;

  objc_sync_exit(selfCopy);
  v10 = *MEMORY[0x1E69B05F0];
  v29 = *MEMORY[0x1E69B0600];
  v25 = v10;
  v31 = [sourcesCopy objectForKey:v10];
  WeakRetained = objc_loadWeakRetained(&privateGetImplementation->var0);
  if ([WeakRetained allowAllBuiltInDataSources])
  {
    v32 = [sourcesCopy objectForKey:v29];
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v32, "count") + objc_msgSend(v31, "count")}];
  [v33 addObjectsFromArray:v31];
  if (v32)
  {
    [v33 addObjectsFromArray:v32];
  }

  if ([v33 count] == 1)
  {

    v33 = 0;
  }

  obj = selfCopy;
  objc_sync_enter(obj);
  var1 = privateGetImplementation->var1;
  v13 = objc_loadWeakRetained(&privateGetImplementation->var0);
  v14 = +[AVAudioSessionDataSourceDescription privateCreateArray:portID:sessionID:](AVAudioSessionDataSourceDescription, "privateCreateArray:portID:sessionID:", v33, var1, [v13 opaqueSessionID]);
  var14 = privateGetImplementation->var14;
  privateGetImplementation->var14 = v14;

  var15 = privateGetImplementation->var15;
  privateGetImplementation->var15 = 0;

  if (v5)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v17 = privateGetImplementation->var14;
    v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v18)
    {
      v19 = *v35;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          dataSourceID = [v21 dataSourceID];
          v23 = [dataSourceID isEqualToNumber:v5];

          if (v23)
          {
            objc_storeStrong(&privateGetImplementation->var15, v21);
            goto LABEL_19;
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v34 objects:v38 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  objc_sync_exit(obj);

  PortDescriptionImpl::ValidateRequiredFields(privateGetImplementation);
}

+ (id)privateCreateArray:(id)array owningSession:(id)session
{
  arrayCopy = array;
  sessionCopy = session;
  if (arrayCopy)
  {
    v7 = [arrayCopy count];
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
    if (v7)
    {
      for (i = 0; i != v7; ++i)
      {
        v10 = [arrayCopy objectAtIndex:i];
        v11 = [[AVAudioSessionPortDescription alloc] initWithRawPortDescriptionXPC:v10 owningSession:sessionCopy];
        if (v11)
        {
          [v8 insertObject:v11 atIndex:i];
        }
      }
    }

    v12 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v8];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  return v12;
}

@end