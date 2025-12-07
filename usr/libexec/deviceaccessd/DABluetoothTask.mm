@interface DABluetoothTask
- (DABluetoothTask)init;
- (id)descriptionWithLevel:(int)level;
- (void)cancelTimer;
- (void)setTimerTimeout:(double)timeout queue:(id)queue handler:(id)handler;
@end

@implementation DABluetoothTask

- (DABluetoothTask)init
{
  v6.receiver = self;
  v6.super_class = DABluetoothTask;
  v2 = [(DABluetoothTask *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)setTimerTimeout:(double)timeout queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  [(DABluetoothTask *)self cancelTimer];
  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queueCopy);

  objc_storeStrong(&self->taskTimer, v10);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10002BBD8;
  v12[3] = &unk_100059508;
  v12[4] = self;
  v13 = handlerCopy;
  v11 = handlerCopy;
  dispatch_source_set_event_handler(v10, v12);
  if (dword_1000607A0 <= 30 && (dword_1000607A0 != -1 || _LogCategory_Initialize()))
  {
    sub_10003679C(timeout);
  }

  CUDispatchTimerSet();
  dispatch_activate(v10);
}

- (void)cancelTimer
{
  taskTimer = self->taskTimer;
  if (taskTimer)
  {
    v5 = taskTimer;
    dispatch_source_cancel(v5);
    v4 = self->taskTimer;
    self->taskTimer = 0;
  }
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v28 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v27 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v27, &v28, "%@", v5);
    v6 = v27;
  }

  v26 = v6;
  CUAppendF(&v26, &v28, "appConfirmsAuth %d", self->_appConfirmsAuth);
  v7 = v26;

  v25 = v7;
  CUAppendF(&v25, &v28, "btuuid %@", self->_bluetoothUUID);
  v8 = v25;

  v24 = v8;
  btOperation = self->_btOperation;
  if (btOperation > 19)
  {
    if (btOperation != 20)
    {
      if (btOperation == 30)
      {
        v10 = @"DABluetoothOperationForget";
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v10 = @"DABluetoothOperationPersist";
  }

  else
  {
    if (btOperation)
    {
      if (btOperation == 10)
      {
        v10 = @"DABluetoothOperationPair";
        goto LABEL_17;
      }

LABEL_14:
      v10 = @"?";
      goto LABEL_17;
    }

    v10 = @"DABluetoothOperationUnknown";
  }

LABEL_17:
  CUAppendF(&v24, &v28, "operation %@", v10);
  v11 = v24;

  v23 = v11;
  CUAppendF(&v23, &v28, "CTKD %d", self->_pairCTKD);
  v12 = v23;

  v22 = v12;
  CUAppendF(&v22, &v28, "pairedWithCTKD %d", self->_pairedCTKD);
  v13 = v22;

  v21 = v13;
  CUAppendF(&v21, &v28, "displayName %@", self->_displayName);
  v14 = v21;

  taskTimeout = self->_taskTimeout;
  v20 = v14;
  CUAppendF(&v20, &v28, "taskTimeout %@ seconds", taskTimeout);
  v15 = v20;

  v16 = &stru_10005A2C8;
  if (v15)
  {
    v16 = v15;
  }

  v17 = v16;

  return v17;
}

@end