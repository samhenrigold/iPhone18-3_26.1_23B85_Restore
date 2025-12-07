@interface BackwardDmShader
+ (id)createShaderWithVertexName:(id)name fragmentName:(id)fragmentName colorFormat:(unint64_t)format useCustomMatrix:(BOOL)matrix p3CSC:(BOOL)c applyYGamma:(BOOL)gamma;
- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library;
- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library Constants:(BOOL *)constants ConstantNumber:(unsigned int)number;
- (id)initShaderWithVertexName:(id)name fragmentName:(id)fragmentName colorFormat:(unint64_t)format useCustomMatrix:(BOOL)matrix p3CSC:(BOOL)c applyYGamma:(BOOL)gamma;
@end

@implementation BackwardDmShader

+ (id)createShaderWithVertexName:(id)name fragmentName:(id)fragmentName colorFormat:(unint64_t)format useCustomMatrix:(BOOL)matrix p3CSC:(BOOL)c applyYGamma:(BOOL)gamma
{
  gammaCopy = gamma;
  cCopy = c;
  matrixCopy = matrix;
  nameCopy = name;
  fragmentNameCopy = fragmentName;
  v16 = [[self alloc] initShaderWithVertexName:nameCopy fragmentName:fragmentNameCopy colorFormat:format useCustomMatrix:matrixCopy p3CSC:cCopy applyYGamma:gammaCopy];

  return v16;
}

- (id)initShaderWithVertexName:(id)name fragmentName:(id)fragmentName colorFormat:(unint64_t)format useCustomMatrix:(BOOL)matrix p3CSC:(BOOL)c applyYGamma:(BOOL)gamma
{
  nameCopy = name;
  fragmentNameCopy = fragmentName;
  v21.receiver = self;
  v21.super_class = BackwardDmShader;
  v17 = [(BackwardDmShader *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_vertexKernelName, name);
    objc_storeStrong(&v18->_fragmentKernelName, fragmentName);
    renderPipeline = v18->_renderPipeline;
    v18->_renderPipeline = 0;

    v18->_colorFormat = format;
    v18->_useCustomMatrix = matrix;
    v18->_p3CSC = c;
    v18->_applyYGamma = gamma;
  }

  return v18;
}

- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library
{
  v24 = *MEMORY[0x277D85DE8];
  useCustomMatrix = self->_useCustomMatrix;
  v15 = *&self->_p3CSC;
  v5 = [(BackwardDmShader *)self getRenderPipelineStateForDevice:device Library:library Constants:&useCustomMatrix ConstantNumber:3];
  if (!v5)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v6 = logInstanceID;
      }

      else
      {
        v6 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->_useCustomMatrix;
        p3CSC = self->_p3CSC;
        applyYGamma = self->_applyYGamma;
        *buf = 134219010;
        v17 = WORD1(v6);
        v18 = 2080;
        *v19 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:]";
        *&v19[8] = 1024;
        *v20 = v7;
        *&v20[4] = 1024;
        v21 = p3CSC;
        v22 = 1024;
        v23 = applyYGamma;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new function with _useCustomMatrix=%d, _p3CSC=%d, _applyYGamma=%d", buf, 0x28u);
      }

      prevLogInstanceID = v6;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v10 = self->_useCustomMatrix;
      v11 = self->_p3CSC;
      v12 = self->_applyYGamma;
      *buf = 136315906;
      v17 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:]";
      v18 = 1024;
      *v19 = v10;
      *&v19[4] = 1024;
      *&v19[6] = v11;
      *v20 = 1024;
      *&v20[2] = v12;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new function with _useCustomMatrix=%d, _p3CSC=%d, _applyYGamma=%d", buf, 0x1Eu);
    }
  }

  return v5;
}

