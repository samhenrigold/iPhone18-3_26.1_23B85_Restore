@interface SNNMILBlobValue
- (SNNMILBlobValue)initWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset;
- (unint64_t)length;
- (unique_ptr<const)milValueWithContext:(id)context;
@end

@implementation SNNMILBlobValue

- (SNNMILBlobValue)initWithFilename:(id)filename shape:(id)shape dataType:(unint64_t)type offset:(id)offset
{
  filenameCopy = filename;
  shapeCopy = shape;
  offsetCopy = offset;
  v20.receiver = self;
  v20.super_class = SNNMILBlobValue;
  v13 = [(SNNMILValue *)&v20 init];
  filename = v13->_filename;
  v13->_filename = filenameCopy;
  v15 = filenameCopy;

  dimensions = v13->_dimensions;
  v13->_dimensions = shapeCopy;
  v17 = shapeCopy;

  v13->_dataType = type;
  offset = v13->_offset;
  v13->_offset = offsetCopy;

  return v13;
}

- (unint64_t)length
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dimensions = [(SNNMILBlobValue *)self dimensions];
  v4 = [dimensions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(dimensions);
        }

        v6 *= [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue];
      }

      v4 = [dimensions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  dataType = [(SNNMILBlobValue *)self dataType];
  if (dataType - 2 > 0xA)
  {
    v10 = 1;
  }

  else
  {
    v10 = qword_25BCBAA40[dataType - 2];
  }

  return v10 * v8;
}

- (unique_ptr<const)milValueWithContext:(id)context
{
  v5 = v3;
  contextCopy = context;
  filename = [(SNNMILBlobValue *)self filename];
  dimensions = [(SNNMILBlobValue *)self dimensions];
  [(SNNMILBlobValue *)self dataType];
  offset = [(SNNMILBlobValue *)self offset];
  if (contextCopy)
  {
    objc_msgSend_milValueForTensorBlobWithFilename_shape_dataType_offset_(contextCopy);
  }

  else
  {
    *v5 = 0;
  }

  return v9;
}

@end