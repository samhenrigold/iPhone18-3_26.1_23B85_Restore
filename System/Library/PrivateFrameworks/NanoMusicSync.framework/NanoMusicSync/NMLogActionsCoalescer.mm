@interface NMLogActionsCoalescer
- (NMLogActionsCoalescer)initWithIdentifier:(id)identifier logCategory:(id)category;
- (id)_logMessageFromPendingLogActions:(id)actions includingPartNumber:(BOOL)number;
- (void)_addAction:(id)action toPendingActions:(id)actions limit:(unint64_t)limit;
- (void)_writeLogMessageFromActions:(id)actions includingPartNumber:(BOOL)number;
- (void)flush;
- (void)setMessageBufferLimit:(unint64_t)limit;
@end

@implementation NMLogActionsCoalescer

- (NMLogActionsCoalescer)initWithIdentifier:(id)identifier logCategory:(id)category
{
  identifierCopy = identifier;
  categoryCopy = category;
  v14.receiver = self;
  v14.super_class = NMLogActionsCoalescer;
  v9 = [(NMLogActionsCoalescer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_category, category);
    v10->_messageBufferLimit = 300;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:300];
    pendingLogActions = v10->_pendingLogActions;
    v10->_pendingLogActions = v11;
  }

  return v10;
}

- (void)setMessageBufferLimit:(unint64_t)limit
{
  if (self->_messageBufferLimit != limit)
  {
    self->_messageBufferLimit = limit;
    if ([(NSMutableArray *)self->_pendingLogActions count])
    {
      [(NMLogActionsCoalescer *)self _writeLogMessageFromActions:self->_pendingLogActions includingPartNumber:1];
    }

    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:self->_messageBufferLimit];
    pendingLogActions = self->_pendingLogActions;
    self->_pendingLogActions = v5;

    MEMORY[0x2821F96F8](v5, pendingLogActions);
  }
}

- (void)flush
{
  [(NMLogActionsCoalescer *)self _writeLogMessageFromActions:self->_pendingLogActions includingPartNumber:self->_partNumber != 0];
  [(NSMutableArray *)self->_pendingLogActions removeAllObjects];
  self->_partNumber = 0;
}

- (void)_addAction:(id)action toPendingActions:(id)actions limit:(unint64_t)limit
{
  actionCopy = action;
  actionsCopy = actions;
  if ([actionsCopy count] == limit)
  {
    [(NMLogActionsCoalescer *)self _writeLogMessageFromActions:actionsCopy includingPartNumber:1];
    [actionsCopy removeAllObjects];
  }

  [actionsCopy addObject:actionCopy];
}

- (id)_logMessageFromPendingLogActions:(id)actions includingPartNumber:(BOOL)number
{
  numberCopy = number;
  actionsCopy = actions;
  if (numberCopy)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@" (part #%lu) ", self->_partNumber];
  }

  else
  {
    v7 = &stru_286C836D8;
  }

  v8 = [actionsCopy valueForKey:@"logMessage"];
  v9 = [v8 componentsJoinedByString:@"\n"];

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@%@: <\n%@\n>", self->_prefix, self->_identifier, v7, v9];

  return v10;
}

- (void)_writeLogMessageFromActions:(id)actions includingPartNumber:(BOOL)number
{
  numberCopy = number;
  v12 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  category = self->_category;
  if (os_log_type_enabled(category, OS_LOG_TYPE_DEFAULT))
  {
    v8 = category;
    v9 = [(NMLogActionsCoalescer *)self _logMessageFromPendingLogActions:actionsCopy includingPartNumber:numberCopy];
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&dword_25B27B000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@", &v10, 0xCu);
  }

  if (numberCopy)
  {
    ++self->_partNumber;
  }
}

@end