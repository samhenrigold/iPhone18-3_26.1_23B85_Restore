@interface _ANEChainingRequest
+ (id)chainingRequestWithInputs:(id)inputs outputSets:(id)sets lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1;
- (BOOL)validate;
- (_ANEChainingRequest)initWithCoder:(id)coder;
- (_ANEChainingRequest)initWithInputs:(id)inputs outputs:(id)outputs lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)validate;
@end

@implementation _ANEChainingRequest

- (_ANEChainingRequest)initWithInputs:(id)inputs outputs:(id)outputs lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1
{
  inputsCopy = inputs;
  outputsCopy = outputs;
  idCopy = id;
  symbolIdCopy = symbolId;
  indexCopy = index;
  eventsCopy = events;
  handleCopy = handle;
  delayCopy = delay;
  poolIdCopy = poolId;
  v30.receiver = self;
  v30.super_class = _ANEChainingRequest;
  v19 = [(_ANEChainingRequest *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputBuffer, inputs);
    objc_storeStrong(&v20->_outputSets, outputs);
    objc_storeStrong(&v20->_loopbackInputSymbolIndex, id);
    objc_storeStrong(&v20->_loopbackOutputSymbolIndex, symbolId);
    objc_storeStrong(&v20->_procedureIndex, index);
    objc_storeStrong(&v20->_signalEvents, events);
    objc_storeStrong(&v20->_transactionHandle, handle);
    objc_storeStrong(&v20->_fwEnqueueDelay, delay);
    objc_storeStrong(&v20->_memoryPoolId, poolId);
  }

  return v20;
}

+ (id)chainingRequestWithInputs:(id)inputs outputSets:(id)sets lbInputSymbolId:(id)id lbOutputSymbolId:(id)symbolId procedureIndex:(id)index signalEvents:(id)events transactionHandle:(id)handle fwEnqueueDelay:(id)self0 memoryPoolId:(id)self1
{
  poolIdCopy = poolId;
  delayCopy = delay;
  handleCopy = handle;
  eventsCopy = events;
  indexCopy = index;
  symbolIdCopy = symbolId;
  idCopy = id;
  setsCopy = sets;
  inputsCopy = inputs;
  v27 = [[self alloc] initWithInputs:inputsCopy outputs:setsCopy lbInputSymbolId:idCopy lbOutputSymbolId:symbolIdCopy procedureIndex:indexCopy signalEvents:eventsCopy transactionHandle:handleCopy fwEnqueueDelay:delayCopy memoryPoolId:poolIdCopy];

  return v27;
}

