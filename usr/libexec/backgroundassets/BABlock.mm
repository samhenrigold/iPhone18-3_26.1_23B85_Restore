@interface BABlock
- (BABlock)initWithToken:(id)token block:(id)block;
- (BOOL)executeWithSuccessfulDequeue:(BOOL)dequeue;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation BABlock

- (BABlock)initWithToken:(id)token block:(id)block
{
  tokenCopy = token;
  blockCopy = block;
  v15.receiver = self;
  v15.super_class = BABlock;
  v9 = [(BABlock *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, token);
    v11 = objc_retainBlock(blockCopy);
    block = v10->_block;
    v10->_block = v11;

    fireByTimer = v10->_fireByTimer;
    v10->_fireByTimer = 0;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (equalCopy == self)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ([(BABlock *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    token = [(BABlock *)v5 token];
    token2 = [(BABlock *)self token];
    v8 = [token isEqual:token2];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (unint64_t)hash
{
  token = [(BABlock *)self token];
  v3 = [token hash];

  return v3;
}

- (BOOL)executeWithSuccessfulDequeue:(BOOL)dequeue
{
  dequeueCopy = dequeue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  blockFired = [(BABlock *)selfCopy blockFired];
  if (blockFired)
  {
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy->_blockFired = 1;
    fireByTimer = [(BABlock *)selfCopy fireByTimer];

    if (fireByTimer)
    {
      fireByTimer2 = [(BABlock *)selfCopy fireByTimer];
      dispatch_source_cancel(fireByTimer2);
    }

    objc_sync_exit(selfCopy);

    block = [(BABlock *)selfCopy block];
    token = [(BABlock *)selfCopy token];
    (*(block + 16))(block, dequeueCopy, token);

    selfCopy = block;
  }

  return blockFired ^ 1;
}

@end