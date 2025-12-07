@interface RPNearbyActionV2Advertiser
- (id)description;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)setNearbyActionType:(unsigned __int8)type;
- (void)setTargetData:(id)data;
@end

@implementation RPNearbyActionV2Advertiser

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = objc_alloc_init(off_1001D4808());
  actionV2Advertiser = self->_actionV2Advertiser;
  self->_actionV2Advertiser = v5;

  [(CBAdvertiser *)self->_actionV2Advertiser setDispatchQueue:self->_dispatchQueue];
  [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2Type:self->_nearbyActionType];
  if (self->_targetData)
  {
    [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2Flags:1];
    [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2TargetData:self->_targetData];
  }

  [(CBAdvertiser *)self->_actionV2Advertiser setAdvertiseRate:60];
  [(CBAdvertiser *)self->_actionV2Advertiser setLabel:@"CLink"];
  v7 = self->_actionV2Advertiser;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10008FBB0;
  v9[3] = &unk_1001AC998;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CBAdvertiser *)v7 activateWithCompletion:v9];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1001D4798 <= 30)
  {
    if (dword_1001D4798 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_100123D8C(v3, v4, v5);
    }
  }

  [(CBAdvertiser *)self->_actionV2Advertiser invalidate];
  actionV2Advertiser = self->_actionV2Advertiser;
  self->_actionV2Advertiser = 0;
}

- (void)setNearbyActionType:(unsigned __int8)type
{
  typeCopy = type;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  nearbyActionType = self->_nearbyActionType;
  if (nearbyActionType == typeCopy)
  {
    return;
  }

  if (dword_1001D4798 <= 30)
  {
    if (dword_1001D4798 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      nearbyActionType = self->_nearbyActionType;
    }

    v6 = sub_10008FDDC(nearbyActionType);
    v7 = sub_10008FDDC(typeCopy);
    LogPrintF(&dword_1001D4798, "[RPNearbyActionV2Advertiser setNearbyActionType:]", 30, "BLE NearbyActionV2 advertiser action type updated %s -> %s\n", v6, v7);
  }

LABEL_6:
  self->_nearbyActionType = typeCopy;
  actionV2Advertiser = self->_actionV2Advertiser;

  [(CBAdvertiser *)actionV2Advertiser setNearbyActionV2Type:typeCopy];
}

- (void)setTargetData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v6 = self->_targetData;
  v7 = dataCopy;
  v10 = v7;
  if (v6 == v7)
  {

LABEL_12:
    v9 = v10;
    goto LABEL_13;
  }

  if ((v7 == 0) == (v6 != 0))
  {

LABEL_7:
    if (dword_1001D4798 <= 30 && (dword_1001D4798 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1001D4798, "[RPNearbyActionV2Advertiser setTargetData:]", 30, "BLE NearbyActionV2 advertiser target data updated <%.3@> -> <%.3@>\n", self->_targetData, v10);
    }

    objc_storeStrong(&self->_targetData, data);
    [(CBAdvertiser *)self->_actionV2Advertiser setNearbyActionV2TargetData:self->_targetData];
    goto LABEL_12;
  }

  v8 = [(NSData *)v6 isEqual:v7];

  v9 = v10;
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_13:
}

- (id)description
{
  v13 = 0;
  NSAppendPrintF(&v13, "RPNearbyActionV2Advertiser: %@", self->_actionV2Advertiser);
  v3 = v13;
  v12 = v3;
  v4 = sub_10008FDDC(self->_nearbyActionType);
  NSAppendPrintF(&v12, ", AT: %s ", v4);
  v5 = v12;

  targetData = self->_targetData;
  if (targetData)
  {
    v11 = v5;
    v7 = self->_targetData;
    v8 = targetData;
    NSAppendPrintF(&v11, ", TD: <%.3@> ", v7);
    v9 = v11;

    v5 = v9;
  }

  return v5;
}

@end