@interface PTBoxFilter
- (PTBoxFilter)initWithMetalContext:(id)context options:(int)options;
- (int)boxFilter1Channel:(id)channel inTex:(id)tex intermediate:(id)intermediate outTex:(id)outTex kernelWidth:(int)width outputRemapping:;
@end

@implementation PTBoxFilter

- (PTBoxFilter)initWithMetalContext:(id)context options:(int)options
{
  contextCopy = context;
  optionsCopy = options;
  v20.receiver = self;
  v20.super_class = PTBoxFilter;
  v8 = [(PTBoxFilter *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalContext, context);
    v10 = objc_opt_new();
    [v10 setConstantValue:&optionsCopy type:29 withName:@"kBoxFilterOutputMapping"];
    v11 = [contextCopy computePipelineStateFor:@"boxFilter1ChannelHorizontal" withConstants:v10];
    boxFilter1ChannelHorizontal = v9->_boxFilter1ChannelHorizontal;
    v9->_boxFilter1ChannelHorizontal = v11;

    if (v9->_boxFilter1ChannelHorizontal)
    {
      v14 = [contextCopy computePipelineStateFor:@"boxFilter1ChannelVertical" withConstants:v10];
      boxFilter1ChannelVertical = v9->_boxFilter1ChannelVertical;
      v9->_boxFilter1ChannelVertical = v14;

      if (v9->_boxFilter1ChannelVertical)
      {
        v17 = v9;
LABEL_11:

        goto LABEL_12;
      }

      v18 = _PTLogSystem(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PTBoxFilter initWithMetalContext:v18 options:?];
      }
    }

    else
    {
      v18 = _PTLogSystem(v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [PTBoxFilter initWithMetalContext:v18 options:?];
      }
    }

    v17 = 0;
    goto LABEL_11;
  }

  v17 = 0;
LABEL_12:

  return v17;
}

- (int)boxFilter1Channel:(id)channel inTex:(id)tex intermediate:(id)intermediate outTex:(id)outTex kernelWidth:(int)width outputRemapping:
{
  v8 = v7;
  texCopy = tex;
  intermediateCopy = intermediate;
  outTexCopy = outTex;
  v17 = outTexCopy;
  widthCopy = width;
  v28 = v8;
  if ((width & 0x80000001) == 1)
  {
    computeCommandEncoder = [channel computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_boxFilter1ChannelVertical];
    [computeCommandEncoder setTexture:texCopy atIndex:0];
    [computeCommandEncoder setTexture:intermediateCopy atIndex:1];
    [computeCommandEncoder setBytes:&widthCopy length:4 atIndex:0];
    width = [intermediateCopy width];
    height = [intermediateCopy height];
    v27 = 1;
    v23 = xmmword_2244A5440;
    v24 = 1;
    [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v23];
    [computeCommandEncoder setComputePipelineState:self->_boxFilter1ChannelHorizontal];
    [computeCommandEncoder setTexture:intermediateCopy atIndex:0];
    [computeCommandEncoder setTexture:v17 atIndex:1];
    [computeCommandEncoder setBytes:&widthCopy length:4 atIndex:0];
    [computeCommandEncoder setBytes:&v28 length:8 atIndex:1];
    width2 = [v17 width];
    height2 = [v17 height];
    width = width2;
    height = height2;
    v27 = 1;
    v23 = xmmword_2244A5440;
    v24 = 1;
    [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v23];
    [computeCommandEncoder endEncoding];
    v21 = 0;
  }

  else
  {
    computeCommandEncoder = _PTLogSystem(outTexCopy);
    if (os_log_type_enabled(computeCommandEncoder, OS_LOG_TYPE_ERROR))
    {
      [PTBoxFilter boxFilter1Channel:computeCommandEncoder inTex:? intermediate:? outTex:? kernelWidth:? outputRemapping:?];
    }

    v21 = -10;
  }

  return v21;
}

- (void)initWithMetalContext:(os_log_t)log options:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_boxFilter1ChannelVertical";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

- (void)initWithMetalContext:(os_log_t)log options:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_boxFilter1ChannelHorizontal";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end