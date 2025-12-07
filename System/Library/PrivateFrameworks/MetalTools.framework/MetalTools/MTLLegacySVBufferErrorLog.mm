@interface MTLLegacySVBufferErrorLog
- (MTLLegacySVBufferErrorLog)init;
- (id)description;
- (void)dealloc;
@end

@implementation MTLLegacySVBufferErrorLog

- (MTLLegacySVBufferErrorLog)init
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVBufferErrorLog;
  result = [(MTLLegacySVBufferErrorLog *)&v3 init];
  result->_specifiedUsage = 128;
  return result;
}

- (id)description
{
  if (self->_addressSpace == 3)
  {
    label = 0;
  }

  else
  {
    buffer = self->_buffer;
    if (buffer && (v5 = [(MTLBuffer *)buffer label], buffer = self->_buffer, v5))
    {
      label = [(MTLBuffer *)buffer label];
    }

    else if (buffer)
    {
      label = @"<unnamed>";
    }

    else
    {
      label = @"<nil>";
    }
  }

  v6 = self->_buffer;
  if (v6)
  {
    specifiedUsage = self->_specifiedUsage;
    v8 = @"Unknown";
    if (specifiedUsage <= 1)
    {
      v10 = @"Read Only";
      if (specifiedUsage != 1)
      {
        v10 = @"Unknown";
      }

      if (specifiedUsage)
      {
        v8 = v10;
      }

      else
      {
        v8 = @"No";
      }
    }

    else
    {
      switch(specifiedUsage)
      {
        case 2:
          v8 = @"Write Only";
          break;
        case 3:
          v8 = @"Read Write";
          break;
        case 128:
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, length:%llu", label, -[MTLBuffer length](v6, "length"), v21];
LABEL_23:
          label = v9;
          goto LABEL_24;
      }
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@, length:%llu, resident:%@", label, -[MTLBuffer length](v6, "length"), v8];
    goto LABEL_23;
  }

LABEL_24:
  v11 = MEMORY[0x277CCACA8];
  addressSpace = self->_addressSpace;
  v13 = MTLGPUOperationString();
  offset = self->_offset;
  locationDescription = [(MTLLegacySVGPULog *)self locationDescription];
  v16 = [(MTLArgument *)self->_argument formattedDescription:4];
  if (label)
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"buffer: %@", label];
  }

  else
  {
    v17 = &stru_2841C04D0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_2841C04D0;
  }

  v19 = @"threadgroup";
  if (addressSpace == 1)
  {
    v19 = @"device";
  }

  return [v11 stringWithFormat:@"Invalid %@ %@ at offset %llu, executing %@ %@\n%@\n", v19, v13, offset, locationDescription, v18, v17];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVBufferErrorLog;
  [(MTLLegacySVGPULog *)&v3 dealloc];
}

@end