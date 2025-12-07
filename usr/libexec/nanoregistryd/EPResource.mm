@interface EPResource
- (EPResource)initWithResourceManager:(id)manager andOwnerDelegate:(id)delegate;
- (EPResourceOwnerDelegate)ownerDelegate;
- (void)dealloc;
- (void)invalidate;
- (void)setAvailability:(unint64_t)availability withError:(id)error;
@end

@implementation EPResource

- (EPResource)initWithResourceManager:(id)manager andOwnerDelegate:(id)delegate
{
  managerCopy = manager;
  delegateCopy = delegate;
  v19.receiver = self;
  v19.super_class = EPResource;
  v9 = [(EPResource *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v11 = sub_1000A9948(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (v12)
    {
      v14 = sub_1000A9948(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        referenceCounter = [managerCopy referenceCounter];
        *buf = 138412802;
        v21 = v16;
        v22 = 2048;
        v23 = v10;
        v24 = 2048;
        v25 = referenceCounter;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "init %@[%p] manager refcount = %ld", buf, 0x20u);
      }
    }

    objc_storeStrong(&v10->_resourceManager, manager);
    objc_storeWeak(&v10->_ownerDelegate, delegateCopy);
  }

  return v10;
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    [(EPResourceManagerProtocol *)self->_resourceManager removeResource:self async:1];
  }

  v3.receiver = self;
  v3.super_class = EPResource;
  [(EPResource *)&v3 dealloc];
}

- (void)setAvailability:(unint64_t)availability withError:(id)error
{
  errorCopy = error;
  if (self->_availability != availability || (error = self->_error, error != errorCopy) && ([(NSError *)error isEqual:errorCopy]& 1) == 0)
  {
    self->_availability = availability;
    objc_storeStrong(&self->_error, error);
    queue = [(EPResourceManagerProtocol *)self->_resourceManager queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CDA50;
    block[3] = &unk_100175660;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)invalidate
{
  self->_invalidated = 1;
  v3 = sub_1000A9948(self);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v4)
  {
    v6 = sub_1000A9948(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = 138412546;
      v10 = v8;
      v11 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "invalidated %@[%p]", &v9, 0x16u);
    }
  }

  [(EPResourceManagerProtocol *)self->_resourceManager removeResource:self async:0];
}

- (EPResourceOwnerDelegate)ownerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ownerDelegate);

  return WeakRetained;
}

@end