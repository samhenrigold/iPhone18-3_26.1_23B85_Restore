@interface MLCLossLayer
+ (MLCLossLayer)categoricalCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weight:(float)weight;
+ (MLCLossLayer)categoricalCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weights:(MLCTensor *)weights;
+ (MLCLossLayer)cosineDistanceLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight;
+ (MLCLossLayer)cosineDistanceLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights;
+ (MLCLossLayer)hingeLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight;
+ (MLCLossLayer)hingeLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights;
+ (MLCLossLayer)huberLossWithReductionType:(MLCReductionType)reductionType delta:(float)delta weight:(float)weight;
+ (MLCLossLayer)huberLossWithReductionType:(MLCReductionType)reductionType delta:(float)delta weights:(MLCTensor *)weights;
+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor;
+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor weights:(MLCTensor *)weights;
+ (MLCLossLayer)logLossWithReductionType:(MLCReductionType)reductionType epsilon:(float)epsilon weight:(float)weight;
+ (MLCLossLayer)logLossWithReductionType:(MLCReductionType)reductionType epsilon:(float)epsilon weights:(MLCTensor *)weights;
+ (MLCLossLayer)meanAbsoluteErrorLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight;
+ (MLCLossLayer)meanAbsoluteErrorLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights;
+ (MLCLossLayer)meanSquaredErrorLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight;
+ (MLCLossLayer)meanSquaredErrorLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights;
+ (MLCLossLayer)sigmoidCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing weight:(float)weight;
+ (MLCLossLayer)sigmoidCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing weights:(MLCTensor *)weights;
+ (MLCLossLayer)softmaxCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weight:(float)weight;
+ (MLCLossLayer)softmaxCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weights:(MLCTensor *)weights;
+ (id)categoricalCrossEntropyLossWithReductionType:(int)type weight:(float)weight;
+ (id)categoricalCrossEntropyLossWithReductionType:(int)type weights:(id)weights;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCLossLayer)initWithDescriptor:(id)descriptor weights:(id)weights;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCLossLayer

+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor
{
  v4 = lossDescriptor;
  v5 = [[self alloc] initWithDescriptor:v4 weights:0];

  return v5;
}

+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor weights:(MLCTensor *)weights
{
  v6 = weights;
  v7 = lossDescriptor;
  v8 = [[self alloc] initWithDescriptor:v7 weights:v6];

  return v8;
}

+ (MLCLossLayer)softmaxCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weight:(float)weight
{
  *&v8 = weight;
  *&v9 = labelSmoothing;
  v10 = [MLCLossDescriptor descriptorWithType:2 reductionType:*&reductionType weight:classCount labelSmoothing:v8 classCount:v9];
  v11 = [[self alloc] initWithDescriptor:v10 weights:0];

  return v11;
}

+ (MLCLossLayer)softmaxCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weights:(MLCTensor *)weights
{
  v8 = *&reductionType;
  v10 = weights;
  LODWORD(v11) = 1.0;
  *&v12 = labelSmoothing;
  v13 = [MLCLossDescriptor descriptorWithType:2 reductionType:v8 weight:classCount labelSmoothing:v11 classCount:v12];
  v14 = [[self alloc] initWithDescriptor:v13 weights:v10];

  return v14;
}

+ (MLCLossLayer)categoricalCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weight:(float)weight
{
  *&v8 = weight;
  *&v9 = labelSmoothing;
  v10 = [MLCLossDescriptor descriptorWithType:4 reductionType:*&reductionType weight:classCount labelSmoothing:v8 classCount:v9];
  v11 = [[self alloc] initWithDescriptor:v10 weights:0];

  return v11;
}

+ (MLCLossLayer)categoricalCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing classCount:(NSUInteger)classCount weights:(MLCTensor *)weights
{
  v8 = *&reductionType;
  v10 = weights;
  LODWORD(v11) = 1.0;
  *&v12 = labelSmoothing;
  v13 = [MLCLossDescriptor descriptorWithType:4 reductionType:v8 weight:classCount labelSmoothing:v11 classCount:v12];
  v14 = [[self alloc] initWithDescriptor:v13 weights:v10];

  return v14;
}

