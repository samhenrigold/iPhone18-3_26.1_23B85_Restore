@interface TransceiverWrapper
+ (id)withTransceiver:(id)transceiver;
- (BOOL)applyScript:(id)script ignoreSW:(BOOL)w error:(id *)error;
- (TransceiverWrapper)initWithTransceiver:(id)transceiver;
- (id)transceive:(id)transceive error:(id *)error;
- (id)transceiveAndCheckSW:(id)w inArray:(id)array keepingSW:(BOOL)sW error:(id *)error;
- (id)transceiveAndGetAllData:(id)data withGetMoreData:(id)moreData withMoreDataSW:(unsigned __int16)w withError:(id *)error;
- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length error:(id *)error;
- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length inArray:(id)array error:(id *)error;
- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length inArray:(id)array keepingSW:(BOOL)sW error:(id *)error;
- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length keepingSW:(BOOL)sW error:(id *)error;
- (void)dumpAPDUs:(id)us;
@end

@implementation TransceiverWrapper

- (TransceiverWrapper)initWithTransceiver:(id)transceiver
{
  transceiverCopy = transceiver;
  v9.receiver = self;
  v9.super_class = TransceiverWrapper;
  v6 = [(TransceiverWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_transceiver, transceiver);
    v7->_circbuff = CircularBufferInit(v7->_circBuffStorage, 0x1000uLL);
    v7->_isMultiOS = objc_opt_respondsToSelector() & 1;
  }

  return v7;
}

+ (id)withTransceiver:(id)transceiver
{
  transceiverCopy = transceiver;
  v4 = [[TransceiverWrapper alloc] initWithTransceiver:transceiverCopy];

  return v4;
}

- (id)transceive:(id)transceive error:(id *)error
{
  v17 = *MEMORY[0x277D85DE8];
  transceiveCopy = transceive;
  v12 = 62;
  v13 = &v12;
  v14 = 1;
  bytes = [transceiveCopy bytes];
  if ([transceiveCopy length] <= 0x300)
  {
    v7 = [transceiveCopy length];
  }

  else
  {
    v7 = 768;
  }

  v16 = v7;
  CircularBufferAddScattered(&self->_circbuff->var0, &v13, 2);
  transceiver = self->_transceiver;
  if (self->_isMultiOS)
  {
    [(SETransceiver *)transceiver transceive:transceiveCopy toOS:0 error:error];
  }

  else
  {
    [(SETransceiver *)transceiver transceive:transceiveCopy error:error];
  }
  v9 = ;
  v10 = v9;
  if (v9)
  {
    v12 = 60;
    v13 = &v12;
    v14 = 1;
    bytes = [v9 bytes];
    v16 = [v10 length];
    CircularBufferAddScattered(&self->_circbuff->var0, &v13, 2);
  }

  return v10;
}

- (void)dumpAPDUs:(id)us
{
  usCopy = us;
  circbuff = self->_circbuff;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__TransceiverWrapper_dumpAPDUs___block_invoke;
  v7[3] = &unk_278875210;
  v8 = usCopy;
  v6 = usCopy;
  CircularBufferDump(&circbuff->var0, v7);
}

uint64_t __32__TransceiverWrapper_dumpAPDUs___block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length error:(id *)error
{
  v7 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:w length:length freeWhenDone:0];
  v8 = [(TransceiverWrapper *)self transceiveAndCheckSW:v7 inArray:&unk_2843C73D0 keepingSW:0 error:error];

  return v8;
}

- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length inArray:(id)array error:(id *)error
{
  v10 = MEMORY[0x277CBEA90];
  arrayCopy = array;
  v12 = [v10 dataWithBytesNoCopy:w length:length freeWhenDone:0];
  v13 = [(TransceiverWrapper *)self transceiveAndCheckSW:v12 inArray:arrayCopy keepingSW:0 error:error];

  return v13;
}

- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length keepingSW:(BOOL)sW error:(id *)error
{
  sWCopy = sW;
  v9 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:w length:length freeWhenDone:0];
  v10 = [(TransceiverWrapper *)self transceiveAndCheckSW:v9 inArray:&unk_2843C73E8 keepingSW:sWCopy error:error];

  return v10;
}

- (id)transceiveBytesAndCheckSW:(const char *)w length:(unint64_t)length inArray:(id)array keepingSW:(BOOL)sW error:(id *)error
{
  sWCopy = sW;
  v12 = MEMORY[0x277CBEA90];
  arrayCopy = array;
  v14 = [v12 dataWithBytesNoCopy:w length:length freeWhenDone:0];
  v15 = [(TransceiverWrapper *)self transceiveAndCheckSW:v14 inArray:arrayCopy keepingSW:sWCopy error:error];

  return v15;
}