- (BOOL)validate
{
  v51 = *MEMORY[0x1E69E9840];
  inputBuffer = [(_ANEChainingRequest *)self inputBuffer];
  v5 = [inputBuffer count];

  outputSets = [(_ANEChainingRequest *)self outputSets];
  v7 = [outputSets count];

  if (v5 && v7)
  {
    if (v5 > 0xFF)
    {
      v8 = +[_ANELog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_ANEChainingRequest validate];
      }

      goto LABEL_15;
    }

    aSelector = a2;
    v46 = v7;
    v9 = 0;
    do
    {
      inputBuffer2 = [(_ANEChainingRequest *)self inputBuffer];
      v11 = [inputBuffer2 objectAtIndexedSubscript:v9];
      symbolIndex = [v11 symbolIndex];
      unsignedIntegerValue = [symbolIndex unsignedIntegerValue];

      if (unsignedIntegerValue >= 0xFF)
      {
        v8 = +[_ANELog common];
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_15;
        }

        loopbackInputSymbolIndex2 = NSStringFromSelector(aSelector);
        inputBuffer3 = [(_ANEChainingRequest *)self inputBuffer];
        v35 = [inputBuffer3 objectAtIndexedSubscript:v9];
        *buf = 138413314;
        v48 = loopbackInputSymbolIndex2;
        v49 = 1024;
        *v50 = v9;
        *&v50[4] = 2112;
        *&v50[6] = v35;
        *&v50[14] = 2048;
        *&v50[16] = unsignedIntegerValue;
        *&v50[24] = 1024;
        *&v50[26] = 254;
        _os_log_error_impl(&dword_1AD246000, v8, OS_LOG_TYPE_ERROR, "%@: inputBuffer[%u]=%@ symbolIndex=%lu exceeds kANERequestMaxSymbolIndex=%d", buf, 0x2Cu);
LABEL_34:

LABEL_35:
        goto LABEL_15;
      }

      ++v9;
    }

    while (v9 < v5);
    if (v7 > 0xC)
    {
      v8 = +[_ANELog common];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_ANEChainingRequest validate];
      }

      goto LABEL_15;
    }

    v15 = 0;
    while (2)
    {
      outputSets2 = [(_ANEChainingRequest *)self outputSets];
      v17 = [outputSets2 objectAtIndexedSubscript:v15];
      outputBuffer = [v17 outputBuffer];
      v19 = [outputBuffer count];

      if (v19)
      {
        if (v19 > 0x100)
        {
          v8 = +[_ANELog common];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [_ANEChainingRequest validate];
          }
        }

        else
        {
          v20 = 0;
          do
          {
            outputSets3 = [(_ANEChainingRequest *)self outputSets];
            v22 = [outputSets3 objectAtIndexedSubscript:v15];

            if (!v22)
            {
              v8 = +[_ANELog common];
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                [(_ANEChainingRequest *)aSelector validate];
              }

              goto LABEL_15;
            }

            outputSets4 = [(_ANEChainingRequest *)self outputSets];
            v24 = [outputSets4 objectAtIndexedSubscript:v15];
            outputBuffer2 = [v24 outputBuffer];
            v26 = [outputBuffer2 objectAtIndexedSubscript:v20];
            symbolIndex2 = [v26 symbolIndex];
            unsignedIntegerValue2 = [symbolIndex2 unsignedIntegerValue];

            if (unsignedIntegerValue2 >= 0xFF)
            {
              v8 = +[_ANELog common];
              if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_15;
              }

              loopbackInputSymbolIndex2 = NSStringFromSelector(aSelector);
              inputBuffer3 = [(_ANEChainingRequest *)self outputSets];
              v35 = [inputBuffer3 objectAtIndexedSubscript:v15];
              outputBuffer3 = [v35 outputBuffer];
              v37 = [outputBuffer3 objectAtIndexedSubscript:v20];
              *buf = 138413314;
              v48 = loopbackInputSymbolIndex2;
              v49 = 1024;
              *v50 = v15;
              *&v50[4] = 2112;
              *&v50[6] = v37;
              *&v50[14] = 2048;
              *&v50[16] = unsignedIntegerValue2;
              *&v50[24] = 1024;
              *&v50[26] = 254;
              _os_log_error_impl(&dword_1AD246000, v8, OS_LOG_TYPE_ERROR, "%@: outputIndexArray[%u]=%@ symbolIndex=%lu exceeds kANERequestMaxSymbolIndex=%d", buf, 0x2Cu);

              goto LABEL_34;
            }

            ++v20;
          }

          while (v20 < v19);
          v15 = (v15 + 1);
          if (v15 < v46)
          {
            continue;
          }

          loopbackInputSymbolIndex = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
          v30 = [loopbackInputSymbolIndex count];

          loopbackOutputSymbolIndex = [(_ANEChainingRequest *)self loopbackOutputSymbolIndex];
          v32 = [loopbackOutputSymbolIndex count];

          if (v30 != v32)
          {
            v8 = +[_ANELog framework];
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            loopbackInputSymbolIndex2 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
            inputBuffer3 = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
            *buf = 138413058;
            v48 = loopbackInputSymbolIndex2;
            v49 = 2112;
            *v50 = inputBuffer3;
            *&v50[8] = 2048;
            *&v50[10] = v30;
            *&v50[18] = 2048;
            *&v50[20] = v32;
            v38 = "loopbackInputSymbolIndexCount and loopbackOutputSymbolIndexCount size mismatch. loopbackInputSymbolIndex = %@ : loopbackOutputSymbolIndex = %@ loopbackInputSymbolIndex.count = %lu : loopbackOutputSymbolIndex.count = %lu";
            v39 = v8;
            v40 = 42;
            goto LABEL_42;
          }

          if (v30 >= 0x101)
          {
            v8 = +[_ANELog common];
            if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              [_ANEChainingRequest validate];
            }

            break;
          }

          procedureIndex = [(_ANEChainingRequest *)self procedureIndex];
          unsignedIntegerValue3 = [procedureIndex unsignedIntegerValue];

          if (unsignedIntegerValue3 >= 0x81)
          {
            v8 = +[_ANELog common];
            if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
            {
              break;
            }

            loopbackInputSymbolIndex2 = NSStringFromSelector(aSelector);
            inputBuffer3 = [(_ANEChainingRequest *)self procedureIndex];
            *buf = 138413058;
            v48 = loopbackInputSymbolIndex2;
            v49 = 2112;
            *v50 = inputBuffer3;
            *&v50[8] = 2048;
            *&v50[10] = unsignedIntegerValue3;
            *&v50[18] = 1024;
            *&v50[20] = 128;
            v38 = "%@: self.procedureIndex=%@ length=%lu exceeds kANEMaxProcedures=%d";
            v39 = v8;
            v40 = 38;
LABEL_42:
            _os_log_error_impl(&dword_1AD246000, v39, OS_LOG_TYPE_ERROR, v38, buf, v40);
            goto LABEL_35;
          }

          signalEvents = [(_ANEChainingRequest *)self signalEvents];
          v44 = [signalEvents count];

          if (v44 < 0x101)
          {
            return 1;
          }

          v8 = +[_ANELog common];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [_ANEChainingRequest validate];
          }
        }
      }

      else
      {
        v8 = +[_ANELog framework];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(_ANEChainingRequest *)v8 validate];
        }
      }

      break;
    }
  }

  else
  {
    v8 = +[_ANELog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_ANEChainingRequest *)v5 validate];
    }
  }

