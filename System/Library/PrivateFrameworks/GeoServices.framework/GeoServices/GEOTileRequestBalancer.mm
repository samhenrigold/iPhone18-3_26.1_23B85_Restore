@interface GEOTileRequestBalancer
- (__wrap_iter<(anonymous)_next_requester;
- (void)_pruneEmptyRequesters;
- (void)_startOperations;
@end

@implementation GEOTileRequestBalancer

- (__wrap_iter<(anonymous)_next_requester
{
  requesters = [(GEOTileRequestBalancer *)self requesters];
  v3 = requesters[1];
  v4.var0 = *requesters;
  if (*requesters != v3)
  {
    v5 = requesters;
    for (i = v4.var0 + 24; i != v3; i += 24)
    {
      highestPriority = [*(v4.var0 + 1) highestPriority];
      if (highestPriority < [*(i + 1) highestPriority])
      {
        v4.var0 = i;
      }
    }

    highestPriority2 = [*(v4.var0 + 1) highestPriority];
    v4.var0 = *v5;
    if (*v5 != v5[1])
    {
      v9 = highestPriority2;
      v10 = *v5;
      do
      {
        if ([*(v4.var0 + 1) highestPriority] == v9 && objc_msgSend(*(v4.var0 + 1), "count"))
        {
          operator new();
        }

        v4.var0 = (v4.var0 + 24);
        v10 = (v10 + 24);
      }

      while (v4.var0 != v5[1]);
    }
  }

  return v4;
}

- (void)_startOperations
{
  requesters = [(GEOTileRequestBalancer *)self requesters];
  [(GEOTileRequestBalancer *)self _pruneEmptyRequesters];
  v4 = *requesters;
  v5 = requesters[1];
  if (*requesters == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v6 += *(v4 + 16);
      v4 += 24;
    }

    while (v4 != v5);
  }

  maxRunningOperationsCount = self->_maxRunningOperationsCount;
  if (maxRunningOperationsCount > v6)
  {

    [(GEOTileRequestBalancer *)self _startOperationsWithAvailableCount:maxRunningOperationsCount - v6];
  }
}

- (void)_pruneEmptyRequesters
{
  requesters = [(GEOTileRequestBalancer *)self requesters];
  v3 = *requesters;
  v4 = requesters[1];
  if (*requesters != v4)
  {
    while (1)
    {
      WeakRetained = objc_loadWeakRetained(v3);

      if (!WeakRetained)
      {
        break;
      }

      v3 += 24;
      if (v3 == v4)
      {
        v3 = v4;
        goto LABEL_11;
      }
    }

    if (v3 != v4)
    {
      for (i = v3 + 24; i != v4; i += 24)
      {
        v7 = objc_loadWeakRetained(i);

        if (v7)
        {
          v8 = objc_loadWeakRetained(i);
          objc_storeWeak(v3, v8);

          v9 = *(i + 8);
          *(i + 8) = 0;
          v10 = *(v3 + 8);
          *(v3 + 8) = v9;

          *(v3 + 16) = *(i + 16);
          v3 += 24;
        }
      }
    }
  }

LABEL_11:
  v11 = requesters[1];
}

@end