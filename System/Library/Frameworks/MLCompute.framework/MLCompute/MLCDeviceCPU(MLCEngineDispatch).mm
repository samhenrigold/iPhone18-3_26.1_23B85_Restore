@interface MLCDeviceCPU(MLCEngineDispatch)
@end

@implementation MLCDeviceCPU(MLCEngineDispatch)

- (void)allocateResultTensor:()MLCEngineDispatch .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dispatchForwardSplitLayer:()MLCEngineDispatch sourceTensor:resultTensors:forConcat:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchForwardSliceLayer:()MLCEngineDispatch sourceTensor:resultTensor:forTraining:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchForwardMatMulLayer:()MLCEngineDispatch sourceTensors:resultTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchForwardMHALayer:()MLCEngineDispatch sourceTensors:resultTensor:resultStateIsTemporary:forTraining:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchForwardMHALayer:()MLCEngineDispatch sourceTensors:resultTensor:resultStateIsTemporary:forTraining:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchForwardLayer:()MLCEngineDispatch sourceTensor:resultTensor:resultStateIsTemporary:forTraining:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchForwardLossLayer:()MLCEngineDispatch sourceTensor:labelsTensor:labelsTensorStride:weightsTensor:resultTensor:resultStateIsTemporary:forTraining:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchGradientLayer:()MLCEngineDispatch sourceGradientTensor:resultGradientTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchGradientMatMulLayer:()MLCEngineDispatch sourceGradientTensor:resultGradientTensors:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchGradientMHALayer:()MLCEngineDispatch sourceGradientTensor:resultGradientTensors:resultStateIsTemporary:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchGradientLossLayer:()MLCEngineDispatch sourceGradientTensor:labelsTensor:labelsTensorStride:weightsTensor:resultGradientTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchForwardAndGradientLossLayer:()MLCEngineDispatch sourceTensor:labelsTensor:labelsTensorStride:weightsTensor:resultTensor:resultGradientTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchRNNForwardLayer:()MLCEngineDispatch sourceTensors:resultTensors:resultStateIsTemporary:forTraining:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dispatchRNNForwardLayer:()MLCEngineDispatch sourceTensors:resultTensors:resultStateIsTemporary:forTraining:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchRNNGradientLayer:()MLCEngineDispatch sourceGradientTensors:resultGradientTensors:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)dispatchRNNGradientLayer:()MLCEngineDispatch sourceGradientTensors:resultGradientTensors:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dispatchRNNGradientLayer:()MLCEngineDispatch sourceGradientTensors:resultGradientTensors:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)dispatchRNNGradientLayer:()MLCEngineDispatch sourceGradientTensors:resultGradientTensors:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end