@interface MLCArithmeticLayer
+ (MLCArithmeticLayer)layerWithOperation:(MLCArithmeticOperation)operation;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (BOOL)skipGradientComputationForSourceTensor:(id)tensor resultTensor:(id)resultTensor;
- (MLCArithmeticLayer)initWithArithmeticOperation:(int)operation;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)deviceMemorySizeWithOptimizer:(id)optimizer device:(id)device;
@end

@implementation MLCArithmeticLayer

- (BOOL)skipGradientComputationForSourceTensor:(id)tensor resultTensor:(id)resultTensor
{
  tensorCopy = tensor;
  resultTensorCopy = resultTensor;
  if ((-[MLCArithmeticLayer operation](self, "operation") == MLCArithmeticOperationAdd || -[MLCArithmeticLayer operation](self, "operation") == MLCArithmeticOperationSubtract) && ([resultTensorCopy descriptor], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "shape"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), objc_msgSend(tensorCopy, "descriptor"), v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "shape"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v11, v10, v8, v7, v9 == v12))
  {
    descriptor = [resultTensorCopy descriptor];
    shape = [descriptor shape];
    v15 = [shape count];

    if (v15)
    {
      v16 = 0;
      do
      {
        descriptor2 = [resultTensorCopy descriptor];
        shape2 = [descriptor2 shape];
        v19 = [shape2 objectAtIndexedSubscript:v16];
        unsignedIntegerValue = [v19 unsignedIntegerValue];
        descriptor3 = [tensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v23 = [shape3 objectAtIndexedSubscript:v16];
        unsignedIntegerValue2 = [v23 unsignedIntegerValue];

        v25 = unsignedIntegerValue == unsignedIntegerValue2;
        if (unsignedIntegerValue != unsignedIntegerValue2)
        {
          break;
        }

        ++v16;
        descriptor4 = [resultTensorCopy descriptor];
        shape4 = [descriptor4 shape];
        v28 = [shape4 count];
      }

      while (v16 < v28);
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

+ (MLCArithmeticLayer)layerWithOperation:(MLCArithmeticOperation)operation
{
  v3 = [[self alloc] initWithArithmeticOperation:*&operation];

  return v3;
}

- (MLCArithmeticLayer)initWithArithmeticOperation:(int)operation
{
  v6.receiver = self;
  v6.super_class = MLCArithmeticLayer;
  result = [(MLCLayer *)&v6 initWithLabel:@"Arithmetic"];
  if (result)
  {
    result->_operation = operation;
    if (operation > 0x1D || (v5 = 1, ((1 << operation) & 0x3C20000F) == 0))
    {
      v5 = 0;
    }

    result->_binaryOperation = v5;
  }

  return result;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v52 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [tensorsCopy count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      v14 = [tensorsCopy objectAtIndexedSubscript:v13];
      descriptor = [v14 descriptor];
      dataType = [descriptor dataType];

      if (![(MLCLayer *)MLCArithmeticLayer supportsDataType:dataType onDevice:deviceCopy])
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }

    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138413058;
      v45 = v19;
      v46 = 2048;
      v47 = v13;
      v48 = 1024;
      v49 = dataType;
      v50 = 2112;
      v51 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
    }

    goto LABEL_15;
  }

LABEL_5:
  operation = [(MLCArithmeticLayer *)self operation];
  if (operation > MLCArithmeticOperationMax)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCArithmeticLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_15;
  }

  if (((1 << operation) & 0x3DFFFF0) != 0)
  {
    if ([tensorsCopy count] != 1)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCArithmeticLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
      }

LABEL_15:
      v20 = 0;
      goto LABEL_31;
    }
  }

  else if ([tensorsCopy count] <= 1)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCArithmeticLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_15;
  }

  fusedLayers = [(MLCLayer *)self fusedLayers];
  descriptor2 = [fusedLayers count];

  if (descriptor2)
  {
    fusedLayers2 = [(MLCLayer *)self fusedLayers];
    v24 = [fusedLayers2 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    fusedLayers3 = [(MLCLayer *)self fusedLayers];
    v27 = [fusedLayers3 objectAtIndexedSubscript:0];

    if (isKindOfClass)
    {
      descriptor2 = [v27 descriptor];
    }

    else
    {
      computeEngine = [deviceCopy computeEngine];
      v29 = [computeEngine arithmeticLayerWithOperation:objc_msgSend(v27 activationDescriptor:{"operation"), 0}];

      computeEngine2 = [deviceCopy computeEngine];
      fusedLayers4 = [(MLCLayer *)self fusedLayers];
      v32 = [fusedLayers4 objectAtIndexedSubscript:0];
      sourceTensors = [v32 sourceTensors];
      [computeEngine2 compileLayerDeviceOps:v29 sourceTensors:sourceTensors resultTensor:tensorCopy];

      [v27 bindDevice:deviceCopy deviceOps:v29];
      descriptor2 = 0;
    }
  }

  computeEngine3 = [deviceCopy computeEngine];
  v18 = [computeEngine3 arithmeticLayerWithOperation:-[MLCArithmeticLayer operation](self activationDescriptor:{"operation"), descriptor2}];

  if (v18 && [v18 count])
  {
    computeEngine4 = [deviceCopy computeEngine];
    v20 = [computeEngine4 compileLayerDeviceOps:v18 sourceTensors:tensorsCopy resultTensor:tensorCopy];

    v43.receiver = self;
    v43.super_class = MLCArithmeticLayer;
    [(MLCLayer *)&v43 bindDevice:deviceCopy deviceOps:v18];
    if ([tensorsCopy count] == 2)
    {
      v36 = [tensorsCopy objectAtIndexedSubscript:0];
      v37 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v36 resultTensor:tensorCopy];

      v38 = [tensorsCopy objectAtIndexedSubscript:1];
      v39 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v38 resultTensor:tensorCopy];

      if (v37 && v39)
      {
        [(MLCLayer *)self setAllocateGradientTensors:0];
      }
    }
  }

  else
  {
    v40 = +[MLCLog framework];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v20 = 0;
  }