+ (MLCLossLayer)sigmoidCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing weight:(float)weight
{
  *&v7 = weight;
  *&v8 = labelSmoothing;
  v9 = [MLCLossDescriptor descriptorWithType:3 reductionType:*&reductionType weight:1 labelSmoothing:v7 classCount:v8];
  v10 = [[self alloc] initWithDescriptor:v9 weights:0];

  return v10;
}

+ (MLCLossLayer)sigmoidCrossEntropyLossWithReductionType:(MLCReductionType)reductionType labelSmoothing:(float)labelSmoothing weights:(MLCTensor *)weights
{
  v6 = *&reductionType;
  v8 = weights;
  LODWORD(v9) = 1.0;
  *&v10 = labelSmoothing;
  v11 = [MLCLossDescriptor descriptorWithType:3 reductionType:v6 weight:1 labelSmoothing:v9 classCount:v10];
  v12 = [[self alloc] initWithDescriptor:v11 weights:v8];

  return v12;
}

+ (id)categoricalCrossEntropyLossWithReductionType:(int)type weight:(float)weight
{
  v5 = [MLCLossDescriptor descriptorWithType:4 reductionType:*&type weight:?];
  v6 = [[self alloc] initWithDescriptor:v5 weights:0];

  return v6;
}

+ (id)categoricalCrossEntropyLossWithReductionType:(int)type weights:(id)weights
{
  v4 = *&type;
  weightsCopy = weights;
  v7 = [MLCLossDescriptor descriptorWithType:4 reductionType:v4];
  v8 = [[self alloc] initWithDescriptor:v7 weights:weightsCopy];

  return v8;
}

+ (MLCLossLayer)logLossWithReductionType:(MLCReductionType)reductionType epsilon:(float)epsilon weight:(float)weight
{
  LODWORD(v6) = 1.0;
  *&v9 = weight;
  *&v5 = epsilon;
  v10 = [MLCLossDescriptor descriptorWithType:8 reductionType:*&reductionType weight:1 labelSmoothing:v9 classCount:0.0 epsilon:v5 delta:v6];
  v11 = [[self alloc] initWithDescriptor:v10 weights:0];

  return v11;
}

+ (MLCLossLayer)logLossWithReductionType:(MLCReductionType)reductionType epsilon:(float)epsilon weights:(MLCTensor *)weights
{
  v6 = *&reductionType;
  v8 = weights;
  LODWORD(v9) = 1.0;
  LODWORD(v10) = 1.0;
  *&v11 = epsilon;
  v12 = [MLCLossDescriptor descriptorWithType:8 reductionType:v6 weight:1 labelSmoothing:v9 classCount:0.0 epsilon:v11 delta:v10];
  v13 = [[self alloc] initWithDescriptor:v12 weights:v8];

  return v13;
}

+ (MLCLossLayer)huberLossWithReductionType:(MLCReductionType)reductionType delta:(float)delta weight:(float)weight
{
  *&v6 = delta;
  LODWORD(v5) = 869711765;
  *&v8 = weight;
  v9 = [MLCLossDescriptor descriptorWithType:6 reductionType:*&reductionType weight:1 labelSmoothing:v8 classCount:0.0 epsilon:v5 delta:v6];
  v10 = [[self alloc] initWithDescriptor:v9 weights:0];

  return v10;
}

+ (MLCLossLayer)huberLossWithReductionType:(MLCReductionType)reductionType delta:(float)delta weights:(MLCTensor *)weights
{
  v6 = *&reductionType;
  v8 = weights;
  LODWORD(v9) = 869711765;
  LODWORD(v10) = 1.0;
  *&v11 = delta;
  v12 = [MLCLossDescriptor descriptorWithType:6 reductionType:v6 weight:1 labelSmoothing:v10 classCount:0.0 epsilon:v9 delta:v11];
  v13 = [[self alloc] initWithDescriptor:v12 weights:v8];

  return v13;
}

+ (MLCLossLayer)meanAbsoluteErrorLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight
{
  v5 = [MLCLossDescriptor descriptorWithType:0 reductionType:*&reductionType weight:?];
  v6 = [[self alloc] initWithDescriptor:v5 weights:0];

  return v6;
}

