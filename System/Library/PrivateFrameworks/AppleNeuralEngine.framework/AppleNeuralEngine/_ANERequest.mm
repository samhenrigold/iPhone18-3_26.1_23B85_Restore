@interface _ANERequest
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices perfStats:(id)stats procedureIndex:(id)index;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices procedureIndex:(id)index;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1;
+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer procedureIndex:(id)index;
- (BOOL)validate;
- (_ANERequest)initWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1;
- (_ANERequest)initWithVirtualModel:(void *)model;
- (id)description;
- (unint64_t)ioSurfacesCount;
- (void)validate;
@end

@implementation _ANERequest

- (BOOL)validate
{
  v71 = *MEMORY[0x1E69E9840];
  inputArray = [(_ANERequest *)self inputArray];
  v5 = [inputArray count];

  outputArray = [(_ANERequest *)self outputArray];
  v7 = [outputArray count];

  if (!v5 || !v7)
  {
    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANERequest validate];
    }

    goto LABEL_36;
  }

  inputIndexArray = [(_ANERequest *)self inputIndexArray];
  v9 = [inputIndexArray count];

  outputIndexArray = [(_ANERequest *)self outputIndexArray];
  v11 = [outputIndexArray count];

  if (!v9 || !v11)
  {
    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [_ANERequest validate];
    }

    goto LABEL_36;
  }

  if (v5 > 0xFF || v7 >= 0x100)
  {
    v24 = +[_ANELog common];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      outputArray2 = NSStringFromSelector(a2);
      *buf = 138413058;
      v67 = outputArray2;
      v68 = 2048;
      *v69 = v5;
      *&v69[8] = 2048;
      *&v69[10] = v7;
      *&v69[18] = 1024;
      *&v69[20] = 255;
      v30 = "%@: Either inputArray[%lu] or outputArray[%lu] count is greater than kANEMaxBuffers=%d";
LABEL_24:
      _os_log_error_impl(&dword_1AD246000, v24, OS_LOG_TYPE_ERROR, v30, buf, 0x26u);
      goto LABEL_32;
    }
  }

  else if (v5 == v9)
  {
    if (v7 == v11)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        inputIndexArray2 = [(_ANERequest *)self inputIndexArray];
        v15 = [inputIndexArray2 objectAtIndexedSubscript:v12];
        unsignedIntegerValue = [v15 unsignedIntegerValue];

        if (unsignedIntegerValue >= 0xFF)
        {
          break;
        }

        v12 = ++v13;
        if (v5 <= v13)
        {
          v17 = 0;
          for (i = 0; i < v7; v17 = ++i)
          {
            outputIndexArray2 = [(_ANERequest *)self outputIndexArray];
            v20 = [outputIndexArray2 objectAtIndexedSubscript:v17];
            unsignedIntegerValue2 = [v20 unsignedIntegerValue];

            if (unsignedIntegerValue2 >= 0xFF)
            {
              v24 = +[_ANELog common];
              if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_36;
              }

              outputArray2 = NSStringFromSelector(a2);
              outputIndexArray3 = [(_ANERequest *)self outputIndexArray];
              v31 = [outputIndexArray3 objectAtIndexedSubscript:v17];
              *buf = 138413314;
              v67 = outputArray2;
              v68 = 1024;
              *v69 = i;
              *&v69[4] = 2112;
              *&v69[6] = v31;
              *&v69[14] = 2048;
              *&v69[16] = unsignedIntegerValue2;
              *&v69[24] = 1024;
              *&v69[26] = 254;
              v32 = "%@: outputIndexArray[%u]=%@ length=%lu exceeds kANERequestMaxSymbolIndex=%d";
              goto LABEL_65;
            }
          }

          procedureIndex = [(_ANERequest *)self procedureIndex];
          unsignedIntegerValue3 = [procedureIndex unsignedIntegerValue];

          if (unsignedIntegerValue3 >= 0x81)
          {
            v24 = +[_ANELog common];
            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_36;
            }

            outputArray2 = NSStringFromSelector(a2);
            outputIndexArray3 = [(_ANERequest *)self procedureIndex];
            *buf = 138413058;
            v67 = outputArray2;
            v68 = 2112;
            *v69 = outputIndexArray3;
            *&v69[8] = 2048;
            *&v69[10] = unsignedIntegerValue3;
            *&v69[18] = 1024;
            *&v69[20] = 128;
            v27 = "%@: self.procedureIndex=%@ length=%lu exceeds kANEMaxProcedures=%d";
            v28 = v24;
            v29 = 38;
            goto LABEL_30;
          }

          perfStatsArray = [(_ANERequest *)self perfStatsArray];
          v35 = [perfStatsArray count];

          if (v35)
          {
            v24 = [MEMORY[0x1E695E0F8] mutableCopy];
            for (j = 0; j != v35; ++j)
            {
              perfStatsArray2 = [(_ANERequest *)self perfStatsArray];
              v38 = [perfStatsArray2 objectAtIndexedSubscript:j];
              statType = [v38 statType];

              if (statType >= 3)
              {
                v58 = +[_ANELog common];
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v60 = NSStringFromSelector(a2);
                  *buf = 138413314;
                  v67 = v60;
                  v68 = 2048;
                  *v69 = j;
                  *&v69[8] = 2048;
                  *&v69[10] = statType;
                  *&v69[18] = 2048;
                  *&v69[20] = 0;
                  *&v69[28] = 2048;
                  v70 = 2;
                  _os_log_error_impl(&dword_1AD246000, v58, OS_LOG_TYPE_ERROR, "%@: self.perfStatsArray[%lu].statType=%ld is invalid. Expected: (%ld - %ld)", buf, 0x34u);
                }

                goto LABEL_36;
              }

              v40 = [MEMORY[0x1E696AD98] numberWithInteger:statType];
              v41 = [v24 objectForKey:v40];

              v42 = [MEMORY[0x1E696AD98] numberWithInteger:statType];
              if (v41)
              {
                v43 = [v24 objectForKeyedSubscript:v42];
                longValue = [v43 longValue];

                v42 = [MEMORY[0x1E696AD98] numberWithLong:longValue + 1];
                v45 = [MEMORY[0x1E696AD98] numberWithInteger:statType];
                [v24 setObject:v42 forKeyedSubscript:v45];
              }

              else
              {
                [v24 setObject:&unk_1F2254488 forKey:v42];
              }
            }

            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v24 = v24;
            v46 = [v24 countByEnumeratingWithState:&v61 objects:v65 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v62;
              while (2)
              {
                for (k = 0; k != v47; ++k)
                {
                  if (*v62 != v48)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v50 = *(*(&v61 + 1) + 8 * k);
                  v51 = [v24 objectForKeyedSubscript:v50, v61];
                  if ([v51 longValue] >= 2)
                  {
                    v59 = +[_ANELog common];
                    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                    {
                      [(_ANERequest *)a2 validate];
                    }

                    goto LABEL_36;
                  }
                }

                v47 = [v24 countByEnumeratingWithState:&v61 objects:v65 count:16];
                if (v47)
                {
                  continue;
                }

                break;
              }
            }
          }

          sharedEvents = [(_ANERequest *)self sharedEvents];
          signalEvents = [sharedEvents signalEvents];
          v54 = [signalEvents count];

          sharedEvents2 = [(_ANERequest *)self sharedEvents];
          waitEvents = [sharedEvents2 waitEvents];
          v57 = [waitEvents count];

          if (v54 <= 0x40 && v57 < 0x41)
          {
            return 1;
          }

          v24 = +[_ANELog common];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            outputArray2 = NSStringFromSelector(a2);
            *buf = 138413058;
            v67 = outputArray2;
            v68 = 2048;
            *v69 = v54;
            *&v69[8] = 2048;
            *&v69[10] = v57;
            *&v69[18] = 1024;
            *&v69[20] = 64;
            v30 = "%@: Either signalEvents[%lu] or waitEvents[%lu] count exceeds kANEMaxEvents=%d";
            goto LABEL_24;
          }

          goto LABEL_36;
        }
      }

      v24 = +[_ANELog common];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      outputArray2 = NSStringFromSelector(a2);
      outputIndexArray3 = [(_ANERequest *)self inputIndexArray];
      v31 = [outputIndexArray3 objectAtIndexedSubscript:v12];
      *buf = 138413314;
      v67 = outputArray2;
      v68 = 1024;
      *v69 = v13;
      *&v69[4] = 2112;
      *&v69[6] = v31;
      *&v69[14] = 2048;
      *&v69[16] = unsignedIntegerValue;
      *&v69[24] = 1024;
      *&v69[26] = 254;
      v32 = "%@: inputIndexArray[%u]=%@ length=%lu exceeds kANERequestMaxSymbolIndex=%d";