LABEL_31:
  return v20;
}

- (unint64_t)deviceMemorySizeWithOptimizer:(id)optimizer device:(id)device
{
  deviceCopy = device;
  sourceTensors = [(MLCLayer *)self sourceTensors];
  v7 = [sourceTensors objectAtIndexedSubscript:0];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [resultTensors objectAtIndexedSubscript:0];
  v10 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v7 resultTensor:v9];

  sourceTensors2 = [(MLCLayer *)self sourceTensors];
  v12 = [sourceTensors2 count];

  if (v12 == 2)
  {
    sourceTensors3 = [(MLCLayer *)self sourceTensors];
    v14 = [sourceTensors3 objectAtIndexedSubscript:1];
    resultTensors2 = [(MLCLayer *)self resultTensors];
    v16 = [resultTensors2 objectAtIndexedSubscript:0];
    v17 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v14 resultTensor:v16];
  }

  else
  {
    v17 = 0;
  }

  computeEngine = [deviceCopy computeEngine];
  resultTensors3 = [(MLCLayer *)self resultTensors];
  v20 = [resultTensors3 objectAtIndexedSubscript:0];
  v21 = [computeEngine deviceMemorySizeForTensor:v20];

  if (![(MLCLayer *)self isTrainable])
  {
    goto LABEL_11;
  }

  intermediateGradientTensors = [(MLCLayer *)self intermediateGradientTensors];
  v23 = [intermediateGradientTensors count];

  if (!v23)
  {
    sourceGradientTensors = [(MLCLayer *)self sourceGradientTensors];
    v34 = [sourceGradientTensors objectAtIndexedSubscript:0];
    sharedMemoryTensor = [v34 sharedMemoryTensor];

    if (!sharedMemoryTensor)
    {
      computeEngine2 = [deviceCopy computeEngine];
      sourceGradientTensors2 = [(MLCLayer *)self sourceGradientTensors];
      v50 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
      v27 = [computeEngine2 deviceMemorySizeForTensor:v50];

      goto LABEL_12;
    }

LABEL_11:
    v27 = 0;
    goto LABEL_12;
  }

  intermediateGradientTensors2 = [(MLCLayer *)self intermediateGradientTensors];
  v25 = [intermediateGradientTensors2 count];

  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = 0;
  v27 = 0;
  do
  {
    computeEngine3 = [deviceCopy computeEngine];
    intermediateGradientTensors3 = [(MLCLayer *)self intermediateGradientTensors];
    v30 = [intermediateGradientTensors3 objectAtIndexedSubscript:v26];
    v27 += [computeEngine3 deviceMemorySizeForTensor:v30];

    ++v26;
    intermediateGradientTensors4 = [(MLCLayer *)self intermediateGradientTensors];
    v32 = [intermediateGradientTensors4 count];
  }

  while (v26 < v32);
