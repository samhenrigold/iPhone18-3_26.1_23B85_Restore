@interface MLCDeviceANE(MLCLayerOperations)
@end

@implementation MLCDeviceANE(MLCLayerOperations)

- (void)convolutionTransposeLayerWithDescriptor:()MLCLayerOperations weights:biasTerms:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)lossLayerWithDescriptor:()MLCLayerOperations .cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)partitionInferenceGraph:()MLCLayerOperations startAtLayerIndex:aneDevice:secondaryDevice:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)partitionInferenceGraph:()MLCLayerOperations startAtLayerIndex:aneDevice:secondaryDevice:.cold.2(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "canMergeANESubgraphs";
  _os_log_error_impl(&dword_238C1D000, log, OS_LOG_TYPE_ERROR, "%s: Graph has been partitioned incorrectly", buf, 0xCu);
}

- (void)partitionInferenceGraph:()MLCLayerOperations startAtLayerIndex:aneDevice:secondaryDevice:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)partitionInferenceGraph:()MLCLayerOperations startAtLayerIndex:aneDevice:secondaryDevice:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)updateTensorsForFusedLayers:()MLCLayerOperations ofInferenceGraph:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateTensorsForFusedLayers:()MLCLayerOperations ofInferenceGraph:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateTensorsForFusedLayers:()MLCLayerOperations ofInferenceGraph:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)updateTensorsForFusedLayers:()MLCLayerOperations ofInferenceGraph:.cold.4(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileLayerDeviceOps:()MLCLayerOperations sourceTensors:resultTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v2 = NSStringFromSelector(v1);
  [v0 deviceOpType];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)compileLayerDeviceOps:()MLCLayerOperations sourceTensors:resultTensor:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v2 = NSStringFromSelector(v1);
  [v0 deviceOpType];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x12u);
}

@end