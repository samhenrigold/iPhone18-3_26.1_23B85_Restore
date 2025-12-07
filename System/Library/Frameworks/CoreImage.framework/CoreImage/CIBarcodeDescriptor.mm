@interface CIBarcodeDescriptor
- (CIBarcodeDescriptor)init;
- (CIBarcodeDescriptor)initWithCoder:(id)coder;
- (void)init;
@end

@implementation CIBarcodeDescriptor

- (CIBarcodeDescriptor)init
{
  v8.receiver = self;
  v8.super_class = CIBarcodeDescriptor;
  v2 = [(CIBarcodeDescriptor *)&v8 init];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  if (v3 == v4)
  {
    v6 = ci_logger_api(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(CIBarcodeDescriptor *)v2 init];
    }

    return 0;
  }

  return v2;
}

- (CIBarcodeDescriptor)initWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];
  if ((allowsKeyedCoding & 1) == 0)
  {
    v6 = ci_logger_api(allowsKeyedCoding, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(CIBarcodeDescriptor *)self initWithCoder:v6];
    }
  }

  return self;
}

- (void)init
{
  objc_opt_class();
  v8 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v2, v3, "%{public}s %{public}@: instantiating abstract barcode descriptor objects is prohibited", v4, v5, v6, v7, v8);
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v8 = 136446466;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_19CC36000, v2, v3, "%{public}s %{public}@: requires coder that supports keyed coding of objects", v4, v5, v6, v7, v8);
}

@end