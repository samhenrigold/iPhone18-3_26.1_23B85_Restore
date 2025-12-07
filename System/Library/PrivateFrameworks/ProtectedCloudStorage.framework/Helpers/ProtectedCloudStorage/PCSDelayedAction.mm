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
    v13 = sub_100014EFC(v12);
    v14 = dispatch_source_create(&_dispatch_source_type_data_add, 0, 0, v13);
    waitSource = v11->_waitSource;
    v11->_waitSource = v14;

    v16 = v11->_waitSource;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100014F40;
    v18[3] = &unk_100038B28;
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
    v5 = objc_retainBlock(action);
    actionOnTrigger = self->_actionOnTrigger;
    self->_actionOnTrigger = v5;

    _objc_release_x1(v5, actionOnTrigger);
  }
}

- (void)setHoldTransaction:(BOOL)transaction
{
  v5 = sub_100014EFC(self);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000152A0;
  v6[3] = &unk_100039210;
  v6[4] = self;
  transactionCopy = transaction;
  dispatch_sync(v5, v6);
}

- (void)trigger
{
  inited = objc_initWeak(&location, self);
  v4 = sub_100014EFC(inited);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015370;
  block[3] = &unk_100038F00;
  objc_copyWeak(&v6, &location);
  block[4] = self;
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end