- (id)getRenderPipelineStateForDevice:(id)device Library:(id)library Constants:(BOOL *)constants ConstantNumber:(unsigned int)number
{
  v68 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  libraryCopy = library;
  renderPipeline = self->_renderPipeline;
  if (renderPipeline)
  {
    v13 = renderPipeline;
    goto LABEL_51;
  }

  if (!number)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v24 = logInstanceID;
      }

      else
      {
        v24 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v55 = WORD1(v24);
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 477\n", buf, 0xCu);
      }

      v21 = 0;
      v50 = 0;
      prevLogInstanceID = v24;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/HDRProcessing/Metal/BackwardDisplayManagement/HDRBackwardDisplayManagement.mm at line 477\n", buf, 2u);
      }

      v21 = 0;
      v50 = 0;
    }

    goto LABEL_35;
  }

  v14 = objc_opt_new();
  v15 = 0;
  do
  {
    [v14 setConstantValue:&constants[v15] type:53 atIndex:v15];
    ++v15;
  }

  while (number != v15);
  vertexKernelName = self->_vertexKernelName;
  v53 = 0;
  v17 = [libraryCopy newFunctionWithName:vertexKernelName constantValues:v14 error:&v53];
  v18 = v53;
  v19 = v18;
  v50 = v17;
  if (!v17 || v18)
  {
    if (!enableLogInstance)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v41 = self->_vertexKernelName;
        localizedDescription = [v19 localizedDescription];
        *buf = 136315650;
        v55 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v56 = 2112;
        v57 = v41;
        v58 = 2112;
        v59 = localizedDescription;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new vertex function: %@ with error: %@", buf, 0x20u);
      }

      v21 = 0;
      v23 = 0;
      goto LABEL_48;
    }

    if (logInstanceID)
    {
      v25 = logInstanceID;
    }

    else
    {
      v25 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_vertexKernelName;
      localizedDescription2 = [v19 localizedDescription];
      *buf = 134218754;
      v55 = WORD1(v25);
      v56 = 2080;
      v57 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
      v58 = 2112;
      v59 = v26;
      v60 = 2112;
      v61 = localizedDescription2;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new vertex function: %@ with error: %@", buf, 0x2Au);
    }

    v21 = 0;
    v23 = 0;
    goto LABEL_25;
  }

  fragmentKernelName = self->_fragmentKernelName;
  v52 = 0;
  v21 = [libraryCopy newFunctionWithName:fragmentKernelName constantValues:v14 error:&v52];
  v22 = v52;
  v23 = v22;
  if (!v21 || v22)
  {
    if (!enableLogInstance)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v48 = self->_fragmentKernelName;
        localizedDescription3 = [v23 localizedDescription];
        *buf = 136315650;
        v55 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v56 = 2112;
        v57 = v48;
        v58 = 2112;
        v59 = localizedDescription3;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed creating a new fragment function: %@ with error: %@", buf, 0x20u);
      }

      goto LABEL_48;
    }

    if (logInstanceID)
    {
      v25 = logInstanceID;
    }

    else
    {
      v25 = prevLogInstanceID;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v28 = self->_fragmentKernelName;
      localizedDescription4 = [v23 localizedDescription];
      *buf = 134218754;
      v55 = WORD1(v25);
      v56 = 2080;
      v57 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
      v58 = 2112;
      v59 = v28;
      v60 = 2112;
      v61 = localizedDescription4;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed creating a new fragment function: %@ with error: %@", buf, 0x2Au);
    }

LABEL_25:
    prevLogInstanceID = v25;
LABEL_48:

    v13 = 0;
    v30 = 0;
    goto LABEL_49;
  }

LABEL_35:
  v30 = objc_alloc_init(MEMORY[0x277CD6F78]);
  [v30 setVertexFunction:v50];
  [v30 setFragmentFunction:v21];
  colorFormat = self->_colorFormat;
  colorAttachments = [v30 colorAttachments];
  v33 = [colorAttachments objectAtIndexedSubscript:0];
  [v33 setPixelFormat:colorFormat];

  v51 = 0;
  v13 = [deviceCopy newRenderPipelineStateWithDescriptor:v30 error:&v51];
  v34 = v51;
  v35 = v34;
  if (!v13 || v34)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v36 = logInstanceID;
      }

      else
      {
        v36 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        p_vertexKernelName = &self->_vertexKernelName;
        v37 = self->_vertexKernelName;
        v38 = p_vertexKernelName[1];
        localizedDescription5 = [v35 localizedDescription];
        *buf = 134219522;
        v55 = WORD1(v36);
        v56 = 2080;
        v57 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v58 = 2048;
        v59 = v21;
        v60 = 2112;
        v61 = v38;
        v62 = 2048;
        v63 = v50;
        v64 = 2112;
        v65 = v37;
        v66 = 2112;
        v67 = localizedDescription5;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx %s : ERROR: Failed to create backward DM Kernel: fragment[%p]=%@, vertex[%p]=%@, with error: %@", buf, 0x48u);
      }

      v23 = 0;
      v19 = 0;
      prevLogInstanceID = v36;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v46 = &self->_vertexKernelName;
        v44 = self->_vertexKernelName;
        v45 = v46[1];
        localizedDescription6 = [v35 localizedDescription];
        *buf = 136316418;
        v55 = "[BackwardDmShader getRenderPipelineStateForDevice:Library:Constants:ConstantNumber:]";
        v56 = 2048;
        v57 = v21;
        v58 = 2112;
        v59 = v45;
        v60 = 2048;
        v61 = v50;
        v62 = 2112;
        v63 = v44;
        v64 = 2112;
        v65 = localizedDescription6;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] %s : ERROR: Failed to create backward DM Kernel: fragment[%p]=%@, vertex[%p]=%@, with error: %@", buf, 0x3Eu);
      }

      v23 = 0;
      v19 = 0;
    }

    goto LABEL_50;
  }

  objc_storeStrong(&self->_renderPipeline, v13);
  v23 = 0;
  v19 = 0;
LABEL_49:
  v35 = 0;
LABEL_50:

LABEL_51:

  return v13;
}

@end