+ (MLCLossLayer)meanAbsoluteErrorLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights
{
  v4 = *&reductionType;
  v6 = weights;
  v7 = [MLCLossDescriptor descriptorWithType:0 reductionType:v4];
  v8 = [[self alloc] initWithDescriptor:v7 weights:v6];

  return v8;
}

+ (MLCLossLayer)meanSquaredErrorLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight
{
  v5 = [MLCLossDescriptor descriptorWithType:1 reductionType:*&reductionType weight:?];
  v6 = [[self alloc] initWithDescriptor:v5 weights:0];

  return v6;
}

+ (MLCLossLayer)meanSquaredErrorLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights
{
  v4 = *&reductionType;
  v6 = weights;
  v7 = [MLCLossDescriptor descriptorWithType:1 reductionType:v4];
  v8 = [[self alloc] initWithDescriptor:v7 weights:v6];

  return v8;
}

+ (MLCLossLayer)hingeLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight
{
  v5 = [MLCLossDescriptor descriptorWithType:5 reductionType:*&reductionType weight:?];
  v6 = [[self alloc] initWithDescriptor:v5 weights:0];

  return v6;
}

+ (MLCLossLayer)hingeLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights
{
  v4 = *&reductionType;
  v6 = weights;
  v7 = [MLCLossDescriptor descriptorWithType:5 reductionType:v4];
  v8 = [[self alloc] initWithDescriptor:v7 weights:v6];

  return v8;
}

+ (MLCLossLayer)cosineDistanceLossWithReductionType:(MLCReductionType)reductionType weight:(float)weight
{
  v5 = *&reductionType;
  if (reductionType == MLCReductionTypeMean)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer cosineDistanceLossWithReductionType:a2 weight:?];
    }
  }

  *&v9 = weight;
  v10 = [MLCLossDescriptor descriptorWithType:7 reductionType:v5 weight:v9];
  v11 = [[self alloc] initWithDescriptor:v10 weights:0];

  return v11;
}

+ (MLCLossLayer)cosineDistanceLossWithReductionType:(MLCReductionType)reductionType weights:(MLCTensor *)weights
{
  v4 = *&reductionType;
  v7 = weights;
  if (v4 == 2)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer cosineDistanceLossWithReductionType:a2 weight:?];
    }
  }

  v9 = [MLCLossDescriptor descriptorWithType:7 reductionType:v4];
  v10 = [[self alloc] initWithDescriptor:v9 weights:v7];

  return v10;
}

- (MLCLossLayer)initWithDescriptor:(id)descriptor weights:(id)weights
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  if ([descriptorCopy lossType] == 7 && objc_msgSend(descriptorCopy, "reductionType") == 2)
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer cosineDistanceLossWithReductionType:a2 weight:?];
    }
  }

  v15.receiver = self;
  v15.super_class = MLCLossLayer;
  v11 = [(MLCLayer *)&v15 initWithLabel:@"Loss"];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_descriptor, descriptor);
    lossLabels = v12->_lossLabels;
    v12->_lossLabels = 0;

    objc_storeStrong(&v12->_weights, weights);
  }

  return v12;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v58 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if (tensorsCopy)
  {
    aSelector = a2;
    v12 = [tensorsCopy count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        v15 = [tensorsCopy objectAtIndexedSubscript:v14];
        descriptor = [v15 descriptor];
        dataType = [descriptor dataType];

        if (![(MLCLayer *)MLCLossLayer supportsDataType:dataType onDevice:deviceCopy])
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_6;
        }
      }

      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(a2);
        *buf = 138413058;
        v51 = v46;
        v52 = 2048;
        v53 = v14;
        v54 = 1024;
        v55 = dataType;
        v56 = 2112;
        v57 = deviceCopy;
        _os_log_error_impl(&dword_238C1D000, v35, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
      }

      goto LABEL_29;
    }

