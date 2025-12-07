@interface BMStoreStreamPruningBridge
- (BMStoreStreamPruningBridge)initWithStreamIdentifier:(id)identifier domain:(unint64_t)domain user:(unsigned int)user;
@end

@implementation BMStoreStreamPruningBridge

- (BMStoreStreamPruningBridge)initWithStreamIdentifier:(id)identifier domain:(unint64_t)domain user:(unsigned int)user
{
  v5 = *&user;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = BMStoreStreamPruningBridge;
  v9 = [(BMStoreStreamPruningBridge *)&v13 init];
  if (v9)
  {
    v10 = [[BMComputeTombstonePropagator alloc] initWithStreamIdentifier:identifierCopy domain:domain user:v5];
    computeTombstonePropagator = v9->_computeTombstonePropagator;
    v9->_computeTombstonePropagator = v10;
  }

  return v9;
}

@end