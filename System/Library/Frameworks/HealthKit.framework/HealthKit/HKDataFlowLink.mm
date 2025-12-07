@interface HKDataFlowLink
- (HKDataFlowLink)initWithProcessor:(id)processor sourceProtocol:(id)protocol destinationProtocol:(id)destinationProtocol loggingCategory:(id)category;
- (HKDataFlowLinkProcessor)processor;
- (id)allDestinationProcessors;
- (id)allSourceProcessors;
- (id)description;
- (id)destinationProcessorsConformingToProtocol:(id)protocol;
- (void)addDestination:(id)destination;
- (void)addSource:(id)source;
- (void)destination:(id)destination didAddDownstreamDestination:(id)downstreamDestination;
- (void)removeDestination:(id)destination;
- (void)removeSource:(id)source;
- (void)sendToDestinationProcessors:(id)processors;
- (void)source:(id)source didAddUpstreamSource:(id)upstreamSource;
@end

@implementation HKDataFlowLink

- (HKDataFlowLink)initWithProcessor:(id)processor sourceProtocol:(id)protocol destinationProtocol:(id)destinationProtocol loggingCategory:(id)category
{
  processorCopy = processor;
  protocolCopy = protocol;
  destinationProtocolCopy = destinationProtocol;
  categoryCopy = category;
  v21.receiver = self;
  v21.super_class = HKDataFlowLink;
  v14 = [(HKDataFlowLink *)&v21 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_processor, processorCopy);
    objc_storeStrong(&v15->_sourceProtocol, protocol);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    sources = v15->_sources;
    v15->_sources = weakObjectsHashTable;

    objc_storeStrong(&v15->_destinationProtocol, destinationProtocol);
    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    destinations = v15->_destinations;
    v15->_destinations = weakObjectsHashTable2;

    objc_storeStrong(&v15->_category, category);
    v15->_lock._os_unfair_lock_opaque = 0;
  }

  return v15;
}

- (void)addSource:(id)source
{
  v35 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  processor = [sourceCopy processor];
  v6 = [processor conformsToProtocol:self->_sourceProtocol];

  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    _HKInitializeLogging(v9, v10);
    category = self->_category;
    if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v31 = 2114;
      v32 = sourceCopy;
      _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Added source %{public}@", buf, 0x16u);
    }

    [(NSHashTable *)self->_sources addObject:sourceCopy];
    allObjects = [(NSHashTable *)self->_destinations allObjects];
    os_unfair_lock_unlock(&self->_lock);
    [sourceCopy addDestination:self];
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = objc_loadWeakRetained(&self->_processor);
      [v15 dataFlowLink:self didAddSource:sourceCopy direct:1];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = allObjects;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v24 + 1) + 8 * i) source:self didAddUpstreamSource:{sourceCopy, v24}];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v18);
    }
  }

  else
  {
    _HKInitializeLogging(v7, v8);
    v21 = self->_category;
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_16;
    }

    sourceProtocol = self->_sourceProtocol;
    v16 = v21;
    v23 = NSStringFromProtocol(sourceProtocol);
    *buf = 138543874;
    selfCopy2 = self;
    v31 = 2114;
    v32 = sourceCopy;
    v33 = 2114;
    v34 = v23;
    _os_log_fault_impl(&dword_19197B000, v16, OS_LOG_TYPE_FAULT, "%{public}@: Cannot add source %{public}@ because it does not conform to expected protocol %{public}@", buf, 0x20u);
  }

LABEL_16:
}

- (void)removeSource:(id)source
{
  v12 = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  [sourceCopy removeDestination:self];
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging(v5, v6);
  category = self->_category;
  if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = sourceCopy;
    _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Removed source %{public}@", &v8, 0x16u);
  }

  [(NSHashTable *)self->_sources removeObject:sourceCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)source:(id)source didAddUpstreamSource:(id)upstreamSource
{
  sourceCopy = source;
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_processor);
    [v7 dataFlowLink:self didAddSource:sourceCopy direct:0];
  }
}

