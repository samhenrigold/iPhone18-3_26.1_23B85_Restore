@interface NSXPCInterface(CX)
- (uint64_t)cx_allowedClasses;
@end

@implementation NSXPCInterface(CX)

- (uint64_t)cx_allowedClasses
{
  v18 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v15 = objc_opt_class();
  v14 = objc_opt_class();
  v13 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  return [v18 setWithObjects:{v17, v16, v15, v14, v13, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, objc_opt_class(), 0}];
}

@end