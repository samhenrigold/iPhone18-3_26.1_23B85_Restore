@interface GCControllerInputComponentDescription
@end

@implementation GCControllerInputComponentDescription

void __56___GCControllerInputComponentDescription_initWithCoder___block_invoke()
{
  v5 = [MEMORY[0x1E695DFA8] set];
  v0 = _GCGamepadEventSourceDescription_Classes(v5);
  [v5 unionSet:v0];

  v2 = _GCCollectionEventSourceDescription_Classes(v1);
  [v5 unionSet:v2];

  [v5 addObject:objc_opt_class()];
  v3 = [v5 copy];
  v4 = initWithCoder__BindingClasses_0;
  initWithCoder__BindingClasses_0 = v3;
}

id __60___GCControllerInputComponentDescription_createWithContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 makeParameters];

  return v2;
}

@end