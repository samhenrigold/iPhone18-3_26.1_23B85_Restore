@interface MSPSharedTripCapabilityFetchingPeer
- (NSOrderedSet)requestedHandles;
- (id)_requestedHandles;
- (id)removeRequestedHandles:(id)handles;
- (void)updateRequestedHandles:(id)handles added:(id *)added removed:(id *)removed;
@end

@implementation MSPSharedTripCapabilityFetchingPeer

- (id)_requestedHandles
{
  requestedHandles = self->_requestedHandles;
  if (!requestedHandles)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v5 = self->_requestedHandles;
    self->_requestedHandles = v4;

    requestedHandles = self->_requestedHandles;
  }

  return requestedHandles;
}

- (NSOrderedSet)requestedHandles
{
  _requestedHandles = [(MSPSharedTripCapabilityFetchingPeer *)self _requestedHandles];
  v3 = [_requestedHandles copy];

  return v3;
}

- (void)updateRequestedHandles:(id)handles added:(id *)added removed:(id *)removed
{
  v23 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  if ([handlesCopy count] || self->_requestedHandles)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB40]) initWithArray:handlesCopy];
    [v9 minusOrderedSet:self->_requestedHandles];
    if (added)
    {
      *added = [v9 copy];
    }

    v10 = [(NSMutableOrderedSet *)self->_requestedHandles set];
    v11 = [v10 mutableCopy];

    v12 = [MEMORY[0x277CBEB98] setWithArray:handlesCopy];
    [v11 minusSet:v12];

    if (removed)
    {
      v13 = [v11 copy];
      *removed = v13;
    }

    v14 = MSPGetSharedTripCapabilityFetchingLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138478339;
      v18 = handlesCopy;
      v19 = 2113;
      v20 = v9;
      v21 = 2113;
      v22 = v11;
      _os_log_impl(&dword_25813A000, v14, OS_LOG_TYPE_DEBUG, "[Peer] Updated contacts: %{private}@\n\tAdded: %{private}@\n\tRemoved: %{private}@", &v17, 0x20u);
    }

    _requestedHandles = [(MSPSharedTripCapabilityFetchingPeer *)self _requestedHandles];
    [_requestedHandles removeAllObjects];

    _requestedHandles2 = [(MSPSharedTripCapabilityFetchingPeer *)self _requestedHandles];
    [_requestedHandles2 addObjectsFromArray:handlesCopy];
  }
}

- (id)removeRequestedHandles:(id)handles
{
  v16 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  if ([handlesCopy count] || self->_requestedHandles)
  {
    v5 = [MEMORY[0x277CBEB98] setWithArray:handlesCopy];
    v6 = [(NSMutableOrderedSet *)self->_requestedHandles set];
    v7 = [v6 mutableCopy];

    [(NSMutableOrderedSet *)v7 intersectSet:v5];
    v8 = MSPGetSharedTripCapabilityFetchingLog([(NSMutableOrderedSet *)self->_requestedHandles minusSet:v7]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138477827;
      v15 = v7;
      _os_log_impl(&dword_25813A000, v8, OS_LOG_TYPE_DEBUG, "[Peer] Removing requested contacts %{private}@", &v14, 0xCu);
    }

    v9 = [(NSMutableOrderedSet *)self->_requestedHandles count];
    if (v9)
    {
      v10 = MSPGetSharedTripCapabilityFetchingLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        requestedHandles = self->_requestedHandles;
        v14 = 138477827;
        v15 = requestedHandles;
        _os_log_impl(&dword_25813A000, v10, OS_LOG_TYPE_DEBUG, "[Peer] Still waiting for %{private}@", &v14, 0xCu);
      }
    }

    v12 = [(NSMutableOrderedSet *)v7 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end