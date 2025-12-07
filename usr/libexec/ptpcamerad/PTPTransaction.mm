@interface PTPTransaction
- (PTPTransaction)initWithOperationRequestPacket:(id)packet txData:(id)data rxData:(id)rxData dataExpected:(BOOL)expected;
- (char)bufMutableBytes;
- (char)rxDataMutableBytes;
- (unsigned)bufSize;
- (unsigned)rxDataBufferSize;
- (void)dealloc;
@end

@implementation PTPTransaction

- (PTPTransaction)initWithOperationRequestPacket:(id)packet txData:(id)data rxData:(id)rxData dataExpected:(BOOL)expected
{
  expectedCopy = expected;
  packetCopy = packet;
  dataCopy = data;
  rxDataCopy = rxData;
  v25.receiver = self;
  v25.super_class = PTPTransaction;
  v14 = [(PTPTransaction *)&v25 init];
  v15 = v14;
  if (v14)
  {
    [(PTPTransaction *)v14 setDataExpected:expectedCopy];
    [(PTPTransaction *)v15 setDataReceived:0];
    [(PTPTransaction *)v15 setTxComplete:0];
    *&v15->_containerType = 0;
    v15->_responseReceived = 0;
    if (dataCopy)
    {
      objc_storeStrong(&v15->_txDataPacket, data);
    }

    if (rxDataCopy)
    {
      v15->_rxReadBuffer = 0;
      v16 = rxDataCopy;
      v17 = 0;
      rxDataBuffer = v15->_rxDataBuffer;
      v15->_rxDataBuffer = v16;
    }

    else
    {
      if (![(PTPTransaction *)v15 dataExpected])
      {
LABEL_9:
        v20 = [[PTPWrappedBytes alloc] initWithCapacity:0x4000];
        rxResponseBuffer = v15->_rxResponseBuffer;
        v15->_rxResponseBuffer = v20;

        objc_storeStrong(&v15->_requestPacket, packet);
        v22 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [packetCopy transactionID]);
        txID = v15->_txID;
        v15->_txID = v22;

        goto LABEL_10;
      }

      v15->_rxReadBuffer = malloc_type_malloc(0x100000uLL, 0x100004077774924uLL);
      v19 = [[PTPWrappedBytes alloc] initWithCapacity:0];
      rxDataBuffer = v15->_rxDataBuffer;
      v15->_rxDataBuffer = v19;
      v17 = 1;
    }

    v15->_rxCopyDataBuffer = v17;
    goto LABEL_9;
  }

LABEL_10:

  return v15;
}

- (unsigned)rxDataBufferSize
{
  if (self->_rxReadBuffer)
  {
    return 0x100000;
  }

  else
  {
    return [(PTPWrappedBytes *)self->_rxDataBuffer capacity:v2];
  }
}

- (char)rxDataMutableBytes
{
  if (self->_rxReadBuffer)
  {
    return self->_rxReadBuffer;
  }

  else
  {
    return [(PTPWrappedBytes *)self->_rxDataBuffer mutableBytes];
  }
}

- (char)bufMutableBytes
{
  if ([(PTPTransaction *)self dataExpected]&& ![(PTPTransaction *)self dataReceived])
  {
    if ([(PTPTransaction *)self dataExpected])
    {

      return [(PTPTransaction *)self rxDataMutableBytes];
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return [(PTPTransaction *)self rxResponseMutableBytes];
  }
}

- (unsigned)bufSize
{
  if ([(PTPTransaction *)self dataExpected]&& ![(PTPTransaction *)self dataReceived])
  {
    result = [(PTPTransaction *)self dataExpected];
    if (result)
    {

      return [(PTPTransaction *)self rxDataBufferSize];
    }
  }

  else
  {

    return [(PTPTransaction *)self rxResponseBufferSize];
  }

  return result;
}

- (void)dealloc
{
  rxReadBuffer = self->_rxReadBuffer;
  if (rxReadBuffer)
  {
    free(rxReadBuffer);
  }

  v4.receiver = self;
  v4.super_class = PTPTransaction;
  [(PTPTransaction *)&v4 dealloc];
}

@end