LABEL_12:
  v36 = v27 + v21;
  if ([(MLCLayer *)self isTrainable])
  {
    if ([deviceCopy type])
    {
      if (v10)
      {
        computeEngine4 = [deviceCopy computeEngine];
        sourceGradientTensors3 = [(MLCLayer *)self sourceGradientTensors];
        v39 = [sourceGradientTensors3 objectAtIndexedSubscript:0];
        v36 -= [computeEngine4 deviceMemorySizeForTensor:v39];
      }

      if (v17)
      {
        computeEngine5 = [deviceCopy computeEngine];
        sourceGradientTensors4 = [(MLCLayer *)self sourceGradientTensors];
        v42 = [sourceGradientTensors4 objectAtIndexedSubscript:0];
        v36 -= [computeEngine5 deviceMemorySizeForTensor:v42];
LABEL_20:
      }
    }

    else if (v10 && v17)
    {
      computeEngine6 = [deviceCopy computeEngine];
      sourceGradientTensors5 = [(MLCLayer *)self sourceGradientTensors];
      v45 = [sourceGradientTensors5 objectAtIndexedSubscript:0];
      v46 = [computeEngine6 deviceMemorySizeForTensor:v45];

      computeEngine5 = [deviceCopy computeEngine];
      sourceGradientTensors4 = [(MLCLayer *)self sourceGradientTensors];
      v42 = [sourceGradientTensors4 objectAtIndexedSubscript:0];
      v36 -= v46 + [computeEngine5 deviceMemorySizeForTensor:v42];
      goto LABEL_20;
    }
  }

  return v36;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v5 descriptor];
  v9.receiver = self;
  v9.super_class = MLCArithmeticLayer;
  v7 = -[MLCLayer resultTensorsFromBroadcastableSources:resultTensorDataType:](&v9, sel_resultTensorsFromBroadcastableSources_resultTensorDataType_, sourcesCopy, [descriptor dataType]);

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  operation = [(MLCArithmeticLayer *)self operation];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { operation=%d : conditionalTreeNode=%@ : resultTensor=%@ }", v5, operation, conditionalTreeNode, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  v7 = MLCArithmeticOperationDebugDescription([(MLCArithmeticLayer *)self operation]);
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Operation: %@<BR /></FONT>>", v5, layerID, v7];

  return v8;
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [sourcesCopy objectAtIndexedSubscript:v4];
      descriptor = [v5 descriptor];
      shape = [descriptor shape];
      v8 = [shape count];

      if (v8 > 1)
      {
        goto LABEL_10;
      }
    }

    while (++v4 < [sourcesCopy count]);
  }

  if (![sourcesCopy count])
  {
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v9 = 0;
  do
  {
    v10 = [sourcesCopy objectAtIndexedSubscript:v9];
    descriptor2 = [v10 descriptor];
    shape2 = [descriptor2 shape];
    v13 = [shape2 count];

    v14 = v13 == 1;
    if (v13 != 1)
    {
      break;
    }

    ++v9;
  }

  while (v9 < [sourcesCopy count]);
LABEL_11:

  return v14;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end