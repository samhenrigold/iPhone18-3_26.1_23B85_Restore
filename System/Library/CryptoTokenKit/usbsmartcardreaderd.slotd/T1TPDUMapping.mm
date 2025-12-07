@interface T1TPDUMapping
- (T1TPDUMapping)initWithTransmitter:(id)transmitter autoIfs:(BOOL)ifs ifs:(unsigned __int8)a5 redundancyCode:(char)code bwt:(float)bwt;
- (id)secure:(id)secure APDU:(id)u;
- (id)transmit:(id)transmit;
- (id)transmitCCIDMessage:(id)message maxPayload:(unint64_t)payload transmitted:(id)transmitted;
- (void)fillQueue:(id)queue request:(id)request ifs:(unsigned __int8)ifs;
- (void)handleIBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data;
- (void)handleRBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data;
- (void)handleSBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue abortBlock:(id)abortBlock resynchBlock:(id)resynchBlock;
@end

@implementation T1TPDUMapping

- (T1TPDUMapping)initWithTransmitter:(id)transmitter autoIfs:(BOOL)ifs ifs:(unsigned __int8)a5 redundancyCode:(char)code bwt:(float)bwt
{
  codeCopy = code;
  v9 = a5;
  ifsCopy = ifs;
  transmitterCopy = transmitter;
  v13 = sub_100008B80(transmitterCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v18 = ifsCopy;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = codeCopy;
    v23 = 2048;
    bwtCopy = bwt;
    _os_log_debug_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "T1TPDUMapping initWithTransmitter autoIFS: %d IFS: %d RC: %d BWT %f", buf, 0x1Eu);
  }

  v16.receiver = self;
  v16.super_class = T1TPDUMapping;
  v14 = [(APDUMapping *)&v16 initWithTransmitter:transmitterCopy];

  if (v14)
  {
    *(&v14->super._wt + 6) = ifsCopy;
    v14->_cardSequence = v9;
    LOBYTE(v14->_bwt) = codeCopy;
    *&v14->_deactivated = bwt;
    BYTE1(v14->_bwt) = [T1TPDUBlock nodeAddressWithSource:0 andDestination:0];
  }

  return v14;
}

- (id)transmitCCIDMessage:(id)message maxPayload:(unint64_t)payload transmitted:(id)transmitted
{
  transmittedCopy = transmitted;
  v9 = [CCIDMessageView create:111 withPayload:message];
  [v9 setWLevelParameter:0];
  [v9 setBBWI:0];
  WeakRetained = objc_loadWeakRetained(&self->super._transmitter);
  v11 = WeakRetained;
  if (payload)
  {
    v12 = payload + 5;
  }

  else
  {
    v12 = 0;
  }

  v13 = [WeakRetained transmitAndReceive:v9 maxPayload:v12 outTimeout:0 inTimeout:0 transmitted:transmittedCopy];

  messageType = [v13 messageType];
  if (messageType == 128)
  {
    aPayload = [v13 aPayload];
  }

  else
  {
    v16 = sub_100008B80(messageType);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100016444();
    }

    aPayload = 0;
  }

  return aPayload;
}

- (void)fillQueue:(id)queue request:(id)request ifs:(unsigned __int8)ifs
{
  ifsCopy = ifs;
  queueCopy = queue;
  requestCopy = request;
  if ([requestCopy length] <= ifsCopy)
  {
    v24 = *(&self->super._wt + 4);
    *(&self->super._wt + 4) = v24 + 1;
    v21 = [T1InformationBlock informationBlockWithNad:BYTE1(self->_bwt) sequence:v24 & 1 moreData:0 informationField:requestCopy redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v21];
  }

  else
  {
    v9 = ifsCopy;
    v10 = +[NSMutableArray array];
    [requestCopy length];
    v11 = 0;
    v12 = 0;
    v26 = v10;
    do
    {
      v13 = *(&self->super._wt + 4);
      *(&self->super._wt + 4) = v13 + 1;
      v14 = &v9[v12];
      v15 = [requestCopy length];
      v16 = v9;
      v17 = v15;
      v18 = BYTE1(self->_bwt);
      if (v15 <= &v9[v12])
      {
        v16 = [requestCopy length] + v11;
      }

      v19 = [requestCopy subdataWithRange:{v12, v16}];
      v20 = [T1InformationBlock informationBlockWithNad:v18 sequence:v13 & 1 moreData:v17 > v14 informationField:v19 redundancyCode:SLOBYTE(self->_bwt)];

      v21 = v26;
      [v26 addObject:v20];

      v11 -= v9;
      v12 = v14;
    }

    while ([requestCopy length] >= v14);
    reverseObjectEnumerator = [v26 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    [queueCopy enqueueArray:allObjects];
  }
}

- (void)handleIBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data
{
  blockCopy = block;
  queueCopy = queue;
  dataCopy = data;
  v13 = sub_100008B80(dataCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000164E8();
  }

  sequence = [blockCopy sequence];
  v15 = *(&self->super._wt + 5);
  *(&self->super._wt + 5) = v15 + 1;
  if (sequence != (v15 & 1))
  {
    v16 = sub_100008B80(sequence);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10001651C();
    }

    ++*(&self->super._wt + 5);
  }

  if (ackBlock)
  {
    v17 = sub_100008B80([queueCopy dequeueBlock]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      sub_100016550();
    }
  }

  if ([blockCopy lengthByte])
  {
    informationField = [blockCopy informationField];
    if (informationField)
    {
      [dataCopy appendData:informationField];
    }

    else
    {
      v19 = sub_100008B80(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_100016584();
      }
    }
  }

  if ([blockCopy moreData])
  {
    v20 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v20];

    v22 = sub_100008B80(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      sub_1000165C0();
    }
  }
}

