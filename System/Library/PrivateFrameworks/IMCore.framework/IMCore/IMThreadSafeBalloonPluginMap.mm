@interface IMThreadSafeBalloonPluginMap
- (IMThreadSafeBalloonPluginMap)initWithConcurrentDataQueue:(id)queue;
- (NSArray)allIdentifiers;
- (NSArray)allPlugins;
- (NSDictionary)dictionaryMapCopy;
- (id)pluginForIdentifier:(id)identifier;
- (unint64_t)count;
- (void)removePluginWithIdentifier:(id)identifier;
- (void)removePluginsWithIdentifiers:(id)identifiers;
- (void)setPlugin:(id)plugin forIdentifier:(id)identifier;
- (void)updateWithMap:(id)map;
@end

@implementation IMThreadSafeBalloonPluginMap

- (NSArray)allIdentifiers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259B00;
  v11 = sub_1A825AEAC;
  v12 = 0;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A825E744;
  v6[3] = &unk_1E7810D58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)dictionaryMapCopy
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259B00;
  v11 = sub_1A825AEAC;
  v12 = 0;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A825E48C;
  v6[3] = &unk_1E7810D58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)allPlugins
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259B00;
  v11 = sub_1A825AEAC;
  v12 = 0;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A825F3B0;
  v6[3] = &unk_1E7810D58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (IMThreadSafeBalloonPluginMap)initWithConcurrentDataQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = IMThreadSafeBalloonPluginMap;
  v6 = [(IMThreadSafeBalloonPluginMap *)&v10 init];
  if (v6)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    map = v6->_map;
    v6->_map = dictionary;

    objc_storeStrong(&v6->_dataQueue, queue);
  }

  return v6;
}

- (id)pluginForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1A8259B00;
  v16 = sub_1A825AEAC;
  v17 = 0;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82AA4F0;
  block[3] = &unk_1E7810CE0;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(dataQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setPlugin:(id)plugin forIdentifier:(id)identifier
{
  pluginCopy = plugin;
  identifierCopy = identifier;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A82AA634;
  block[3] = &unk_1E7810D08;
  block[4] = self;
  v12 = pluginCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = pluginCopy;
  dispatch_barrier_sync(dataQueue, block);
}

- (void)updateWithMap:(id)map
{
  mapCopy = map;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82AA73C;
  v7[3] = &unk_1E7810140;
  v8 = mapCopy;
  selfCopy = self;
  v6 = mapCopy;
  dispatch_barrier_sync(dataQueue, v7);
}

- (void)removePluginWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82AA8E0;
  v7[3] = &unk_1E7810140;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_barrier_sync(dataQueue, v7);
}

- (void)removePluginsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82AA9E8;
  v7[3] = &unk_1E7810140;
  v8 = identifiersCopy;
  selfCopy = self;
  v6 = identifiersCopy;
  dispatch_barrier_sync(dataQueue, v7);
}

- (unint64_t)count
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dataQueue = [(IMThreadSafeBalloonPluginMap *)self dataQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82AABD0;
  v6[3] = &unk_1E7810D58;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(dataQueue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

@end