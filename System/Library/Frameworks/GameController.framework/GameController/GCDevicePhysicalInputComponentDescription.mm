@interface GCDevicePhysicalInputComponentDescription
@end

@implementation GCDevicePhysicalInputComponentDescription

void __60___GCDevicePhysicalInputComponentDescription_initWithCoder___block_invoke()
{
  v10 = [MEMORY[0x1E695DFA8] set];
  v0 = [v10 addObject:objc_opt_class()];
  v1 = _GCHIDEventSourceDescription_Classes(v0);
  [v10 unionSet:v1];

  v3 = _GCGamepadEventSourceDescription_Classes(v2);
  [v10 unionSet:v3];

  v5 = _GCKeyboardEventSourceDescription_Classes(v4);
  [v10 unionSet:v5];

  v7 = _GCMotionEventSourceDescription_Classes(v6);
  [v10 unionSet:v7];

  [v10 addObject:objc_opt_class()];
  v8 = [v10 copy];
  v9 = initWithCoder__BindingClasses_1;
  initWithCoder__BindingClasses_1 = v8;
}

@end