LABEL_6:
    v18 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor2 = [v18 descriptor];
    shape = [descriptor2 shape];
    v21 = [shape count];

    if ([tensorsCopy count])
    {
      v22 = 0;
      while (1)
      {
        v23 = [tensorsCopy objectAtIndexedSubscript:v22];
        descriptor3 = [v23 descriptor];
        shape2 = [descriptor3 shape];
        v26 = [shape2 count];

        if (v21 != v26)
        {
          break;
        }

        if (++v22 >= [tensorsCopy count])
        {
          goto LABEL_10;
        }
      }

      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
      }

      goto LABEL_29;
    }

LABEL_10:
    lossLabels = [(MLCLossLayer *)self lossLabels];
    if (!lossLabels || (v28 = lossLabels, -[MLCLossLayer lossLabels](self, "lossLabels"), v29 = objc_claimAutoreleasedReturnValue(), [v29 descriptor], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "shape"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "count"), v31, v30, v29, v28, v21 == v32))
    {
      computeEngine = [deviceCopy computeEngine];
      descriptor4 = [(MLCLossLayer *)self descriptor];
      v35 = [computeEngine lossLayerWithDescriptor:descriptor4];

      if (v35 && [v35 count])
      {
        computeEngine2 = [deviceCopy computeEngine];
        v37 = [computeEngine2 compileLayerDeviceOps:v35 sourceTensors:tensorsCopy resultTensor:tensorCopy];

        if (v37)
        {
          v49.receiver = self;
          v49.super_class = MLCLossLayer;
          [(MLCLayer *)&v49 bindDevice:deviceCopy deviceOps:v35];
          computeEngine3 = [deviceCopy computeEngine];
          deviceList = [computeEngine3 deviceList];
          v40 = [deviceList count];

          if (v40 >= 2)
          {
            descriptor5 = [(MLCLossLayer *)self descriptor];
            [tensorCopy setMultiDeviceReductionType:{objc_msgSend(descriptor5, "reductionType")}];
          }

          weights = [(MLCLossLayer *)self weights];

          if (!weights)
          {
            v45 = 1;
            goto LABEL_30;
          }

          weights2 = [(MLCLossLayer *)self weights];
          [weights2 allocateDeviceMemory:deviceCopy];

          weights3 = [(MLCLossLayer *)self weights];
          [weights3 writeTensorDataToAllDevices:deviceCopy];
          v45 = 1;
          goto LABEL_34;
        }

        weights3 = +[MLCLog framework];
        if (os_log_type_enabled(weights3, OS_LOG_TYPE_ERROR))
        {
          [MLCLossLayer compileForDevice:? sourceTensors:? resultTensor:?];
        }
      }

      else
      {
        weights3 = +[MLCLog framework];
        if (os_log_type_enabled(weights3, OS_LOG_TYPE_ERROR))
        {
          [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
        }
      }

      v45 = 0;
LABEL_34:

      goto LABEL_30;
    }

    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
    }
  }

  else
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
    }
  }

LABEL_29:
  v45 = 0;
