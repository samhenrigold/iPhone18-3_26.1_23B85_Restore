@interface PCSDelayedAction
- (PCSDelayedAction)initWithLabel:(id)label delay:(unint64_t)delay operationQueue:(id)queue;
- (void)setAction:(id)action;
- (void)setHoldTransaction:(BOOL)transaction;
- (void)trigger;
@end

@implementation PCSDelayedAction

- (PCSDelayedAction)initWithLabel:(id)label delay:(unint64_t)delay operationQueue:(id)queue
{
  labelCopy = label;
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = PCSDelayedAction;
  v10 = [(PCSDelayedAction *)&v21 init];
  v11 = v10;
  if (v10)
  {
    [(PCSDelayedAction *)v10 setLabel:labelCopy];
    objc_initWeak(&location, v11);
    objc_storeStrong(&v11->_operationQueue, queue);
    v11->_delayInSeconds = delay;
    v13 = sub_10000E158(v12);
    v14 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v13);
    waitSource = v11->_waitSource;
    v11->_waitSource = v14;

    v16 = v11->_waitSource;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000E19C;
    v18[3] = &unk_100018998;
    objc_copyWeak(&v19, &location);
    dispatch_source_set_event_handler(v16, v18);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)setAction:(id)action
{
  if (!self->_running)
  {
    self->_actionOnTrigger = objc_retainBlock(action);

    _objc_release_x1();
  }
}

- (void)setHoldTransaction:(BOOL)transaction
{
  v5 = sub_10000E158(self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000E4FC;
  v6[3] = &unk_100018E60;
  v6[4] = self;
  transactionCopy = transaction;
  dispatch_sync(v5, v6);
}

- (void)trigger
{
  inited = objc_initWeak(&location, self);
  v4 = sub_10000E158(inited);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E5CC;
  block[3] = &unk_100018D48;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end