LABEL_15:

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  inputBuffer = [(_ANEChainingRequest *)self inputBuffer];
  outputSets = [(_ANEChainingRequest *)self outputSets];
  transactionHandle = [(_ANEChainingRequest *)self transactionHandle];
  procedureIndex = [(_ANEChainingRequest *)self procedureIndex];
  v10 = [v3 stringWithFormat:@"%@: { inputBuffer=%@  outputSets=%@ ; transactionHandle=%@ ; procedureIndex=%@ }", v5, inputBuffer, outputSets, transactionHandle, procedureIndex];;

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  inputBuffer = [(_ANEChainingRequest *)self inputBuffer];
  [coderCopy encodeObject:inputBuffer forKey:@"inputs"];

  outputSets = [(_ANEChainingRequest *)self outputSets];
  [coderCopy encodeObject:outputSets forKey:@"outputs"];

  loopbackInputSymbolIndex = [(_ANEChainingRequest *)self loopbackInputSymbolIndex];
  [coderCopy encodeObject:loopbackInputSymbolIndex forKey:@"loopbackInputs"];

  loopbackOutputSymbolIndex = [(_ANEChainingRequest *)self loopbackOutputSymbolIndex];
  [coderCopy encodeObject:loopbackOutputSymbolIndex forKey:@"loopbackOutputs"];

  procedureIndex = [(_ANEChainingRequest *)self procedureIndex];
  [coderCopy encodeObject:procedureIndex forKey:@"procedureIndex"];

  signalEvents = [(_ANEChainingRequest *)self signalEvents];
  [coderCopy encodeObject:signalEvents forKey:@"signalEvents"];

  transactionHandle = [(_ANEChainingRequest *)self transactionHandle];
  [coderCopy encodeObject:transactionHandle forKey:@"transactionHandle"];

  fwEnqueueDelay = [(_ANEChainingRequest *)self fwEnqueueDelay];
  [coderCopy encodeObject:fwEnqueueDelay forKey:@"fwEnqueueDelay"];

  memoryPoolId = [(_ANEChainingRequest *)self memoryPoolId];
  [coderCopy encodeObject:memoryPoolId forKey:@"memoryPoolId"];
}

- (_ANEChainingRequest)initWithCoder:(id)coder
{
  v19[6] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v19[2] = objc_opt_class();
  v19[3] = objc_opt_class();
  v19[4] = objc_opt_class();
  v19[5] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:6];
  v6 = [v3 setWithArray:v5];

  v16 = [coderCopy decodeObjectOfClasses:v6 forKey:@"inputs"];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"outputs"];
  v8 = [coderCopy decodeObjectOfClasses:v6 forKey:@"loopbackInputs"];
  v9 = [coderCopy decodeObjectOfClasses:v6 forKey:@"loopbackOutputs"];
  v10 = [coderCopy decodeObjectOfClasses:v6 forKey:@"signalEvents"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"procedureIndex"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transactionHandle"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fwEnqueueDelay"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"memoryPoolId"];

  v18 = [(_ANEChainingRequest *)self initWithInputs:v16 outputs:v7 lbInputSymbolId:v8 lbOutputSymbolId:v9 procedureIndex:v11 signalEvents:v10 transactionHandle:v12 fwEnqueueDelay:v13 memoryPoolId:v14];
  return v18;
}

- (void)validate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218240;
  selfCopy = self;
  v5 = 2048;
  v6 = a2;
  _os_log_error_impl(&dword_1AD246000, log, OS_LOG_TYPE_ERROR, "No input buffers or output sets. inputBuffer.count = %lu : outputSets.count = %lu", &v3, 0x16u);
}

@end