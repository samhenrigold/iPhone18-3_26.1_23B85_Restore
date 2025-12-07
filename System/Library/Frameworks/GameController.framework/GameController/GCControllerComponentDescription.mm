@interface GCControllerComponentDescription
@end

@implementation GCControllerComponentDescription

void __51___GCControllerComponentDescription_initWithCoder___block_invoke()
{
  v12 = [MEMORY[0x1E695DFA8] set];
  v0 = [v12 addObject:objc_opt_class()];
  v1 = _GCHIDEventSourceDescription_Classes(v0);
  [v12 unionSet:v1];

  v3 = _GCGamepadEventSourceDescription_Classes(v2);
  [v12 unionSet:v3];

  v5 = _GCKeyboardEventSourceDescription_Classes(v4);
  [v12 unionSet:v5];

  v7 = _GCMotionEventSourceDescription_Classes(v6);
  [v12 unionSet:v7];

  v9 = _GCCollectionEventSourceDescription_Classes(v8);
  [v12 unionSet:v9];

  [v12 addObject:objc_opt_class()];
  v10 = [v12 copy];
  v11 = initWithCoder__BindingClasses;
  initWithCoder__BindingClasses = v10;
}

void ___GCControllerComponentDescription_Classes_block_invoke()
{
  v13 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v13 initWithObjects:{v12, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v11 = _GCControllerComponentDescription_Classes_Classes;
  _GCControllerComponentDescription_Classes_Classes = v10;
}

@end