- (void)handleRBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue resultData:(id)data
{
  blockCopy = block;
  ackBlockCopy = ackBlock;
  queueCopy = queue;
  v12 = sub_100008B80(queueCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000165F4();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = ackBlockCopy;
    moreData = [v13 moreData];
    sequence = [v13 sequence];
    sequence2 = [blockCopy sequence];
    if (moreData)
    {
      if (sequence != sequence2)
      {
        v17 = sub_100008B80([queueCopy dequeueBlock]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          sub_10001665C();
        }

LABEL_14:
      }
    }

    else if (sequence != sequence2)
    {
      v20 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:2 redundancyCode:SLOBYTE(self->_bwt)];
      [queueCopy enqueueBlock:v20];

      v17 = sub_100008B80(v21);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100016628();
      }

      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (!ackBlockCopy)
  {
    v18 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v18];

    v13 = sub_100008B80(v19);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000165C0();
    }

    goto LABEL_15;
  }

LABEL_16:
}

- (void)handleSBlock:(id)block ackBlock:(id)ackBlock queue:(id)queue abortBlock:(id)abortBlock resynchBlock:(id)resynchBlock
{
  blockCopy = block;
  queueCopy = queue;
  abortBlockCopy = abortBlock;
  resynchBlockCopy = resynchBlock;
  v15 = sub_100008B80(resynchBlockCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sub_100016690();
  }

  type = [blockCopy type];
  operation = [blockCopy operation];
  if (type)
  {
    if (operation == 1)
    {
      self->_cardSequence = [blockCopy uint8Value];
      v18 = sub_100008B80([queueCopy dequeueBlock]);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1000167A0();
      }
    }

    else if ([blockCopy operation] == 2)
    {
      v23 = abortBlockCopy[2](abortBlockCopy);
      v18 = sub_100008B80(v23);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_10001676C();
      }
    }

    else
    {
      operation2 = [blockCopy operation];
      if (operation2)
      {
        v18 = sub_100008B80(operation2);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000166C4();
        }
      }

      else
      {
        dequeueBlock = [queueCopy dequeueBlock];
        v32 = resynchBlockCopy[2](resynchBlockCopy);
        v18 = sub_100008B80(v32);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_100016738();
        }
      }
    }

LABEL_27:

    goto LABEL_28;
  }

  if (operation == 3)
  {
    v19 = BYTE1(self->_bwt);
    informationField = [blockCopy informationField];
    v21 = [T1SupervisoryBlock supervisoryBlockWithNad:v19 operation:3 type:1 informationField:informationField redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v21];

    v18 = sub_100008B80(v22);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000168B8(blockCopy);
    }

    goto LABEL_27;
  }

  if ([blockCopy operation] == 1)
  {
    self->_cardSequence = [blockCopy uint8Value];
    v24 = BYTE1(self->_bwt);
    informationField2 = [blockCopy informationField];
    v26 = [T1SupervisoryBlock supervisoryBlockWithNad:v24 operation:1 type:1 informationField:informationField2 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v26];

    v18 = sub_100008B80(v27);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10001683C(blockCopy);
    }

    goto LABEL_27;
  }

  if ([blockCopy operation] == 2)
  {
    abortBlockCopy[2](abortBlockCopy);
    v29 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:2 type:1 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v29];

    v18 = sub_100008B80(v30);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_100016808();
    }

    goto LABEL_27;
  }

  if (![blockCopy operation])
  {
    resynchBlockCopy[2](resynchBlockCopy);
    v33 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:0 type:1 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
    [queueCopy enqueueBlock:v33];

    v18 = sub_100008B80(v34);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_1000167D4();
    }

    goto LABEL_27;
  }