LABEL_30:

  return v45;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v13.receiver = self;
  v13.super_class = MLCLossLayer;
  v6 = [(MLCLayer *)&v13 resultSizeFromSourceSize:size dimension:?];
  descriptor = [(MLCLossLayer *)self descriptor];
  reductionType = [descriptor reductionType];

  if (!reductionType)
  {
    if (dimension != 1)
    {
      return v6;
    }

    descriptor2 = [(MLCLossLayer *)self descriptor];
    if ([descriptor2 lossType] == 2)
    {
    }

    else
    {
      descriptor3 = [(MLCLossLayer *)self descriptor];
      lossType = [descriptor3 lossType];

      if (lossType != 4)
      {
        return v6;
      }
    }
  }

  return 1;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v6 descriptor];
  shape = [descriptor shape];
  v9 = [shape objectAtIndexedSubscript:0];
  v10 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v9 unsignedIntegerValue], 0);

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [v5 setObject:v11 atIndexedSubscript:0];

  v12 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor2 = [v12 descriptor];
  shape2 = [descriptor2 shape];
  v15 = [shape2 count];

  v16 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v16 descriptor];
  shape3 = [descriptor3 shape];
  v19 = shape3;
  if (v15 == 2)
  {
    v20 = 1;
    v21 = [shape3 objectAtIndexedSubscript:1];
    v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v21 unsignedIntegerValue], 1);
  }

  else
  {
    v23 = [shape3 count];

    v24 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v24 descriptor];
    shape4 = [descriptor4 shape];
    v27 = shape4;
    if (v23 == 3)
    {
      v28 = [shape4 objectAtIndexedSubscript:1];
      v29 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v28 unsignedIntegerValue], 1);

      v30 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor5 = [v30 descriptor];
      shape5 = [descriptor5 shape];
      v20 = 2;
      v33 = [shape5 objectAtIndexedSubscript:2];
      v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v33 unsignedIntegerValue], 2);

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
      v34 = v5;
      v35 = v16;
      v36 = 1;
    }

    else
    {
      v37 = [shape4 count];

      if (v37 != 4)
      {
        goto LABEL_9;
      }

      v38 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor6 = [v38 descriptor];
      shape6 = [descriptor6 shape];
      v41 = [shape6 objectAtIndexedSubscript:1];
      v59 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v41 unsignedIntegerValue], 1);

      v42 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor7 = [v42 descriptor];
      shape7 = [descriptor7 shape];
      v45 = [shape7 objectAtIndexedSubscript:2];
      v46 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v45 unsignedIntegerValue], 2);

      v47 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor8 = [v47 descriptor];
      shape8 = [descriptor8 shape];
      v20 = 3;
      v50 = [shape8 objectAtIndexedSubscript:3];
      v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v50 unsignedIntegerValue], 3);

      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
      [v5 setObject:v51 atIndexedSubscript:1];

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
      v34 = v5;
      v35 = v16;
      v36 = 2;
    }

    [v34 setObject:v35 atIndexedSubscript:v36];
  }

  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [v5 setObject:v52 atIndexedSubscript:v20];

LABEL_9:
  v53 = [v5 copy];
  v54 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor9 = [v54 descriptor];
  v56 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v53, [descriptor9 dataType]);

  v57 = [MLCTensor tensorWithDescriptor:v56];

  return v57;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCLossLayer *)self descriptor];
  resultTensors = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { lossDescriptor=%@ : resultTensor=%@ }", v5, descriptor, resultTensors];

  return v8;
}

- (id)summarizedDOTDescription
{
  v24 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCLossLayer *)self descriptor];
  v5 = MLCLossTypeDebugDescription([descriptor lossType]);
  descriptor2 = [(MLCLossLayer *)self descriptor];
  v7 = MLCReductionTypeDebugDescription([descriptor2 reductionType]);
  descriptor3 = [(MLCLossLayer *)self descriptor];
  [descriptor3 weight];
  v10 = v9;
  descriptor4 = [(MLCLossLayer *)self descriptor];
  [descriptor4 labelSmoothing];
  v13 = v12;
  descriptor5 = [(MLCLossLayer *)self descriptor];
  classCount = [descriptor5 classCount];
  descriptor6 = [(MLCLossLayer *)self descriptor];
  [descriptor6 epsilon];
  v18 = v17;
  descriptor7 = [(MLCLossLayer *)self descriptor];
  [descriptor7 delta];
  v21 = [v24 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Loss Type: %@         Reduction Type: %@    Weight: %.03f\n<BR />Label Smoothing: %.03f    Class Count: %lu       Epsilon: %.03f<BR />Delta: %.03f</FONT>>", v4, layerID, v5, v7, *&v10, *&v13, classCount, *&v18, v20];

  return v21;
}

- (void)linkAssociatedTensors
{
  lossLabels = [(MLCLossLayer *)self lossLabels];

  if (lossLabels)
  {
    lossLabels2 = [(MLCLossLayer *)self lossLabels];
    childLayers = [lossLabels2 childLayers];
    [childLayers addObject:self];
  }
}

- (void)unlinkAssociatedTensors
{
  lossLabels = [(MLCLossLayer *)self lossLabels];

  if (lossLabels)
  {
    lossLabels2 = [(MLCLossLayer *)self lossLabels];
    childLayers = [lossLabels2 childLayers];
    [childLayers removeObject:self];
  }
}

+ (void)cosineDistanceLossWithReductionType:(const char *)a1 weight:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end