LABEL_65:
      _os_log_error_impl(&dword_1AD246000, v24, OS_LOG_TYPE_ERROR, v32, buf, 0x2Cu);

      goto LABEL_31;
    }

    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      outputArray2 = [(_ANERequest *)self outputArray];
      outputIndexArray3 = [(_ANERequest *)self outputIndexArray];
      *buf = 138413058;
      v67 = outputArray2;
      v68 = 2112;
      *v69 = outputIndexArray3;
      *&v69[8] = 2048;
      *&v69[10] = v7;
      *&v69[18] = 2048;
      *&v69[20] = v11;
      v27 = "outputArray and outputIndexArray size mismatch. outputArray = %@ : outputIndexArray = %@ outputArray.count = %lu : outputIndexArray.count = %lu";
LABEL_29:
      v28 = v24;
      v29 = 42;
LABEL_30:
      _os_log_error_impl(&dword_1AD246000, v28, OS_LOG_TYPE_ERROR, v27, buf, v29);
LABEL_31:

LABEL_32:
    }
  }

  else
  {
    v24 = +[_ANELog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      outputArray2 = [(_ANERequest *)self inputArray];
      outputIndexArray3 = [(_ANERequest *)self inputIndexArray];
      *buf = 138413058;
      v67 = outputArray2;
      v68 = 2112;
      *v69 = outputIndexArray3;
      *&v69[8] = 2048;
      *&v69[10] = v5;
      *&v69[18] = 2048;
      *&v69[20] = v9;
      v27 = "inputArray and inputIndexArray size mismatch. inputArray = %@ : inputIndexArray = %@ inputArray.count = %lu : inputIndexArray.count = %lu";
      goto LABEL_29;
    }
  }

