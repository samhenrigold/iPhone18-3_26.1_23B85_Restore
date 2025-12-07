@interface STUpdateWatchListRequest
- (STUpdateWatchListRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STUpdateWatchListRequest

- (STUpdateWatchListRequest)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = STUpdateWatchListRequest;
  v5 = [(AFSiriRequest *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_contentIdentifiersToAdd"];
    contentIdentifiersToAdd = v5->_contentIdentifiersToAdd;
    v5->_contentIdentifiersToAdd = v9;

    v11 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"_contentIdentifiersToRemove"];
    contentIdentifiersToRemove = v5->_contentIdentifiersToRemove;
    v5->_contentIdentifiersToRemove = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STUpdateWatchListRequest;
  coderCopy = coder;
  [(AFSiriRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contentIdentifiersToAdd forKey:{@"_contentIdentifiersToAdd", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_contentIdentifiersToRemove forKey:@"_contentIdentifiersToRemove"];
}

@end