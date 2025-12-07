@interface NSDictionary
@end

@implementation NSDictionary

id __70__NSDictionary_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [v2 sortedArrayUsingSelector:sel_compare_];

    v2 = v5;
  }

  v6 = [MEMORY[0x1E696AD60] string];
  v7 = PLIndentToString();
  v8 = objc_opt_class();
  [v6 appendFormat:@"<%@: %p> count=%lu {", v8, *(a1 + 32), objc_msgSend_count(*(a1 + 32))];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__NSDictionary_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2;
  v15[3] = &unk_1E756B8C0;
  v9 = *(a1 + 32);
  v18 = *(a1 + 40);
  v15[4] = v9;
  v10 = v6;
  v16 = v10;
  v17 = v7;
  v11 = v7;
  [v2 enumerateObjectsUsingBlock:v15];
  [v10 appendFormat:@"\n%@}", v11];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __70__NSDictionary_PhotoLibraryServices___pl_prettyDescriptionWithIndent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  v4 = a2;
  v7 = [v4 _pl_prettyDescriptionWithIndent:v3 + 1];
  v5 = [*(a1 + 32) objectForKey:v4];

  v6 = [v5 _pl_prettyDescriptionWithIndent:*(a1 + 56) + 1];
  [*(a1 + 40) appendFormat:@"\n%@%@%@: %@", *(a1 + 48), *MEMORY[0x1E69BFEC8], v7, v6];
}

@end