LABEL_36:

  return 0;
}

- (_ANERequest)initWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1
{
  inputsCopy = inputs;
  indicesCopy = indices;
  outputsCopy = outputs;
  outputIndicesCopy = outputIndices;
  bufferCopy = buffer;
  statsCopy = stats;
  indexCopy = index;
  eventsCopy = events;
  handleCopy = handle;
  v30.receiver = self;
  v30.super_class = _ANERequest;
  v19 = [(_ANERequest *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_inputArray, inputs);
    objc_storeStrong(&v20->_inputIndexArray, indices);
    objc_storeStrong(&v20->_outputArray, outputs);
    objc_storeStrong(&v20->_outputIndexArray, outputIndices);
    objc_storeStrong(&v20->_weightsBuffer, buffer);
    objc_storeStrong(&v20->_perfStatsArray, stats);
    objc_storeStrong(&v20->_procedureIndex, index);
    objc_storeStrong(&v20->_sharedEvents, events);
    objc_storeStrong(&v20->_transactionHandle, handle);
  }

  return v20;
}

- (_ANERequest)initWithVirtualModel:(void *)model
{
  v4.receiver = self;
  v4.super_class = _ANERequest;
  return [(_ANERequest *)&v4 init];
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer procedureIndex:(id)index
{
  indexCopy = index;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v20 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:0 procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v20;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices procedureIndex:(id)index
{
  indexCopy = index;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v17 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:0 perfStats:0 procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v17;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices perfStats:(id)stats procedureIndex:(id)index
{
  indexCopy = index;
  statsCopy = stats;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v20 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:0 perfStats:statsCopy procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v20;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index
{
  indexCopy = index;
  statsCopy = stats;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v23 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:statsCopy procedureIndex:indexCopy sharedEvents:0 transactionHandle:0];

  return v23;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0
{
  eventsCopy = events;
  indexCopy = index;
  statsCopy = stats;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v25 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:statsCopy procedureIndex:indexCopy sharedEvents:eventsCopy transactionHandle:0];

  return v25;
}

+ (id)requestWithInputs:(id)inputs inputIndices:(id)indices outputs:(id)outputs outputIndices:(id)outputIndices weightsBuffer:(id)buffer perfStats:(id)stats procedureIndex:(id)index sharedEvents:(id)self0 transactionHandle:(id)self1
{
  handleCopy = handle;
  eventsCopy = events;
  indexCopy = index;
  statsCopy = stats;
  bufferCopy = buffer;
  outputIndicesCopy = outputIndices;
  outputsCopy = outputs;
  indicesCopy = indices;
  inputsCopy = inputs;
  v27 = [[self alloc] initWithInputs:inputsCopy inputIndices:indicesCopy outputs:outputsCopy outputIndices:outputIndicesCopy weightsBuffer:bufferCopy perfStats:statsCopy procedureIndex:indexCopy sharedEvents:eventsCopy transactionHandle:handleCopy];

  return v27;
}

- (unint64_t)ioSurfacesCount
{
  inputIndexArray = [(_ANERequest *)self inputIndexArray];
  v4 = [inputIndexArray count];
  outputIndexArray = [(_ANERequest *)self outputIndexArray];
  v6 = [outputIndexArray count] + v4;
  weightsBuffer = [(_ANERequest *)self weightsBuffer];
  if (weightsBuffer)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v6;
  }

  return v8;
}

- (id)description
{
  v16 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  inputArray = [(_ANERequest *)self inputArray];
  inputIndexArray = [(_ANERequest *)self inputIndexArray];
  outputArray = [(_ANERequest *)self outputArray];
  outputIndexArray = [(_ANERequest *)self outputIndexArray];
  weightsBuffer = [(_ANERequest *)self weightsBuffer];
  procedureIndex = [(_ANERequest *)self procedureIndex];
  perfStatsArray = [(_ANERequest *)self perfStatsArray];
  sharedEvents = [(_ANERequest *)self sharedEvents];
  transactionHandle = [(_ANERequest *)self transactionHandle];
  v13 = [v16 stringWithFormat:@"%@: { inputArray=%@  inputIndexArray=%@ ; outputArray=%@ ; outputIndexArray=%@ ; weightsBuffer=%@ ; procedureIndex=%@ ; perfStatsArray=%@ ; sharedEvents=%@ ; transactionHandle=%@}", v15, inputArray, inputIndexArray, outputArray, outputIndexArray, weightsBuffer, procedureIndex, perfStatsArray, sharedEvents, transactionHandle];;

  return v13;
}

- (void)validate
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(self);
  v6 = 138412546;
  v7 = v5;
  v8 = 2048;
  longValue = [a2 longValue];
  _os_log_error_impl(&dword_1AD246000, a3, OS_LOG_TYPE_ERROR, "%@: Multiple _ANEPerformanceStatsIOSurface of type %ld, only pne _ANEPerformanceStatsIOSurface of each type expected", &v6, 0x16u);
}

@end