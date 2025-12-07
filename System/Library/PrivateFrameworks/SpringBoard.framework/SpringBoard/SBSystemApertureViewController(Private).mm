@interface SBSystemApertureViewController(Private)
@end

@implementation SBSystemApertureViewController(Private)

- (void)hostOrientationDidChangeTo:()Private withPreviousOrientation:context:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v0 = BSInterfaceOrientationDescription();
  v1 = BSInterfaceOrientationDescription();
  *v8 = 138412546;
  *&v8[4] = v0;
  *&v8[12] = 2112;
  *&v8[14] = v1;
  OUTLINED_FUNCTION_8(&dword_21ED4E000, v2, v3, "Participant's previous orientation:(%@) does not match our previous view controller orientation:(%@) ", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

- (void)hostOrientationDidChangeTo:()Private withPreviousOrientation:context:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end