LABEL_28:
}

- (id)transmit:(id)transmit
{
  transmitCopy = transmit;
  v5 = sub_100008B80(transmitCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100016934();
  }

  v48 = [[APDU alloc] initWithData:transmitCopy];
  v6 = +[NSMutableData data];
  v7 = objc_alloc_init(FIFOQueue);
  v8 = v7;
  if (self->_sequence == 1)
  {
    v9 = sub_100008B80(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100016968();
    }
  }

  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = sub_10000AECC;
  v61[3] = &unk_1000247D8;
  v47 = v6;
  v62 = v47;
  v10 = v8;
  v63 = v10;
  selfCopy = self;
  v44 = transmitCopy;
  v65 = v44;
  v11 = objc_retainBlock(v61);
  v59[0] = _NSConcreteStackBlock;
  v59[1] = 3221225472;
  v59[2] = sub_10000AF24;
  v59[3] = &unk_100024800;
  v59[4] = self;
  v12 = v10;
  v60 = v12;
  v45 = objc_retainBlock(v59);
  v46 = v11;
  (v11[2])(v11);
  if ([(FIFOQueue *)v12 count])
  {
    v14 = 0;
    *&v13 = 138543362;
    v43 = v13;
    while (1)
    {
      if (self->_sequence)
      {
        goto LABEL_52;
      }

      ++self->_transmissionCounter;
      if ((*(&self->super._wt + 6) & 1) == 0 && (*(&self->super._wt + 7) & 1) == 0)
      {
        v15 = BYTE1(self->_bwt);
        v16 = [NSData dataWithBytes:&self->_cardSequence length:1];
        v17 = [T1SupervisoryBlock supervisoryBlockWithNad:v15 operation:1 type:0 informationField:v16 redundancyCode:SLOBYTE(self->_bwt)];

        v19 = sub_100008B80(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          *buf = v43;
          v67 = v17;
          _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "Requesting IFS %{public}@", buf, 0xCu);
        }

        [(FIFOQueue *)v12 enqueueBlock:v17];
        *(&self->super._wt + 7) = 1;
      }

      firstBlock = [(FIFOQueue *)v12 firstBlock];
      needAck = [firstBlock needAck];
      if ((needAck & 1) == 0)
      {
        needAck = [(FIFOQueue *)v12 dequeueBlock];
      }

      v22 = sub_100008B80(needAck);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v67 = firstBlock;
        _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, ">>> block: %@", buf, 0xCu);
      }

      data = [firstBlock data];
      maxPayload = [(APDU *)v48 maxPayload];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10000AF7C;
      v56[3] = &unk_100024800;
      v25 = firstBlock;
      v57 = v25;
      selfCopy2 = self;
      v26 = [(T1TPDUMapping *)self transmitCCIDMessage:data maxPayload:maxPayload transmitted:v56];

      v55 = 0;
      v27 = +[T1TPDUBlock blockWithData:redundacyCode:sequence:rcError:](T1TPDUBlock, "blockWithData:redundacyCode:sequence:rcError:", v26, SLOBYTE(self->_bwt), [v25 sequence], &v55);
      v28 = sub_100008B80(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v67 = v27;
        _os_log_debug_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "<<< block: %@", buf, 0xCu);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        firstBlock2 = [(FIFOQueue *)v12 firstBlock];
        [(T1TPDUMapping *)self handleRBlock:v27 ackBlock:firstBlock2 queue:v12 resultData:v47];
        goto LABEL_27;
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        firstBlock2 = [(FIFOQueue *)v12 firstBlock];
        [(T1TPDUMapping *)self handleSBlock:v27 ackBlock:firstBlock2 queue:v12 abortBlock:v46 resynchBlock:v45];
        goto LABEL_27;
      }

      if (v14 == 5)
      {
        if (self->_transmissionCounter >= 4)
        {
          v33 = sub_100008B80(isKindOfClass);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            sub_1000169A4(&v49, v50);
          }

          self->_sequence = 1;
          v14 = 6;
          goto LABEL_28;
        }

