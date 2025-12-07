@interface VCPMADResource
- (id)description;
- (void)purge;
@end

@implementation VCPMADResource

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"active cost: %d, ", -[VCPMADResource activeCost](self, "activeCost")];
  [string appendFormat:@"inactive cost: %d>", -[VCPMADResource inactiveCost](self, "inactiveCost")];

  return string;
}

- (void)purge
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%@ does not implement purge", &v4, 0xCu);
}

@end