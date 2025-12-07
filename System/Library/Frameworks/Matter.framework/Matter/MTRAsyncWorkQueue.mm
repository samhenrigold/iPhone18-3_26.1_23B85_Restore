@interface MTRAsyncWorkQueue
- (BOOL)hasDuplicateForTypeID:(unint64_t)d workItemData:(id)data;
- (MTRAsyncWorkQueue)initWithContext:(id)context width:(unint64_t)width;
- (id)description;
- (unint64_t)itemCount;
- (void)enqueueWorkItem:(id)item description:(id)description;
- (void)enqueueWorkItem:(id)item descriptionWithFormat:(id)format;
- (void)invalidate;
@end

@implementation MTRAsyncWorkQueue

- (MTRAsyncWorkQueue)initWithContext:(id)context width:(unint64_t)width
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MTRAsyncWorkQueue;
  v7 = [(MTRAsyncWorkQueue *)&v12 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_context, contextCopy);
    array = [MEMORY[0x277CBEB18] array];
    items = v8->_items;
    v8->_items = array;

    v8->_width = width;
  }

  return v8;
}

- (id)description
{
  sub_2393ADE68(&v5, self);
  os_unfair_lock_lock(&self->_lock);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@ context: %@, items count: %lu>", objc_opt_class(), v6, -[NSMutableArray count](self->_items, "count")];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)enqueueWorkItem:(id)item descriptionWithFormat:(id)format
{
  itemCopy = item;
  formatCopy = format;
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:formatCopy arguments:&v9];
  [(MTRAsyncWorkQueue *)self enqueueWorkItem:itemCopy description:v8];
}

- (void)enqueueWorkItem:(id)item description:(id)description
{
  v26 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  descriptionCopy = description;
  sub_2393ADE68(&v16, self);
  os_unfair_lock_lock(&self->_lock);
  if (itemCopy)
  {
    itemCopy[2] = 2;
  }

  [(NSMutableArray *)self->_items addObject:itemCopy];
  v8 = sub_2393D9044(0);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (descriptionCopy)
  {
    if (v9)
    {
      v10 = v17;
      v11 = [(NSMutableArray *)self->_items count];
      uniqueID = [itemCopy uniqueID];
      *buf = 138413058;
      v19 = v10;
      v20 = 2048;
      v21 = v11;
      v22 = 2048;
      v23 = uniqueID;
      v24 = 2112;
      v25 = descriptionCopy;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@, items count: %lu> enqueued work item [%llu]: %@", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "MTRAsyncWorkQueue<%@, items count: %lu> enqueued work item [%llu]: %@", v17, -[NSMutableArray count](self->_items, "count"), [itemCopy uniqueID], descriptionCopy);
    }
  }

  else
  {
    if (v9)
    {
      v13 = v17;
      v14 = [(NSMutableArray *)self->_items count];
      uniqueID2 = [itemCopy uniqueID];
      *buf = 138412802;
      v19 = v13;
      v20 = 2048;
      v21 = v14;
      v22 = 2048;
      v23 = uniqueID2;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@, items count: %lu> enqueued work item [%llu]", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0, 2, "MTRAsyncWorkQueue<%@, items count: %lu> enqueued work item [%llu]", v17, -[NSMutableArray count](self->_items, "count"), [itemCopy uniqueID]);
    }
  }

  sub_2393AD2E4(self, &v16);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)invalidate
{
  v21 = *MEMORY[0x277D85DE8];
  sub_2393ADE68(&v14, self);
  os_unfair_lock_lock(&self->_lock);
  v3 = sub_2393D9044(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v15;
    v5 = [(NSMutableArray *)self->_items count];
    *buf = 138412546;
    v18 = v4;
    v19 = 2048;
    v20 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "MTRAsyncWorkQueue<%@> invalidate %lu items", buf, 0x16u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0, 2, "MTRAsyncWorkQueue<%@> invalidate %lu items", v15, [(NSMutableArray *)self->_items count]);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = self->_items;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        sub_23952DE1C(*(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_items removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasDuplicateForTypeID:(unint64_t)d workItemData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  reverseObjectEnumerator = [(NSMutableArray *)self->_items reverseObjectEnumerator];
  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        duplicateCheckHandler = [v11 duplicateCheckHandler];
        if (duplicateCheckHandler)
        {
          if ([v11 duplicateTypeID] == d)
          {
            v15 = 0;
            (duplicateCheckHandler)[2](duplicateCheckHandler, dataCopy, &v15, &v15 + 1);
            if ((v15 & 0x100) != 0)
            {
              v13 = v15;

              goto LABEL_13;
            }
          }
        }
      }

      v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  os_unfair_lock_unlock(&self->_lock);
  return v13 & 1;
}

- (unint64_t)itemCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_items count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

@end