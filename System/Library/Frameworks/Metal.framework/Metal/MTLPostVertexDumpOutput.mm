@interface MTLPostVertexDumpOutput
- (BOOL)isEqual:(id)equal;
- (MTLPostVertexDumpOutput)initWithAirMDType:(id)type dataType:(unint64_t)dataType pixelFormat:(unint64_t)format aluType:(unint64_t)aluType name:(id)name offset:(unint64_t)offset;
- (id)description;
- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types;
- (void)dealloc;
@end

@implementation MTLPostVertexDumpOutput

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLPostVertexDumpOutput;
  [(MTLPostVertexDumpOutput *)&v3 dealloc];
}

- (MTLPostVertexDumpOutput)initWithAirMDType:(id)type dataType:(unint64_t)dataType pixelFormat:(unint64_t)format aluType:(unint64_t)aluType name:(id)name offset:(unint64_t)offset
{
  v18.receiver = self;
  v18.super_class = MTLPostVertexDumpOutput;
  v14 = [(MTLPostVertexDumpOutput *)&v18 init];
  v14->_airMDType = type;
  typeCopy = type;
  v14->_dataType = dataType;
  v14->_pixelFormat = format;
  v14->_aluType = aluType;
  v14->_name = name;
  nameCopy = name;
  v14->_offset = offset;
  return v14;
}

- (id)formattedDescription:(unint64_t)description withPrintedTypes:(id)types
{
  v14[18] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = MEMORY[0x1E696AEC0];
  v13.receiver = self;
  v13.super_class = MTLPostVertexDumpOutput;
  v7 = [(MTLPostVertexDumpOutput *)&v13 description];
  v14[0] = v5;
  v14[1] = @"airMDType =";
  airMDType = self->_airMDType;
  dataType = self->_dataType;
  if (!airMDType)
  {
    airMDType = @"<none>";
  }

  v14[2] = airMDType;
  v14[3] = v5;
  v14[4] = @"dataType =";
  v14[5] = MTLDataTypeString(dataType);
  v14[6] = v5;
  v14[7] = @"pixelFormat =";
  v14[8] = [MEMORY[0x1E696AEC0] stringWithUTF8String:MTLPixelFormatGetName(self->_pixelFormat)];
  v14[9] = v5;
  v14[10] = @"aluType =";
  v14[11] = MTLDataTypeString(self->_aluType);
  v14[12] = v5;
  name = self->_name;
  offset = self->_offset;
  if (!name)
  {
    name = @"<none>";
  }

  v14[13] = @"name =";
  v14[14] = name;
  v14[15] = v5;
  v14[16] = @"offset =";
  v14[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:offset];
  return [v6 stringWithFormat:@"%@%@", v7, objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v14, 18), "componentsJoinedByString:", @" "];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(MTLPostVertexDumpOutput *)self formattedDescription:0 withPrintedTypes:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  v6 = [objc_msgSend(equal "airMDType")];
  if (!v6)
  {
    return v6;
  }

  if ([equal dataType] == self->_dataType && objc_msgSend(equal, "pixelFormat") == self->_pixelFormat)
  {
    v6 = [objc_msgSend(equal "name")];
    if (v6)
    {
      LOBYTE(v6) = [equal offset] == self->_offset;
    }
  }

  else
  {
LABEL_2:
    LOBYTE(v6) = 0;
  }

  return v6;
}

@end