@interface NEIKEv2FragmentMap
- (BOOL)hasFragmentForNumber:(uint64_t)number;
@end

@implementation NEIKEv2FragmentMap

- (BOOL)hasFragmentForNumber:(uint64_t)number
{
  v10 = *MEMORY[0x1E69E9840];
  if (!number)
  {
    return 0;
  }

  if (!a2)
  {
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
LABEL_9:

      return 0;
    }

    v8 = 136315138;
    v9 = "[NEIKEv2FragmentMap hasFragmentForNumber:]";
    v7 = "%s called with null (fragmentNumber >= 1)";
LABEL_12:
    _os_log_fault_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_FAULT, v7, &v8, 0xCu);
    goto LABEL_9;
  }

  if (*(number + 10) < a2)
  {
    v6 = ne_log_obj();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_9;
    }

    v8 = 136315138;
    v9 = "[NEIKEv2FragmentMap hasFragmentForNumber:]";
    v7 = "%s called with null (fragmentNumber <= self.expectedCount)";
    goto LABEL_12;
  }

  v2 = [*(number + 24) objectAtIndexedSubscript:a2 - 1];
  null = [MEMORY[0x1E695DFB0] null];
  v4 = v2 != null;

  return v4;
}

@end