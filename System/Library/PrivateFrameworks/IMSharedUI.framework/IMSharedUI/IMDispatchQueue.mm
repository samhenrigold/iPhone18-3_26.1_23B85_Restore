@interface IMDispatchQueue
+ (id)serialQueueWithDispatchPriority:(int64_t)priority;
- (BOOL)containsOutstandingBlockForKey:(id)key;
- (id)_initWithDispatchAttr:(id)attr dispatchPriority:(int64_t)priority;
- (id)allKeysOfOutstandingBlocks;
- (int64_t)queuePriorityOfOutstandingBlockForKey:(id)key;
- (void)addBlock:(id)block withQueuePriority:(int64_t)priority forKey:(id)key;
- (void)dealloc;
- (void)removeAllOutstandingBlocks;
- (void)removeOutstandingBlockForKey:(id)key;
- (void)setQueuePriority:(int64_t)priority ofOutstandingBlockForKey:(id)key;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation IMDispatchQueue

- (void)dealloc
{
  objc_msgSend_setSuspended_(self, a2, 0, v3, v2);
  v5.receiver = self;
  v5.super_class = IMDispatchQueue;
  [(IMDispatchQueue *)&v5 dealloc];
}

+ (id)serialQueueWithDispatchPriority:(int64_t)priority
{
  v4 = [IMDispatchQueue alloc];
  v7 = objc_msgSend__initWithDispatchAttr_dispatchPriority_(v4, v5, 0, v6, priority);

  return v7;
}

- (id)_initWithDispatchAttr:(id)attr dispatchPriority:(int64_t)priority
{
  attrCopy = attr;
  v27.receiver = self;
  v27.super_class = IMDispatchQueue;
  v7 = [(IMDispatchQueue *)&v27 init];
  if (v7)
  {
    callBacks.version = 0;
    *&callBacks.retain = *(MEMORY[0x277CBF150] + 8);
    callBacks.copyDescription = *(MEMORY[0x277CBF150] + 24);
    callBacks.compare = _IMDispatchQueueBlockCompare;
    v8 = CFBinaryHeapCreate(0, 0, &callBacks, 0);
    objc_msgSend_setHeap_(v7, v9, v8, v11, v10);
    CFRelease(v8);
    v12 = dispatch_queue_create(0, attrCopy);
    v13 = dispatch_get_global_queue(priority, 0);
    dispatch_set_target_queue(v12, v13);

    objc_msgSend_setDispatchQueue_(v7, v14, v12, v16, v15);
    v17 = dispatch_queue_create(0, 0);
    objc_msgSend_setLockQueue_(v7, v18, v17, v20, v19);
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objc_msgSend_setDispatchQueueBlocks_(v7, v22, v21, v24, v23);
  }

  return v7;
}

- (void)addBlock:(id)block withQueuePriority:(int64_t)priority forKey:(id)key
{
  blockCopy = block;
  keyCopy = key;
  v14 = objc_msgSend_dispatchQueue(self, v10, v11, v13, v12);
  v19 = objc_msgSend_lockQueue(self, v15, v16, v18, v17);
  v24 = objc_msgSend_heap(self, v20, v21, v23, v22);
  v29 = objc_msgSend_dispatchQueueBlocks(self, v25, v26, v28, v27);
  v32 = v29;
  if (!v24 || !v29)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v30, *MEMORY[0x277CBE658], v31, @"Tried to add block for key %@ to a cancelled IMDispatchQueue.", keyCopy);
  }

  if (priority == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v30, *MEMORY[0x277CBE660], v31, @"Tried to add block for key %@ to IMDispatchQueue with priority NSNotFound, which is reserved.", keyCopy);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FC9D4;
  block[3] = &unk_279788F80;
  v49 = blockCopy;
  priorityCopy = priority;
  v45 = keyCopy;
  selfCopy = self;
  v33 = v32;
  v47 = v33;
  v34 = v24;
  v48 = v34;
  v35 = keyCopy;
  v36 = blockCopy;
  dispatch_async(v19, block);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_2547FCAA8;
  v40[3] = &unk_279788FD0;
  v41 = v19;
  v42 = v34;
  v43 = v33;
  v37 = v33;
  v38 = v34;
  v39 = v19;
  dispatch_async(v14, v40);
}

