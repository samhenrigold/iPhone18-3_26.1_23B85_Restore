@interface GCLogitechRacingWheel
@end

@implementation GCLogitechRacingWheel

void __47___GCLogitechRacingWheel_observeGamepadEvents___block_invoke(uint64_t a1, const char *a2)
{
  while (1)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, a2, 144, 1);
    }

    v5 = Property;
    v6 = OUTLINED_FUNCTION_8_0();
    v7 = _Block_copy(v6);
    v8 = [v2 containsObject:v7];

    if (!v8)
    {
      break;
    }

    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v9, 144, 1);
    }

    v11 = [v10 mutableCopy];
    _Block_copy(*(a1 + 40));
    [OUTLINED_FUNCTION_8_0() removeObject:v2];

    v13 = *(a1 + 32);
    if (v13)
    {
      objc_setProperty_atomic_copy(v13, v12, v11, 144);
    }
  }
}

@end