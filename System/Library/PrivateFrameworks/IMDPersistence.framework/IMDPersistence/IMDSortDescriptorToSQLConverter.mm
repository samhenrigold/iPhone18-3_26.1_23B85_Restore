@interface IMDSortDescriptorToSQLConverter
- (IMDSortDescriptorToSQLConverter)initWithSortDescriptor:(id)descriptor keyPathsToColumns:(id)columns;
- (id)_columnWithSortDescriptor:(id)descriptor;
- (id)_orderByClauseWithSortDescriptor:(id)descriptor;
@end

@implementation IMDSortDescriptorToSQLConverter

- (id)_columnWithSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v8 = objc_msgSend_key(descriptorCopy, v5, v6, v7);

  if (v8)
  {
    v12 = objc_msgSend_keyPathsToColumns(self, v9, v10, v11);
    v16 = objc_msgSend_key(descriptorCopy, v13, v14, v15);
    v19 = objc_msgSend_objectForKeyedSubscript_(v12, v17, v16, v18);
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)_orderByClauseWithSortDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v8 = objc_msgSend_ascending(descriptorCopy, v5, v6, v7);
  v9 = @"DESC";
  if (v8)
  {
    v9 = @"ASC";
  }

  v10 = v9;
  v13 = objc_msgSend__columnWithSortDescriptor_(self, v11, descriptorCopy, v12);

  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@ %@", v15, v13, v10);

  return v16;
}

- (IMDSortDescriptorToSQLConverter)initWithSortDescriptor:(id)descriptor keyPathsToColumns:(id)columns
{
  descriptorCopy = descriptor;
  columnsCopy = columns;
  v16.receiver = self;
  v16.super_class = IMDSortDescriptorToSQLConverter;
  v8 = [(IMDSortDescriptorToSQLConverter *)&v16 init];
  v9 = v8;
  if (v8 && (objc_storeStrong(&v8->_keyPathsToColumns, columns), objc_msgSend__orderByClauseWithSortDescriptor_(v9, v10, descriptorCopy, v11), v12 = objc_claimAutoreleasedReturnValue(), expression = v9->_expression, v9->_expression = v12, expression, !v9->_expression))
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

@end