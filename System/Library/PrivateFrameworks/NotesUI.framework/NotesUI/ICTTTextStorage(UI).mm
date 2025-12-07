@interface ICTTTextStorage(UI)
@end

@implementation ICTTTextStorage(UI)

- (void)replaceCharactersInRange:()UI withAttributedString:.cold.2(NSRange a1, void *a2)
{
  v3 = NSStringFromRange(a1);
  *v10 = 138412546;
  *&v10[4] = v3;
  *&v10[12] = 2048;
  *&v10[14] = [a2 length];
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "replaceCharactersInRange:withAttributedString: input range %@ out of bound. self.length is %lu", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

- (void)replaceCharactersInRange:()UI withString:.cold.1(NSRange a1, void *a2)
{
  v3 = NSStringFromRange(a1);
  *v10 = 138412546;
  *&v10[4] = v3;
  *&v10[12] = 2048;
  *&v10[14] = [a2 length];
  OUTLINED_FUNCTION_4(&dword_1D4171000, v4, v5, "replaceCharactersInRange:withString: input range %@ out of bound. self.length is %lu", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end