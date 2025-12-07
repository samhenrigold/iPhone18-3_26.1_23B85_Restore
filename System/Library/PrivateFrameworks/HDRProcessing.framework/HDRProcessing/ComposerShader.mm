@interface ComposerShader
+ (id)createShaderWithName:(id)name dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi;
+ (id)createShaderWithNameAndInputOutput:(id)output dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi input:(int)input output:(int)a7;
- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library;
- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library input:(int)input output:(int)output;
- (id)initShaderWithName:(id)name dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi input:(int)input output:(int)output;
@end

@implementation ComposerShader

+ (id)createShaderWithName:(id)name dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi
{
  doviCopy = dovi;
  dolby84Copy = dolby84;
  nameCopy = name;
  v9 = [[self alloc] initShaderWithName:nameCopy dolby84:dolby84Copy forLLDovi:doviCopy input:38 output:6];

  return v9;
}

+ (id)createShaderWithNameAndInputOutput:(id)output dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi input:(int)input output:(int)a7
{
  v7 = *&a7;
  v8 = *&input;
  doviCopy = dovi;
  dolby84Copy = dolby84;
  outputCopy = output;
  v13 = [[self alloc] initShaderWithName:outputCopy dolby84:dolby84Copy forLLDovi:doviCopy input:v8 output:v7];

  return v13;
}

- (id)initShaderWithName:(id)name dolby84:(BOOL)dolby84 forLLDovi:(BOOL)dovi input:(int)input output:(int)output
{
  v12.receiver = self;
  v12.super_class = ComposerShader;
  result = [(ForwardDmShader *)&v12 initShaderWithName:name];
  if (result)
  {
    *(result + 32) = dolby84;
    *(result + 33) = dovi;
    *(result + 9) = input;
    *(result + 10) = output;
  }

  return result;
}

- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library
{
  v4 = [(ComposerShader *)self getComputePipeLineStateForDevice:device Library:library input:38 output:6];

  return v4;
}

- (id)getComputePipeLineStateForDevice:(id)device Library:(id)library input:(int)input output:(int)output
{
  v27 = *MEMORY[0x277D85DE8];
  v17[0] = self->_dolby84;
  v17[1] = self->_forLLDovi;
  v16.receiver = self;
  v16.super_class = ComposerShader;
  v9 = [(ForwardDmShader *)&v16 getComputePipeLineStateForDevice:device Library:library Constants:v17 ConstantNumber:2 input:input output:output];
  if (!v9)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v10 = logInstanceID;
      }

      else
      {
        v10 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        dolby84 = self->_dolby84;
        forLLDovi = self->_forLLDovi;
        *buf = 134219266;
        v19 = WORD1(v10);
        v20 = 2080;
        *v21 = "[ComposerShader getComputePipeLineStateForDevice:Library:input:output:]";
        *&v21[8] = 1024;
        *v22 = dolby84;
        *&v22[4] = 1024;
        *v23 = forLLDovi;
        *&v23[4] = 1024;
        inputCopy = input;
        v25 = 1024;
        outputCopy = output;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new function with dolby84=%d, forLLDoVi=%d input=%d output=%d", buf, 0x2Eu);
      }

      prevLogInstanceID = v10;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_dolby84;
      v14 = self->_forLLDovi;
      *buf = 136316162;
      v19 = "[ComposerShader getComputePipeLineStateForDevice:Library:input:output:]";
      v20 = 1024;
      *v21 = v13;
      *&v21[4] = 1024;
      *&v21[6] = v14;
      *v22 = 1024;
      *&v22[2] = input;
      *v23 = 1024;
      *&v23[2] = output;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new function with dolby84=%d, forLLDoVi=%d input=%d output=%d", buf, 0x24u);
    }
  }

  return v9;
}

@end