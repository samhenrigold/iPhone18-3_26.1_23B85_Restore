@interface FilterTier
- (id)entryForQuery:(id)query;
- (void)setCap:(unint64_t)cap downsampleRatio:(unint64_t)ratio forQuery:(id)query;
@end

@implementation FilterTier

- (id)entryForQuery:(id)query
{
  queryCopy = query;
  v5 = [(FilterTier *)self keyForChildren:queryCopy];
  if (!v5 || (-[FilterTier childTiers](self, "childTiers"), v6 = objc_claimAutoreleasedReturnValue(), [v6 objectForKeyedSubscript:v5], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7) || (objc_msgSend(v7, "entryForQuery:", queryCopy), downsampleEntry = objc_claimAutoreleasedReturnValue(), v7, !downsampleEntry))
  {
    downsampleEntry = [(FilterTier *)self downsampleEntry];
  }

  return downsampleEntry;
}

- (void)setCap:(unint64_t)cap downsampleRatio:(unint64_t)ratio forQuery:(id)query
{
  queryCopy = query;
  v8 = [(FilterTier *)self keyForChildren:?];
  if (v8)
  {
    childTiers = [(FilterTier *)self childTiers];
    newChildInstance = [childTiers objectForKeyedSubscript:v8];

    if (!newChildInstance)
    {
      newChildInstance = [(FilterTier *)self newChildInstance];
      childTiers2 = [(FilterTier *)self childTiers];
      [childTiers2 setObject:newChildInstance forKeyedSubscript:v8];
    }

    [(SRDownsampleEntry *)newChildInstance setCap:cap downsampleRatio:ratio forQuery:queryCopy];
  }

  else
  {
    newChildInstance = [[SRDownsampleEntry alloc] initWithCap:cap downsampleRatio:ratio];
    [(FilterTier *)self setDownsampleEntry:newChildInstance];
  }
}

@end