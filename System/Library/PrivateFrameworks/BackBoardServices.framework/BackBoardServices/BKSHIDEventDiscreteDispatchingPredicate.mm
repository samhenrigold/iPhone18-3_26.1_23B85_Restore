@interface BKSHIDEventDiscreteDispatchingPredicate
- (BKSHIDEventDiscreteDispatchingPredicate)init;
- (BKSHIDEventDiscreteDispatchingPredicate)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)specifiesDescriptor:(id)descriptor;
- (id)_initWithSourceDescriptors:(id)descriptors descriptors:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)appendDescriptionToStream:(id)stream;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BKSHIDEventDiscreteDispatchingPredicate

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  collectionLineBreakNoneStyle = [MEMORY[0x1E698E690] collectionLineBreakNoneStyle];
  v7 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v9 = streamCopy;
  v6 = streamCopy;
  [v6 overlayStyle:v7 block:{3221225472, __69__BKSHIDEventDiscreteDispatchingPredicate_appendDescriptionToStream___block_invoke, &unk_1E6F47C78, selfCopy}];
}

void __69__BKSHIDEventDiscreteDispatchingPredicate_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    if ([v2 count])
    {
      v3 = [*(*(a1 + 32) + 8) allObjects];
      v4 = [*(a1 + 40) appendObject:? withName:?];

      goto LABEL_7;
    }

    v5 = *(a1 + 40);
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v6 = [v5 appendObject:? withName:?];
LABEL_7:
  v7 = [*(*(a1 + 32) + 16) allObjects];
  [BKSHIDEventDescriptor appendDescriptorArray:"appendDescriptorArray:toDescriptionStream:" toDescriptionStream:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ((v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class())) && BSEqualObjects())
    {
      v7 = BSEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (BKSHIDEventDiscreteDispatchingPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class() || (v6 = objc_opt_class(), v6 == objc_opt_class()))
  {
    v11 = MEMORY[0x1E695DFD8];
    objc_opt_class();
    v12 = [v11 setWithObjects:{objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClasses:? forKey:?];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v8 bs_containsObjectPassingTest:?])
      {
        goto LABEL_8;
      }
    }

    else if (v8)
    {
LABEL_8:
      v13 = MEMORY[0x1E696ABC0];
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:v8];
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
      v15 = [v13 errorWithDomain:? code:? userInfo:?];
      [coderCopy failWithError:?];

LABEL_12:
      goto LABEL_13;
    }

    v16 = MEMORY[0x1E695DFD8];
    objc_opt_class();
    v17 = [v16 setWithObjects:{objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:? forKey:?];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ![v9 bs_containsObjectPassingTest:?])
    {
      self = [BKSHIDEventDiscreteDispatchingPredicate _initWithSourceDescriptors:"_initWithSourceDescriptors:descriptors:" descriptors:?];
      selfCopy = self;
      goto LABEL_14;
    }

    v18 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:v9];
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    v20 = [v18 errorWithDomain:? code:? userInfo:?];
    [coderCopy failWithError:?];

    goto LABEL_12;
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v10 = [v7 errorWithDomain:? code:? userInfo:?];
  [coderCopy failWithError:?];

LABEL_13:
  selfCopy = 0;
LABEL_14:

  return selfCopy;
}

BOOL __57__BKSHIDEventDiscreteDispatchingPredicate_initWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

BOOL __57__BKSHIDEventDiscreteDispatchingPredicate_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return (isKindOfClass & 1) == 0;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:? forKey:?];
  [coderCopy encodeObject:? forKey:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v3 = [BKSMutableHIDEventDiscreteDispatchingPredicate allocWithZone:?];

  return [BKSHIDEventDiscreteDispatchingPredicate _initWithSourceDescriptors:v3 descriptors:"_initWithSourceDescriptors:descriptors:"];
}

- (BOOL)specifiesDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([(NSSet *)self->_descriptors containsObject:?])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = self->_fuzzyDescriptors;
    v5 = [NSSet countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v5)
    {
      v7 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v5; i = (i + 1))
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(8 * i) describes:?])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [NSSet countByEnumeratingWithState:v6 objects:"countByEnumeratingWithState:objects:count:" count:?];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

id __51__BKSHIDEventDiscreteDispatchingPredicate_displays__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 associatedDisplay];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[BKSHIDEventDisplay nullDisplay];
  }

  v5 = v4;

  return v5;
}

- (id)_initWithSourceDescriptors:(id)descriptors descriptors:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  descriptorsCopy = descriptors;
  v8 = a4;
  v9 = objc_opt_class();
  if (v9 != objc_opt_class())
  {
    v10 = objc_opt_class();
    if (v10 != objc_opt_class())
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        v32 = v27;
        v33 = 2114;
        v34 = v29;
        v35 = 2048;
        selfCopy = self;
        v37 = 2114;
        v38 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
        v39 = 1024;
        v40 = 45;
        v41 = 2114;
        v42 = v26;
        _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x18639E75CLL);
    }
  }

  v30.receiver = self;
  v30.super_class = BKSHIDEventDiscreteDispatchingPredicate;
  v11 = [(BKSHIDEventDiscreteDispatchingPredicate *)&v30 init];
  if (v11)
  {
    v12 = [descriptorsCopy copy];
    senderDescriptors = v11->_senderDescriptors;
    v11->_senderDescriptors = v12;

    v14 = [v8 copy];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x1E695DFD8] set];
    }

    descriptors = v11->_descriptors;
    v11->_descriptors = v16;

    v18 = v8;
    v19 = [v18 countByEnumeratingWithState:0 objects:? count:?];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = MEMORY[0];
      do
      {
        for (i = 0; i != v20; i = (i + 1))
        {
          if (MEMORY[0] != v22)
          {
            objc_enumerationMutation(v18);
          }

          if ([*(8 * i) requiresFuzzyMatching])
          {
            if (!v21)
            {
              v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
            }

            [(NSSet *)v21 addObject:?];
          }
        }

        v20 = [v18 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    fuzzyDescriptors = v11->_fuzzyDescriptors;
    v11->_fuzzyDescriptors = v21;
  }

  return v11;
}

- (BKSHIDEventDiscreteDispatchingPredicate)init
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
    v16 = @"BKSHIDEventDiscreteDispatchingPredicate.m";
    v17 = 1024;
    v18 = 40;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

@end