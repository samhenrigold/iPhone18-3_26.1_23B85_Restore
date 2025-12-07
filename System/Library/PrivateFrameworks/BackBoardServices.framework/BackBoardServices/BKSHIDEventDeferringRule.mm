@interface BKSHIDEventDeferringRule
+ (id)ruleForDeferringEventsMatchingPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors toTarget:(id)target withReason:(id)reason seed:(unsigned int)seed pid:(int)pid;
+ (id)ruleForDeferringEventsMatchingPredicate:(id)predicate toTarget:(id)target withReason:(id)reason seed:(unsigned int)seed pid:(int)pid;
- (BKSHIDEventDeferringRule)init;
- (BKSHIDEventDeferringRule)initWithCoder:(id)coder;
- (BOOL)eventDescriptorIsRestricted:(id)restricted;
- (BOOL)isEqual:(id)equal;
- (id)_initWithPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors target:(id)target reason:(id)reason identity:(id)identity;
- (int64_t)mostRecentFirstCompare:(id)compare;
- (int64_t)weightedDeferringRuleCompare:(id)compare;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDeferringRule

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = [formatterCopy appendObject:? withName:?];
  v5 = [formatterCopy appendObject:? withName:?];
  if (self->_restrictedToEventDescriptors)
  {
    v6 = [formatterCopy appendObject:? withName:?];
  }

  [formatterCopy appendRightArrow];
  v7 = [formatterCopy appendObject:? withName:?];
  [formatterCopy appendString:? withName:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects() && BSEqualObjects())
    {
      v6 = BSEqualObjects();
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BKSHIDEventDeferringRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:? forKey:?];
    objc_opt_class();
    v8 = [coderCopy decodeArrayOfObjectsOfClass:? forKey:?];
    v9 = [MEMORY[0x1E695DFD8] setWithArray:?];
    objc_opt_class();
    v11 = [coderCopy decodeObjectOfClass:? forKey:?];
    objc_opt_class();
    v12 = [coderCopy decodeObjectOfClass:? forKey:?];
    objc_opt_class();
    v13 = [coderCopy decodeObjectOfClass:? forKey:?];
    v14 = v13;
    if (v7 && v11 && v12 && v13)
    {
      self = [BKSHIDEventDeferringRule _initWithPredicate:"_initWithPredicate:restrictedToEventDescriptors:target:reason:identity:" restrictedToEventDescriptors:? target:? reason:? identity:?];
      selfCopy = self;
    }

    else
    {
      v18 = MEMORY[0x1E696ABC0];
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:v7, v11, v12];
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v16 = [v18 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

      selfCopy = 0;
    }
  }

  else
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v9 = [v6 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  allObjects = [(NSSet *)self->_restrictedToEventDescriptors allObjects];
  [coderCopy encodeObject:? forKey:?];

  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (BOOL)eventDescriptorIsRestricted:(id)restricted
{
  restrictedCopy = restricted;
  if (restrictedCopy && [(NSSet *)self->_restrictedToEventDescriptors count])
  {
    v5 = self->_restrictedToEventDescriptors;
    v6 = [NSSet countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v7; i = (i + 1))
        {
          if (MEMORY[0] != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(8 * i) describes:?])
          {
            v10 = 0;
            goto LABEL_14;
          }
        }

        v7 = [NSSet countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_14:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)mostRecentFirstCompare:(id)compare
{
  compareCopy = compare;
  identity = [(BKSHIDEventDeferringRule *)self identity];
  seed = [identity seed];

  identity2 = [compareCopy identity];

  seed2 = [identity2 seed];
  if (seed > seed2)
  {
    return -1;
  }

  else
  {
    return seed != seed2;
  }
}

- (int64_t)weightedDeferringRuleCompare:(id)compare
{
  compareCopy = compare;
  selfCopy = self;
  predicate = [(BKSHIDEventDeferringRule *)selfCopy predicate];
  predicate2 = [compareCopy predicate];
  v8 = predicate;
  objc_opt_self();
  display = [v8 display];
  v10 = display != 0;

  token = [v8 token];

  v12 = (token != 0) | (2 * v10);
  display2 = [predicate2 display];
  v14 = display2 != 0;

  token2 = [predicate2 token];

  v16 = (token2 != 0) | (2 * v14);
  v17 = v12 > v16;
  if (v12 == v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  if (v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (!v19)
  {
    if ([v8 isEqual:?])
    {
      identity = [(BKSHIDEventDeferringRule *)selfCopy identity];
      seed = [identity seed];

      identity2 = [compareCopy identity];
      seed2 = [identity2 seed];

      if (seed <= seed2)
      {
        v19 = seed < seed2;
      }

      else
      {
        v19 = -1;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (id)_initWithPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors target:(id)target reason:(id)reason identity:(id)identity
{
  v117 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  targetCopy = target;
  reasonCopy = reason;
  identityCopy = identity;
  v18 = predicateCopy;
  if (!v18)
  {
    v38 = MEMORY[0x1E696AEC0];
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    v41 = [v38 stringWithFormat:@"predicate", v40];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v42 = NSStringFromSelector(a2);
      v43 = objc_opt_class();
      v44 = NSStringFromClass(v43);
      *buf = 138544642;
      v106 = v42;
      v107 = 2114;
      v108 = v44;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 117;
      v115 = 2114;
      v116 = v41;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v41 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638B8ACLL);
  }

  v19 = v18;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v45 = MEMORY[0x1E696AEC0];
    classForCoder = [v19 classForCoder];
    if (!classForCoder)
    {
      classForCoder = objc_opt_class();
    }

    v47 = NSStringFromClass(classForCoder);
    v48 = objc_opt_class();
    v49 = NSStringFromClass(v48);
    v50 = [v45 stringWithFormat:@"predicate", v47, v49];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = NSStringFromSelector(a2);
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      *buf = 138544642;
      v106 = v51;
      v107 = 2114;
      v108 = v53;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 117;
      v115 = 2114;
      v116 = v50;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v50 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638B9E8);
  }

  v20 = descriptorsCopy;
  if (!v20)
  {
    v54 = MEMORY[0x1E696AEC0];
    v55 = objc_opt_class();
    v56 = NSStringFromClass(v55);
    v57 = [v54 stringWithFormat:@"eventDescriptors", v56];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v58 = NSStringFromSelector(a2);
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      *buf = 138544642;
      v106 = v58;
      v107 = 2114;
      v108 = v60;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 118;
      v115 = 2114;
      v116 = v57;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v57 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BAFCLL);
  }

  v21 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v61 = MEMORY[0x1E696AEC0];
    classForCoder2 = [v21 classForCoder];
    if (!classForCoder2)
    {
      classForCoder2 = objc_opt_class();
    }

    v63 = NSStringFromClass(classForCoder2);
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
    v66 = [v61 stringWithFormat:@"eventDescriptors", v63, v65];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v67 = NSStringFromSelector(a2);
      v68 = objc_opt_class();
      v69 = NSStringFromClass(v68);
      *buf = 138544642;
      v106 = v67;
      v107 = 2114;
      v108 = v69;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 118;
      v115 = 2114;
      v116 = v66;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v66 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BC38);
  }

  v22 = targetCopy;
  if (!v22)
  {
    v70 = MEMORY[0x1E696AEC0];
    v71 = objc_opt_class();
    v72 = NSStringFromClass(v71);
    v73 = [v70 stringWithFormat:@"target", v72];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v74 = NSStringFromSelector(a2);
      v75 = objc_opt_class();
      v76 = NSStringFromClass(v75);
      *buf = 138544642;
      v106 = v74;
      v107 = 2114;
      v108 = v76;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 119;
      v115 = 2114;
      v116 = v73;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v73 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BD50);
  }

  v23 = v22;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v77 = MEMORY[0x1E696AEC0];
    classForCoder3 = [v23 classForCoder];
    if (!classForCoder3)
    {
      classForCoder3 = objc_opt_class();
    }

    v79 = NSStringFromClass(classForCoder3);
    v80 = objc_opt_class();
    v81 = NSStringFromClass(v80);
    v82 = [v77 stringWithFormat:@"target", v79, v81];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v83 = NSStringFromSelector(a2);
      v84 = objc_opt_class();
      v85 = NSStringFromClass(v84);
      *buf = 138544642;
      v106 = v83;
      v107 = 2114;
      v108 = v85;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 119;
      v115 = 2114;
      v116 = v82;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v82 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BE8CLL);
  }

  v24 = reasonCopy;
  v25 = MEMORY[0x1E696AEC0];
  v26 = objc_opt_class();
  if (!v24)
  {
    v86 = NSStringFromClass(v26);
    v87 = [v25 stringWithFormat:@"reason", v86];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v88 = NSStringFromSelector(a2);
      v89 = objc_opt_class();
      v90 = NSStringFromClass(v89);
      *buf = 138544642;
      v106 = v88;
      v107 = 2114;
      v108 = v90;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 120;
      v115 = 2114;
      v116 = v87;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v87 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638BF94);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v91 = MEMORY[0x1E696AEC0];
    classForCoder4 = [v24 classForCoder];
    if (!classForCoder4)
    {
      classForCoder4 = objc_opt_class();
    }

    v93 = NSStringFromClass(classForCoder4);
    v94 = objc_opt_class();
    v95 = NSStringFromClass(v94);
    v96 = [v91 stringWithFormat:@"reason", v93, v95];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v97 = NSStringFromSelector(a2);
      v98 = objc_opt_class();
      v99 = NSStringFromClass(v98);
      *buf = 138544642;
      v106 = v97;
      v107 = 2114;
      v108 = v99;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 120;
      v115 = 2114;
      v116 = v96;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v96 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638C0CCLL);
  }

  v27 = objc_opt_class();
  if (v27 != objc_opt_class())
  {
    v100 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v101 = NSStringFromSelector(a2);
      v102 = objc_opt_class();
      v103 = NSStringFromClass(v102);
      *buf = 138544642;
      v106 = v101;
      v107 = 2114;
      v108 = v103;
      v109 = 2048;
      selfCopy9 = self;
      v111 = 2114;
      v112 = @"BKSHIDEventDeferringRule.m";
      v113 = 1024;
      v114 = 121;
      v115 = 2114;
      v116 = v100;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v100 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18638C1B4);
  }

  v104.receiver = self;
  v104.super_class = BKSHIDEventDeferringRule;
  v28 = [(BKSHIDEventDeferringRule *)&v104 init];
  if (v28)
  {
    v29 = [v19 copy];
    predicate = v28->_predicate;
    v28->_predicate = v29;

    v31 = [v21 copy];
    restrictedToEventDescriptors = v28->_restrictedToEventDescriptors;
    v28->_restrictedToEventDescriptors = v31;

    v33 = [v23 copy];
    target = v28->_target;
    v28->_target = v33;

    v35 = [v24 copy];
    reason = v28->_reason;
    v28->_reason = v35;

    objc_storeStrong(&v28->_identity, identity);
  }

  return v28;
}