LABEL_45:
        ++v14;
        firstBlock3 = [(FIFOQueue *)v12 firstBlock];
        objc_opt_class();
        v37 = objc_opt_isKindOfClass();

        if ((v37 & 1) == 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(FIFOQueue *)v12 enqueueBlock:v25];
          }

          else
          {
            if (v55)
            {
              v38 = 1;
            }

            else
            {
              v38 = 2;
            }

            v39 = [T1ReadyBlock readyBlockWithNad:BYTE1(self->_bwt) sequence:*(&self->super._wt + 5) & 1 status:v38 redundancyCode:SLOBYTE(self->_bwt)];
            [(FIFOQueue *)v12 enqueueBlock:v39];
          }
        }

        goto LABEL_28;
      }

      if (v14 != 2)
      {
        goto LABEL_45;
      }

      transmissionCounter = self->_transmissionCounter;
      if (transmissionCounter == 3)
      {
        v32 = sub_100008B80(isKindOfClass);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_1000169FC(&v53, v54);
        }

        self->_sequence = 1;
      }

      else
      {
        if (transmissionCounter < 4)
        {
          goto LABEL_45;
        }

        v34 = sub_100008B80(isKindOfClass);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          sub_1000169D0(&v51, v52);
        }

        v35 = [T1SupervisoryBlock supervisoryBlockWithNad:BYTE1(self->_bwt) operation:0 type:0 informationField:0 redundancyCode:SLOBYTE(self->_bwt)];
        [(FIFOQueue *)v12 enqueueBlock:v35];
      }

      v14 = 3;
LABEL_28:

      if (![(FIFOQueue *)v12 count])
      {
        goto LABEL_52;
      }
    }

    firstBlock2 = [(FIFOQueue *)v12 firstBlock];
    [(T1TPDUMapping *)self handleIBlock:v27 ackBlock:firstBlock2 queue:v12 resultData:v47];
LABEL_27:

    v14 = 0;
    goto LABEL_28;
  }

LABEL_52:
  if (self->_sequence)
  {
    v40 = 0;
  }

  else
  {
    v40 = v47;
  }

  v41 = v40;

  return v40;
}

- (id)secure:(id)secure APDU:(id)u
{
  secureCopy = secure;
  uCopy = u;
  v8 = sub_100008B80(uCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_100016A28();
  }

  v9 = objc_alloc_init(FIFOQueue);
  v26 = uCopy;
  [(T1TPDUMapping *)self fillQueue:v9 request:uCopy ifs:self->_cardSequence];
  dequeueBlock = [(FIFOQueue *)v9 dequeueBlock];
  [secureCopy setNodeAddressByte:{objc_msgSend(dequeueBlock, "nodeAddressByte")}];
  [secureCopy setProtocolControlByte:{objc_msgSend(dequeueBlock, "protocolControlByte")}];
  [secureCopy setLengthByte:{objc_msgSend(dequeueBlock, "lengthByte")}];
  v27 = secureCopy;
  buffer = [secureCopy buffer];
  v12 = [NSMutableData dataWithData:buffer];

  informationField = [dequeueBlock informationField];
  [v12 appendData:informationField];

  v14 = [CCIDMessageView create:105 withPayload:v12];
  [v14 setWLevelParameter:0];
  [v14 setBBWI:0];
  WeakRetained = objc_loadWeakRetained(&self->super._transmitter);
  v16 = [WeakRetained transmitAndReceive:v14 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

  v28 = 6;
  dequeueBlock2 = [(FIFOQueue *)v9 dequeueBlock];

  if (dequeueBlock2)
  {
    do
    {
      BYTE1(v28) = [dequeueBlock2 nodeAddressByte];
      BYTE2(v28) = [dequeueBlock2 protocolControlByte];
      HIBYTE(v28) = [dequeueBlock2 lengthByte];
      v18 = [NSMutableData dataWithBytes:&v28 length:4];

      informationField2 = [dequeueBlock2 informationField];
      [v18 appendData:informationField2];

      v20 = [CCIDMessageView create:105 withPayload:v18];

      [v20 setWLevelParameter:0];
      [v20 setBBWI:0];
      v21 = objc_loadWeakRetained(&self->super._transmitter);
      v22 = [v21 transmitAndReceive:v20 maxPayload:0 outTimeout:0 inTimeout:&off_100027330 transmitted:0];

      dequeueBlock3 = [(FIFOQueue *)v9 dequeueBlock];

      dequeueBlock2 = dequeueBlock3;
      v16 = v22;
      v14 = v20;
      v12 = v18;
    }

    while (dequeueBlock3);
  }

  else
  {
    v18 = v12;
    v20 = v14;
    v22 = v16;
  }

  aPayload = [v22 aPayload];

  return aPayload;
}

@end