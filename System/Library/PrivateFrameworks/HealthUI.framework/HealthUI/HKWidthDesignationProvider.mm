@interface HKWidthDesignationProvider
+ (int64_t)widthDesignationFromViewWidth:(double)width;
@end

@implementation HKWidthDesignationProvider

+ (int64_t)widthDesignationFromViewWidth:(double)width
{
  widthCopy = width;
  if ((width - 320) < 0x37)
  {
    return 1;
  }

  if (widthCopy > 1194)
  {
    return 6;
  }

  if ((widthCopy - 982) < 0xD5)
  {
    return 5;
  }

  if ((widthCopy - 667) < 0x13B)
  {
    return 4;
  }

  if ((widthCopy - 461) < 0xCE)
  {
    return 3;
  }

  if ((widthCopy - 375) < 0x56)
  {
    return 2;
  }

  _HKInitializeLogging();
  v7 = *MEMORY[0x1E696B940];
  if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
  {
    [(HKWidthDesignationProvider *)v7 widthDesignationFromViewWidth:self, width];
  }

  return 1;
}

+ (void)widthDesignationFromViewWidth:(double)a3 .cold.1(void *a1, uint64_t a2, double a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2050;
  v9 = a3;
  v5 = v7;
  _os_log_error_impl(&dword_1C3942000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: View with width outside defined width: (%{public}f)", &v6, 0x16u);
}

@end