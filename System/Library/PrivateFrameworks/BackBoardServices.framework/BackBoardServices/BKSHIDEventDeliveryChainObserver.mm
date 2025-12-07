@interface BKSHIDEventDeliveryChainObserver
- (BKSHIDEventDeliveryChainObserver)init;
- (BKSHIDEventDeliveryChainObserver)initWithDisplay:(id)display environment:(id)environment;
- (id)addChainObserver:(id)observer;
@end

@implementation BKSHIDEventDeliveryChainObserver

- (id)addChainObserver:(id)observer
{
  observerCopy = observer;
  v4 = +[BKSHIDEventObserver sharedInstance];
  v5 = [v4 addObservingClient:? forChainObserver:?];

  return v5;
}

- (BKSHIDEventDeliveryChainObserver)initWithDisplay:(id)display environment:(id)environment
{
  v63 = *MEMORY[0x1E69E9840];
  displayCopy = display;
  environmentCopy = environment;
  v50.receiver = self;
  v50.super_class = BKSHIDEventDeliveryChainObserver;
  v10 = [(BKSHIDEventDeliveryChainObserver *)&v50 init];
  if (v10)
  {
    v11 = displayCopy;
    if (!v11)
    {
      v18 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = [v18 stringWithFormat:@"display", v20];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v22 = NSStringFromSelector(a2);
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138544642;
        v52 = v22;
        v53 = 2114;
        v54 = v24;
        v55 = 2048;
        v56 = v10;
        v57 = 2114;
        v58 = @"BKSHIDEventDeliveryChainObserver.m";
        v59 = 1024;
        v60 = 30;
        v61 = 2114;
        v62 = v21;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v21 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635A9DCLL);
    }

    v12 = v11;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v25 = MEMORY[0x1E696AEC0];
      classForCoder = [v12 classForCoder];
      if (!classForCoder)
      {
        classForCoder = objc_opt_class();
      }

      v27 = NSStringFromClass(classForCoder);
      objc_opt_class();
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      v30 = [v25 stringWithFormat:@"display", v27, v29];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = NSStringFromSelector(a2);
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138544642;
        v52 = v31;
        v53 = 2114;
        v54 = v33;
        v55 = 2048;
        v56 = v10;
        v57 = 2114;
        v58 = @"BKSHIDEventDeliveryChainObserver.m";
        v59 = 1024;
        v60 = 30;
        v61 = 2114;
        v62 = v30;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v30 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635AB1CLL);
    }

    v13 = environmentCopy;
    if (!v13)
    {
      v34 = MEMORY[0x1E696AEC0];
      objc_opt_class();
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = [v34 stringWithFormat:@"deferringEnvironment", v36];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v38 = NSStringFromSelector(a2);
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138544642;
        v52 = v38;
        v53 = 2114;
        v54 = v40;
        v55 = 2048;
        v56 = v10;
        v57 = 2114;
        v58 = @"BKSHIDEventDeliveryChainObserver.m";
        v59 = 1024;
        v60 = 31;
        v61 = 2114;
        v62 = v37;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v37 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635AC38);
    }

    v14 = v13;
    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v41 = MEMORY[0x1E696AEC0];
      classForCoder2 = [v14 classForCoder];
      if (!classForCoder2)
      {
        classForCoder2 = objc_opt_class();
      }

      v43 = NSStringFromClass(classForCoder2);
      objc_opt_class();
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      v46 = [v41 stringWithFormat:@"deferringEnvironment", v43, v45];

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v47 = NSStringFromSelector(a2);
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138544642;
        v52 = v47;
        v53 = 2114;
        v54 = v49;
        v55 = 2048;
        v56 = v10;
        v57 = 2114;
        v58 = @"BKSHIDEventDeliveryChainObserver.m";
        v59 = 1024;
        v60 = 31;
        v61 = 2114;
        v62 = v46;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v46 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18635AD78);
    }

    objc_storeStrong(&v10->_display, display);
    objc_storeStrong(&v10->_deferringEnvironment, environment);
    v15 = [BKSEventDeferringChainIdentity initWithDisplay:"initWithDisplay:environment:" environment:?];
    chainIdentity = v10->_chainIdentity;
    v10->_chainIdentity = v15;
  }

  return v10;
}

- (BKSHIDEventDeliveryChainObserver)init
{
  v3 = +[BKSHIDEventDisplay nullDisplay];
  v4 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  v5 = [BKSHIDEventDeliveryChainObserver initWithDisplay:"initWithDisplay:environment:" environment:?];

  return v5;
}

@end