- (id)allSourceProcessors
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_sources allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [allObjects hk_map:&__block_literal_global_84];

  return v4;
}

- (id)allDestinationProcessors
{
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_destinations allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v4 = [allObjects hk_map:&__block_literal_global_8];

  return v4;
}

- (id)destinationProcessorsConformingToProtocol:(id)protocol
{
  v23 = *MEMORY[0x1E69E9840];
  protocolCopy = protocol;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_destinations allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __60__HKDataFlowLink_destinationProcessorsConformingToProtocol___block_invoke;
  v20[3] = &unk_1E7380998;
  v7 = protocolCopy;
  v21 = v7;
  v8 = [allObjects hk_map:v20];
  [v6 addObjectsFromArray:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * i) destinationProcessorsConformingToProtocol:{v7, v16}];
        [v6 addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v11);
  }

  return v6;
}

id __60__HKDataFlowLink_destinationProcessorsConformingToProtocol___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 processor];
  if ([v4 conformsToProtocol:*(a1 + 32)])
  {
    v5 = [v3 processor];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)sendToDestinationProcessors:(id)processors
{
  v17 = *MEMORY[0x1E69E9840];
  processorsCopy = processors;
  os_unfair_lock_lock(&self->_lock);
  allObjects = [(NSHashTable *)self->_destinations allObjects];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = allObjects;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        processor = [*(*(&v12 + 1) + 8 * v10) processor];
        if (processor)
        {
          processorsCopy[2](processorsCopy, processor);
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)addDestination:(id)destination
{
  v29 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  processor = [destinationCopy processor];
  v6 = [processor conformsToProtocol:self->_destinationProtocol];

  if (v6)
  {
    os_unfair_lock_lock(&self->_lock);
    _HKInitializeLogging(v7, v8);
    category = self->_category;
    if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy = self;
      v27 = 2114;
      v28 = destinationCopy;
      _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Added destination %{public}@", buf, 0x16u);
    }

    [(NSHashTable *)self->_destinations addObject:destinationCopy];
    allObjects = [(NSHashTable *)self->_sources allObjects];
    os_unfair_lock_unlock(&self->_lock);
    WeakRetained = objc_loadWeakRetained(&self->_processor);
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = objc_loadWeakRetained(&self->_processor);
      [v13 dataFlowLink:self didAddDestination:destinationCopy direct:1];
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = allObjects;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * i) destination:self didAddDownstreamDestination:{destinationCopy, v20}];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v19 = self->_category;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      [HKDataFlowLink addDestination:v19];
    }
  }
}

- (void)removeDestination:(id)destination
{
  v12 = *MEMORY[0x1E69E9840];
  destinationCopy = destination;
  os_unfair_lock_lock(&self->_lock);
  _HKInitializeLogging(v5, v6);
  category = self->_category;
  if (os_log_type_enabled(category, OS_LOG_TYPE_INFO))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = destinationCopy;
    _os_log_impl(&dword_19197B000, category, OS_LOG_TYPE_INFO, "%{public}@: Removed destination %{public}@", &v8, 0x16u);
  }

  [(NSHashTable *)self->_destinations removeObject:destinationCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)destination:(id)destination didAddDownstreamDestination:(id)downstreamDestination
{
  downstreamDestinationCopy = downstreamDestination;
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_processor);
    [v7 dataFlowLink:self didAddDestination:downstreamDestinationCopy direct:0];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  WeakRetained = objc_loadWeakRetained(&self->_processor);
  weakRetained = [v3 stringWithFormat:@"<HKDataFlowLink:%p [%@]>", self, WeakRetained];

  return weakRetained;
}

- (HKDataFlowLinkProcessor)processor
{
  WeakRetained = objc_loadWeakRetained(&self->_processor);

  return WeakRetained;
}

@end