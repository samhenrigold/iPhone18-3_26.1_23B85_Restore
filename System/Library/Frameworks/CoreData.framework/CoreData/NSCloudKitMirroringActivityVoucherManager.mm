@interface NSCloudKitMirroringActivityVoucherManager
- (NSCloudKitMirroringActivityVoucherManager)init;
- (id)_vouchersForEventType:(uint64_t)type;
- (id)usableVoucherForEventType:(int64_t)type;
- (unint64_t)countVouchers;
- (void)addVoucher:(id)voucher;
- (void)dealloc;
- (void)expireVoucher:(id)voucher;
- (void)expireVouchersForEventType:(int64_t)type;
@end

@implementation NSCloudKitMirroringActivityVoucherManager

- (NSCloudKitMirroringActivityVoucherManager)init
{
  v4.receiver = self;
  v4.super_class = NSCloudKitMirroringActivityVoucherManager;
  v2 = [(NSCloudKitMirroringActivityVoucherManager *)&v4 init];
  if (v2)
  {
    v2->_vouchersByEventType = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (void)dealloc
{
  self->_vouchersByEventType = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringActivityVoucherManager;
  [(NSCloudKitMirroringActivityVoucherManager *)&v3 dealloc];
}

- (unint64_t)countVouchers
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  vouchersByEventType = self->_vouchersByEventType;
  v4 = [(NSMutableDictionary *)vouchersByEventType countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v11;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(vouchersByEventType);
      }

      v6 += [-[NSMutableDictionary objectForKey:](self->_vouchersByEventType objectForKey:{*(*(&v10 + 1) + 8 * i)), "count"}];
    }

    v5 = [(NSMutableDictionary *)vouchersByEventType countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v5);
  return v6;
}

- (void)addVoucher:(id)voucher
{
  v4 = -[NSCloudKitMirroringActivityVoucherManager _vouchersForEventType:](self, [voucher eventType]);
  [v4 addObject:voucher];
}

- (id)_vouchersForEventType:(uint64_t)type
{
  if (!type)
  {
    return 0;
  }

  v4 = [*(type + 8) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a2)}];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [*(type + 8) setObject:v4 forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", a2)}];
  }

  return v4;
}

- (void)expireVoucher:(id)voucher
{
  v4 = -[NSCloudKitMirroringActivityVoucherManager _vouchersForEventType:](self, [voucher eventType]);
  [v4 removeObject:voucher];
}

- (void)expireVouchersForEventType:(int64_t)type
{
  v3 = [(NSCloudKitMirroringActivityVoucherManager *)self _vouchersForEventType:type];
  [v3 removeAllObjects];
}

- (id)usableVoucherForEventType:(int64_t)type
{
  v12 = *MEMORY[0x1E69E9840];
  if ((type - 1) >= 2)
  {
    if (type)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        v10 = 138412290;
        v11 = [NSPersistentCloudKitContainerEvent eventTypeString:type];
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Is there a new event type: %@\n", &v10, 0xCu);
      }

      v8 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v9 = [NSPersistentCloudKitContainerEvent eventTypeString:type];
        v10 = 138412290;
        v11 = v9;
        _os_log_fault_impl(&dword_18565F000, v8, OS_LOG_TYPE_FAULT, "CoreData: Is there a new event type: %@", &v10, 0xCu);
      }

      return 0;
    }

    else
    {
      result = [-[NSMutableDictionary objectForKey:](self->_vouchersByEventType objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 0)), "lastObject"}];
      if (!result)
      {
        result = [(NSCloudKitMirroringActivityVoucherManager *)self usableVoucherForEventType:2];
        if (!result)
        {

          return [(NSCloudKitMirroringActivityVoucherManager *)self usableVoucherForEventType:1];
        }
      }
    }
  }

  else
  {
    v5 = -[NSMutableDictionary objectForKey:](self->_vouchersByEventType, "objectForKey:", [MEMORY[0x1E696AD98] numberWithInteger:type]);

    return [v5 lastObject];
  }

  return result;
}

@end