- (BKSHIDEventDeferringRule)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    v15 = 2114;
    v16 = @"BKSHIDEventDeferringRule.m";
    v17 = 1024;
    v18 = 112;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)ruleForDeferringEventsMatchingPredicate:(id)predicate restrictedToEventDescriptors:(id)descriptors toTarget:(id)target withReason:(id)reason seed:(unsigned int)seed pid:(int)pid
{
  reasonCopy = reason;
  targetCopy = target;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v15 = [_BKSHIDEventDeferringRuleIdentity initWithSeed:"initWithSeed:pid:" pid:?];
  v16 = [BKSHIDEventDeferringRule _initWithPredicate:"_initWithPredicate:restrictedToEventDescriptors:target:reason:identity:" restrictedToEventDescriptors:? target:? reason:? identity:?];

  return v16;
}

+ (id)ruleForDeferringEventsMatchingPredicate:(id)predicate toTarget:(id)target withReason:(id)reason seed:(unsigned int)seed pid:(int)pid
{
  v10 = MEMORY[0x1E695DFD8];
  reasonCopy = reason;
  targetCopy = target;
  predicateCopy = predicate;
  v14 = [v10 set];
  v15 = [self ruleForDeferringEventsMatchingPredicate:? restrictedToEventDescriptors:? toTarget:? withReason:? seed:? pid:?];

  return v15;
}

@end