- (id)transceiveAndCheckSW:(id)w inArray:(id)array keepingSW:(BOOL)sW error:(id *)error
{
  sWCopy = sW;
  v50[1] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v11 = [(TransceiverWrapper *)self transceive:w error:error];
  v12 = v11;
  if (!v11)
  {
    v17 = ATLLogObject(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22EEF5000, v17, OS_LOG_TYPE_ERROR, "nil response", buf, 2u);
    }

    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"nil response"];
    v19 = v18;
    if (!error)
    {
      goto LABEL_22;
    }

    v20 = *error;
    v21 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v22 = *MEMORY[0x277CCA7E8];
      v47[0] = *MEMORY[0x277CCA450];
      v47[1] = v22;
      v48[0] = v18;
      v48[1] = v20;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v48;
      v25 = v47;
      v26 = 2;
    }

    else
    {
      v49 = *MEMORY[0x277CCA450];
      v50[0] = v18;
      v23 = MEMORY[0x277CBEAC0];
      v24 = v50;
      v25 = &v49;
      v26 = 1;
    }

    v37 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
    v38 = v21;
    v39 = 4;
    goto LABEL_21;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:GetSW(v11)];
  v14 = [arrayCopy containsObject:v13];

  if (v14)
  {
    if (sWCopy)
    {
      v16 = v12;
    }

    else
    {
      v16 = [v12 subdataWithRange:{0, objc_msgSend(v12, "length") - 2}];
    }

    v36 = v16;
    goto LABEL_23;
  }

  v27 = ATLLogObject(v15);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v46 = v12;
    _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_ERROR, "Unexpected SW %@", buf, 0xCu);
  }

  v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unexpected SW %@", v12];
  v19 = v28;
  if (error)
  {
    v29 = *error;
    v30 = MEMORY[0x277CCA9B8];
    if (*error)
    {
      v31 = *MEMORY[0x277CCA7E8];
      v41[0] = *MEMORY[0x277CCA450];
      v41[1] = v31;
      v42[0] = v28;
      v42[1] = v29;
      v32 = MEMORY[0x277CBEAC0];
      v33 = v42;
      v34 = v41;
      v35 = 2;
    }

    else
    {
      v43 = *MEMORY[0x277CCA450];
      v44 = v28;
      v32 = MEMORY[0x277CBEAC0];
      v33 = &v44;
      v34 = &v43;
      v35 = 1;
    }

    v37 = [v32 dictionaryWithObjects:v33 forKeys:v34 count:v35];
    v38 = v30;
    v39 = 5;
LABEL_21:
    *error = [v38 errorWithDomain:@"ATL" code:v39 userInfo:v37];
  }

LABEL_22:

  v36 = 0;
LABEL_23:

  return v36;
}

- (id)transceiveAndGetAllData:(id)data withGetMoreData:(id)moreData withMoreDataSW:(unsigned __int16)w withError:(id *)error
{
  wCopy = w;
  v23[2] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  moreDataCopy = moreData;
  v23[0] = &unk_2843C6C08;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:wCopy];
  v23[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

  v14 = [(TransceiverWrapper *)self transceiveAndCheckSW:dataCopy inArray:v13 keepingSW:1 error:error];
  if (v14)
  {
    v15 = v14;
    v16 = MEMORY[0x277CBEB28];
    v17 = [v14 subdataWithRange:{0, objc_msgSend(v14, "length") - 2}];
    v18 = [v16 dataWithData:v17];

    if (GetSW(v15) == wCopy)
    {
      while (1)
      {
        v19 = [(TransceiverWrapper *)self transceiveAndCheckSW:moreDataCopy inArray:v13 keepingSW:1 error:error];

        if (!v19)
        {
          break;
        }

        v20 = [v19 subdataWithRange:{0, objc_msgSend(v19, "length") - 2}];
        [v18 appendData:v20];

        v15 = v19;
        if (GetSW(v19) != wCopy)
        {
          goto LABEL_8;
        }
      }

      v21 = 0;
    }

    else
    {
      v19 = v15;
LABEL_8:
      v21 = v18;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)applyScript:(id)script ignoreSW:(BOOL)w error:(id *)error
{
  wCopy = w;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  scriptCopy = script;
  v9 = [scriptCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(scriptCopy);
        }

        v13 = [MEMORY[0x277CBEA90] dataWithHexString:{*(*(&v18 + 1) + 8 * i), v18}];
        if (wCopy)
        {
          v14 = [(TransceiverWrapper *)self transceive:v13 error:0];
        }

        else
        {
          v15 = [(TransceiverWrapper *)self transceiveAndCheckSW:v13 error:error];

          if (!v15)
          {
            v16 = 0;
            goto LABEL_13;
          }
        }
      }

      v10 = [scriptCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 1;
LABEL_13:

  return v16;
}

@end