- (void)setQueuePriority:(int64_t)priority ofOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v11 = objc_msgSend_lockQueue(self, v7, v8, v10, v9);
  v16 = objc_msgSend_dispatchQueueBlocks(self, v12, v13, v15, v14);
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_2547FCBD0;
  v32 = sub_2547FCBFC;
  v33 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FCE20;
  block[3] = &unk_279788FA8;
  v17 = v16;
  v25 = v17;
  v18 = keyCopy;
  v26 = v18;
  v27 = &v28;
  dispatch_sync(v11, block);
  objc_msgSend_removeOutstandingBlockForKey_(self, v19, v18, v21, v20);
  objc_msgSend_addBlock_withQueuePriority_forKey_(self, v22, v29[5], v23, priority, v18);

  _Block_object_dispose(&v28, 8);
}

- (int64_t)queuePriorityOfOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v9 = objc_msgSend_lockQueue(self, v5, v6, v8, v7);
  v14 = objc_msgSend_dispatchQueueBlocks(self, v10, v11, v13, v12);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0x7FFFFFFFFFFFFFFFLL;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FCFA8;
  block[3] = &unk_279788FA8;
  v20 = v14;
  v21 = keyCopy;
  v22 = &v23;
  v15 = keyCopy;
  v16 = v14;
  dispatch_sync(v9, block);
  v17 = v24[3];

  _Block_object_dispose(&v23, 8);
  return v17;
}

- (id)allKeysOfOutstandingBlocks
{
  v6 = objc_msgSend_lockQueue(self, a2, v2, v4, v3);
  v11 = objc_msgSend_dispatchQueueBlocks(self, v7, v8, v10, v9);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2547FD134;
  v22 = sub_2547FD144;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2547FD14C;
  v15[3] = &unk_279788FF8;
  v16 = v11;
  v17 = &v18;
  v12 = v11;
  dispatch_sync(v6, v15);
  v13 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v13;
}

- (BOOL)containsOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v9 = objc_msgSend_lockQueue(self, v5, v6, v8, v7);
  v14 = objc_msgSend_dispatchQueueBlocks(self, v10, v11, v13, v12);
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FD2BC;
  block[3] = &unk_279788FA8;
  v20 = v14;
  v21 = keyCopy;
  v22 = &v23;
  v15 = keyCopy;
  v16 = v14;
  dispatch_sync(v9, block);
  v17 = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return v17;
}

- (void)removeOutstandingBlockForKey:(id)key
{
  keyCopy = key;
  v9 = objc_msgSend_lockQueue(self, v5, v6, v8, v7);
  v14 = objc_msgSend_dispatchQueueBlocks(self, v10, v11, v13, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2547FD3E8;
  v17[3] = &unk_279789020;
  v18 = v14;
  v19 = keyCopy;
  v15 = keyCopy;
  v16 = v14;
  dispatch_async(v9, v17);
}

- (void)removeAllOutstandingBlocks
{
  v6 = objc_msgSend_lockQueue(self, a2, v2, v4, v3);
  v11 = objc_msgSend_dispatchQueueBlocks(self, v7, v8, v10, v9);
  v16 = objc_msgSend_heap(self, v12, v13, v15, v14);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2547FD520;
  v19[3] = &unk_279789020;
  v20 = v16;
  v21 = v11;
  v17 = v11;
  v18 = v16;
  dispatch_async(v6, v19);
}

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended != suspended)
  {
    self->_suspended = suspended;
    dispatchQueue = self->_dispatchQueue;
    if (suspended)
    {
      dispatch_suspend(dispatchQueue);
    }

    else
    {
      dispatch_resume(dispatchQueue);
    }
  }
}

@end