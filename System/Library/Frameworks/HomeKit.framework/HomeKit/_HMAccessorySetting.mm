@interface _HMAccessorySetting
+ (id)_encodedConstraintsToRemove:(id)remove;
+ (id)_replaceConstraintsPayloadWithAdditions:(id)additions removals:(id)removals keyPath:(id)path;
+ (id)logCategory;
+ (id)shortDescription;
+ (id)supportedConstraintClasses;
+ (id)supportedValueClasses;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReflected;
- (BOOL)mergeConstraints:(id)constraints;
- (BOOL)mergeObject:(id)object;
- (HMAccessorySettings)accessorySettings;
- (NSArray)constraints;
- (NSCopying)value;
- (NSUUID)messageTargetUUID;
- (_HMAccessorySetting)initWithCoder:(id)coder;
- (_HMAccessorySetting)initWithType:(int64_t)type properties:(unint64_t)properties name:(id)name constraints:(id)constraints;
- (_HMAccessorySettingDelegate)delegate;
- (id)constraintWithType:(int64_t)type;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)logIdentifier;
- (id)messageDestination;
- (id)shortDescription;
- (unint64_t)hash;
- (void)_handleUpdatedValue:(id)value;
- (void)_registerUpdatedValueHandlers;
- (void)addConstraint:(id)constraint;
- (void)addConstraint:(id)constraint completionHandler:(id)handler;
- (void)configureWithAccessorySettings:(id)settings context:(id)context shouldHandleUpdatedValue:(BOOL)value;
- (void)encodeWithCoder:(id)coder;
- (void)notifyDelegateOfAddedConstraint:(id)constraint;
- (void)notifyDelegateOfRemovedConstraint:(id)constraint;
- (void)removeConstraint:(id)constraint;
- (void)removeConstraint:(id)constraint completionHandler:(id)handler;
- (void)replaceConstraints:(id)constraints withConstraints:(id)withConstraints completionHandler:(id)handler;
- (void)setConstraints:(id)constraints;
- (void)setReflected:(BOOL)reflected;
- (void)setValue:(id)value;
- (void)unconfigure;
- (void)updateConstraints:(id)constraints completionHandler:(id)handler;
- (void)updateValue:(id)value completionHandler:(id)handler;
@end

@implementation _HMAccessorySetting

- (HMAccessorySettings)accessorySettings
{
  WeakRetained = objc_loadWeakRetained(&self->_accessorySettings);

  return WeakRetained;
}

- (_HMAccessorySettingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(_HMAccessorySetting *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  [coderCopy encodeInteger:-[_HMAccessorySetting type](self forKey:{"type"), @"HM.type"}];
  [coderCopy encodeInteger:-[_HMAccessorySetting properties](self forKey:{"properties"), @"HM.properties"}];
  name = [(_HMAccessorySetting *)self name];
  [coderCopy encodeObject:name forKey:@"HM.name"];

  constraints = [(_HMAccessorySetting *)self constraints];
  [coderCopy encodeObject:constraints forKey:@"HM.constraint"];

  value = [(_HMAccessorySetting *)self value];
  [coderCopy encodeObject:value forKey:@"HM.value"];
}

- (_HMAccessorySetting)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HM.type"];
  v6 = [coderCopy decodeIntegerForKey:@"HM.properties"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.name"];
  supportedConstraintClasses = [objc_opt_class() supportedConstraintClasses];
  v9 = [coderCopy decodeObjectOfClasses:supportedConstraintClasses forKey:@"HM.constraint"];

  v10 = [(_HMAccessorySetting *)self initWithType:v5 properties:v6 name:v7 constraints:v9];
  if (v10)
  {
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    v12 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v11];
    identifier = v10->_identifier;
    v10->_identifier = v12;

    supportedValueClasses = [objc_opt_class() supportedValueClasses];
    v15 = [coderCopy decodeObjectOfClasses:supportedValueClasses forKey:@"HM.value"];
    value = v10->_value;
    v10->_value = v15;

    v10->_reflected = [coderCopy decodeBoolForKey:@"HM.pms"];
  }

  return v10;
}

- (id)messageDestination
{
  messageTargetUUID = [(_HMAccessorySetting *)self messageTargetUUID];
  if (messageTargetUUID)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:messageTargetUUID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSUUID)messageTargetUUID
{
  accessorySettings = [(_HMAccessorySetting *)self accessorySettings];
  settingsContainerInternal = [accessorySettings settingsContainerInternal];
  containerUUID = [settingsContainerInternal containerUUID];

  return containerUUID;
}

- (BOOL)mergeConstraints:(id)constraints
{
  v47 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  v5 = MEMORY[0x1E695DFD8];
  constraints = [(_HMAccessorySetting *)self constraints];
  v7 = [v5 setWithArray:constraints];

  v8 = [MEMORY[0x1E695DFD8] setWithArray:constraintsCopy];
  v9 = [v7 mutableCopy];
  [v9 minusSet:v8];
  if ([v9 count])
  {
    v32 = constraintsCopy;
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v13;
      v45 = 2112;
      v46 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Removing constraints: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v9;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
    v16 = v15 != 0;
    if (v15)
    {
      v17 = v15;
      v18 = *v38;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v38 != v18)
          {
            objc_enumerationMutation(v14);
          }

          [(_HMAccessorySetting *)selfCopy removeConstraint:*(*(&v37 + 1) + 8 * i)];
        }

        v17 = [v14 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v17);
    }

    constraintsCopy = v32;
  }

  else
  {
    v16 = 0;
  }

  v20 = [v8 mutableCopy];
  [v20 minusSet:v7];
  if ([v20 count])
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v25 = v24 = constraintsCopy;
      *buf = 138543618;
      v44 = v25;
      v45 = 2112;
      v46 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Adding constraints: %@", buf, 0x16u);

      constraintsCopy = v24;
    }

    objc_autoreleasePoolPop(v21);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v20;
    v27 = [v26 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v34;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v26);
          }

          [(_HMAccessorySetting *)selfCopy2 addConstraint:*(*(&v33 + 1) + 8 * j)];
        }

        v28 = [v26 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v28);
      v16 = 1;
    }
  }

  return v16;
}

- (BOOL)mergeObject:(id)object
{
  v28 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    value = [(_HMAccessorySetting *)self value];
    value2 = [v6 value];
    v9 = HMFEqualObjects();

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier();
        value3 = [v6 value];
        v24 = 138543618;
        v25 = v13;
        v26 = 2112;
        v27 = value3;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Updated value: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      value4 = [v6 value];
      [(_HMAccessorySetting *)selfCopy setValue:value4];

      accessorySettings = [(_HMAccessorySetting *)selfCopy accessorySettings];
      delegate = [(_HMAccessorySetting *)selfCopy delegate];
      v18 = [delegate keyPathForSetting:selfCopy];
      [accessorySettings _notifyDelegateDidUpdateKeyPath:v18];
    }

    v19 = v9 ^ 1;
    constraints = [objectCopy constraints];
    v21 = [(_HMAccessorySetting *)self mergeConstraints:constraints];

    v22 = v21 | v19;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (id)logIdentifier
{
  identifier = [(_HMAccessorySetting *)self identifier];
  uUIDString = [identifier UUIDString];

  return uUIDString;
}

- (void)updateValue:(id)value completionHandler:(id)handler
{
  v61 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  handlerCopy = handler;
  context = [(_HMAccessorySetting *)self context];
  if (!handlerCopy)
  {
    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAccessorySetting updateValue:completionHandler:]", @"completionHandler"];
    v38 = objc_autoreleasePoolPush();
    selfCopy = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v41;
      v57 = 2112;
      v58 = v37;
      _os_log_impl(&dword_19BB39000, v40, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v37 userInfo:0];
    objc_exception_throw(v42);
  }

  v9 = context;
  if (context)
  {
    accessorySettings = [(_HMAccessorySetting *)self accessorySettings];
    if (accessorySettings)
    {
      delegate = [(_HMAccessorySetting *)self delegate];
      v12 = [delegate keyPathForSetting:self];

      settingsContainer = [accessorySettings settingsContainer];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = settingsContainer;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      if (v15 && [v15 supportsMessagedHomePodSettings])
      {
        v16 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v18 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = HMFGetLogIdentifier();
          *buf = 138543874;
          v56 = v19;
          v57 = 2112;
          v58 = v12;
          v59 = 2112;
          v60 = valueCopy;
          _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating through settings adapter with keypath: %@ value: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v16);
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __53___HMAccessorySetting_updateValue_completionHandler___block_invoke;
        v53[3] = &unk_1E754D870;
        v53[4] = selfCopy2;
        v54 = handlerCopy;
        [v15 updateSettingWithKeyPath:v12 value:valueCopy completionHandler:v53];
      }

      else
      {
        settingsContainer2 = [accessorySettings settingsContainer];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = settingsContainer2;
        }

        else
        {
          v25 = 0;
        }

        v26 = v25;

        if (v26 && [v26 supportsMessagedHomepodSettings])
        {
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_123;
          v50[3] = &unk_1E754D898;
          v50[4] = self;
          v51 = v12;
          v52 = handlerCopy;
          [v26 updateSettingWithKeyPath:v51 value:valueCopy completionHandler:v50];
        }

        else
        {
          v43 = v15;
          v30 = objc_autoreleasePoolPush();
          selfCopy3 = self;
          v32 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            v33 = HMFGetLogIdentifier();
            *buf = 138543874;
            v56 = v33;
            v57 = 2112;
            v58 = v12;
            v59 = 2112;
            v60 = valueCopy;
            _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_INFO, "%{public}@Updating through sending update value message with keypath: %@ value: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v30);
          v34 = [valueCopy copy];
          queue = [v9 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __53___HMAccessorySetting_updateValue_completionHandler___block_invoke_124;
          block[3] = &unk_1E754D8C0;
          block[4] = selfCopy3;
          v49 = handlerCopy;
          v45 = v34;
          v46 = v12;
          v47 = accessorySettings;
          v48 = v9;
          v36 = v34;
          dispatch_async(queue, block);

          v15 = v43;
        }
      }
    }

    else
    {
      v27 = objc_autoreleasePoolPush();
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v56 = v29;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@VERIFY_ACCESSORYSETTINGS - nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v27);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v56 = v23;
      v57 = 2080;
      v58 = "[_HMAccessorySetting updateValue:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    accessorySettings = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, accessorySettings);
  }
}

- (void)_handleUpdatedValue:(id)value
{
  v61 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  context = [(_HMAccessorySetting *)self context];
  v6 = context;
  if (context)
  {
    pendingRequests = [context pendingRequests];
    identifier = [valueCopy identifier];
    v9 = [pendingRequests retrieveCompletionBlockForIdentifier:identifier];

    if (v9)
    {
LABEL_3:
      [valueCopy respondWithPayload:{0, v49, v50, v51, v52, v53}];
LABEL_4:

      goto LABEL_8;
    }

    v14 = [valueCopy dataForKey:@"value"];
    if (!v14)
    {
      v33 = objc_autoreleasePoolPush();
      selfCopy = self;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        messagePayload = [valueCopy messagePayload];
        *buf = 138543618;
        v58 = v36;
        v59 = 2112;
        v60 = messagePayload;
        _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@Missing updated serialized value from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [valueCopy respondWithError:v38];

      goto LABEL_4;
    }

    v15 = MEMORY[0x1E696ACD0];
    v16 = +[_HMAccessorySetting supportedValueClasses];
    v56 = 0;
    v17 = [v15 unarchivedObjectOfClasses:v16 fromData:v14 error:&v56];
    v49 = v56;

    if (!v17)
    {
      v39 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v42;
        v59 = 2112;
        v60 = v49;
        _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive supported value from value data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v39);
      v43 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [valueCopy respondWithError:v43];

      goto LABEL_4;
    }

    v18 = [valueCopy stringForKey:@"keyPath"];
    if (v18)
    {
      delegate = [(_HMAccessorySetting *)self delegate];
      v20 = [delegate keyPathForSetting:self];
      v21 = [v18 isEqualToString:v20];

      if (v21)
      {
        null = [MEMORY[0x1E695DFB0] null];
        v23 = [v17 isEqual:null];

        if (v23)
        {

          v17 = 0;
        }

        v24 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v58 = v27;
          v59 = 2112;
          v60 = v17;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Updating value to: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        value = [(_HMAccessorySetting *)selfCopy3 value];
        v29 = HMFEqualObjects();

        if ((v29 & 1) == 0)
        {
          objc_initWeak(buf, selfCopy3);
          delegate2 = [(_HMAccessorySetting *)selfCopy3 delegate];
          accessorySettings = [(_HMAccessorySetting *)selfCopy3 accessorySettings];
          [delegate2 _settingWillUpdateValue:selfCopy3];
          v50 = MEMORY[0x1E69E9820];
          v51 = 3221225472;
          v52 = __43___HMAccessorySetting__handleUpdatedValue___block_invoke;
          v53 = &unk_1E754D848;
          objc_copyWeak(&v55, buf);
          v54 = v17;
          [accessorySettings _updateSettingsWithBlock:&v50];
          v32 = [delegate2 keyPathForSetting:selfCopy3];
          [accessorySettings _notifyDelegateDidUpdateKeyPath:v32];

          objc_destroyWeak(&v55);
          objc_destroyWeak(buf);
        }

        goto LABEL_3;
      }
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        *buf = 138543362;
        v58 = v47;
        _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_INFO, "%{public}@Accessory settings update value message missing key path", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v44);
      v48 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [valueCopy respondWithError:v48];
    }

    goto LABEL_4;
  }

  v10 = objc_autoreleasePoolPush();
  selfCopy5 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v13;
    v59 = 2080;
    v60 = "[_HMAccessorySetting _handleUpdatedValue:]";
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
LABEL_8:
}

- (void)setValue:(id)value
{
  valueCopy = value;
  os_unfair_lock_lock_with_options();
  value = self->_value;
  self->_value = valueCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSCopying)value
{
  os_unfair_lock_lock_with_options();
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateConstraints:(id)constraints completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  handlerCopy = handler;
  context = [(_HMAccessorySetting *)self context];
  if (!handlerCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAccessorySetting updateConstraints:completionHandler:]", @"completionHandler"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v25;
      v34 = 2112;
      v35 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v9 = context;
  if (context)
  {
    v10 = [constraintsCopy copy];
    accessorySettings = [(_HMAccessorySetting *)self accessorySettings];
    if (accessorySettings)
    {
      queue = [v9 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59___HMAccessorySetting_updateConstraints_completionHandler___block_invoke;
      block[3] = &unk_1E754D7A8;
      block[4] = self;
      v28 = v10;
      v31 = handlerCopy;
      v29 = accessorySettings;
      v30 = v9;
      dispatch_async(queue, block);
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@VERIFY_ACCESSORYSETTINGS - nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v20 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v20);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2080;
      v35 = "[_HMAccessorySetting updateConstraints:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v10);
  }
}

- (void)replaceConstraints:(id)constraints withConstraints:(id)withConstraints completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  constraintsCopy = constraints;
  withConstraintsCopy = withConstraints;
  handlerCopy = handler;
  context = [(_HMAccessorySetting *)self context];
  if (!handlerCopy)
  {
    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAccessorySetting replaceConstraints:withConstraints:completionHandler:]", @"completionHandler"];
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v29;
      v41 = 2112;
      v42 = v25;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
    objc_exception_throw(v30);
  }

  v12 = context;
  if (context)
  {
    v13 = [constraintsCopy copy];
    v14 = [withConstraintsCopy copy];
    accessorySettings = [(_HMAccessorySetting *)self accessorySettings];
    if (accessorySettings)
    {
      queue = [v12 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76___HMAccessorySetting_replaceConstraints_withConstraints_completionHandler___block_invoke;
      block[3] = &unk_1E754D7F8;
      block[4] = self;
      v32 = v13;
      v33 = v14;
      v34 = constraintsCopy;
      v35 = withConstraintsCopy;
      v38 = handlerCopy;
      v36 = accessorySettings;
      v37 = v12;
      dispatch_async(queue, block);
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543362;
        v40 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@VERIFY_ACCESSORYSETTINGS - nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v24);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v20;
      v41 = 2080;
      v42 = "[_HMAccessorySetting replaceConstraints:withConstraints:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v13);
  }
}

- (void)setReflected:(BOOL)reflected
{
  os_unfair_lock_lock_with_options();
  self->_reflected = reflected;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isReflected
{
  os_unfair_lock_lock_with_options();
  reflected = self->_reflected;
  os_unfair_lock_unlock(&self->_lock);
  return reflected;
}

- (void)removeConstraint:(id)constraint completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  handlerCopy = handler;
  context = [(_HMAccessorySetting *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAccessorySetting removeConstraint:completionHandler:]", @"completionHandler"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v9 = context;
  if (context)
  {
    accessorySettings = [(_HMAccessorySetting *)self accessorySettings];
    if (accessorySettings)
    {
      queue = [v9 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __58___HMAccessorySetting_removeConstraint_completionHandler___block_invoke;
      block[3] = &unk_1E754D7A8;
      v27 = constraintCopy;
      selfCopy2 = self;
      v31 = handlerCopy;
      v29 = accessorySettings;
      v30 = v9;
      dispatch_async(queue, block);

      v12 = v27;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@VERIFY_ACCESSORYSETTINGS - nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2080;
      v35 = "[_HMAccessorySetting removeConstraint:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    accessorySettings = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, accessorySettings);
  }
}

- (void)notifyDelegateOfRemovedConstraint:(id)constraint
{
  v18 = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  context = [(_HMAccessorySetting *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57___HMAccessorySetting_notifyDelegateOfRemovedConstraint___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = constraintCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[_HMAccessorySetting notifyDelegateOfRemovedConstraint:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)removeConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (constraintCopy)
  {
    v5 = constraintCopy;
    os_unfair_lock_lock_with_options();
    if ([(NSMutableOrderedSet *)self->_constraints containsObject:v5])
    {
      [(NSMutableOrderedSet *)self->_constraints removeObject:v5];
      os_unfair_lock_unlock(&self->_lock);
      [(_HMAccessorySetting *)self notifyDelegateOfRemovedConstraint:v5];
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)addConstraint:(id)constraint completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  handlerCopy = handler;
  context = [(_HMAccessorySetting *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAccessorySetting addConstraint:completionHandler:]", @"completionHandler"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v24;
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v9 = context;
  if (context)
  {
    accessorySettings = [(_HMAccessorySetting *)self accessorySettings];
    if (accessorySettings)
    {
      queue = [v9 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55___HMAccessorySetting_addConstraint_completionHandler___block_invoke;
      block[3] = &unk_1E754D7A8;
      v27 = constraintCopy;
      selfCopy2 = self;
      v31 = handlerCopy;
      v29 = accessorySettings;
      v30 = v9;
      dispatch_async(queue, block);

      v12 = v27;
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v33 = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@VERIFY_ACCESSORYSETTINGS - nil", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:2 userInfo:0];
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v16;
      v34 = 2080;
      v35 = "[_HMAccessorySetting addConstraint:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    accessorySettings = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, accessorySettings);
  }
}

- (void)notifyDelegateOfAddedConstraint:(id)constraint
{
  v18 = *MEMORY[0x1E69E9840];
  constraintCopy = constraint;
  context = [(_HMAccessorySetting *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55___HMAccessorySetting_notifyDelegateOfAddedConstraint___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = constraintCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[_HMAccessorySetting notifyDelegateOfAddedConstraint:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)addConstraint:(id)constraint
{
  constraintCopy = constraint;
  if (constraintCopy)
  {
    v5 = constraintCopy;
    os_unfair_lock_lock_with_options();
    if (([(NSMutableOrderedSet *)self->_constraints containsObject:v5]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      [(NSMutableOrderedSet *)self->_constraints addObject:v5];
      os_unfair_lock_unlock(&self->_lock);
      [(_HMAccessorySetting *)self notifyDelegateOfAddedConstraint:v5];
    }
  }

  MEMORY[0x1EEE66BE0]();
}

- (id)constraintWithType:(int64_t)type
{
  v17 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_constraints;
  v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableOrderedSet *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  os_unfair_lock_unlock(&self->_lock);

  return v10;
}

- (void)setConstraints:(id)constraints
{
  v4 = [MEMORY[0x1E695DFA0] orderedSetWithArray:constraints];
  os_unfair_lock_lock_with_options();
  constraints = self->_constraints;
  self->_constraints = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)constraints
{
  os_unfair_lock_lock_with_options();
  array = [(NSMutableOrderedSet *)self->_constraints array];
  v4 = [array copy];

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)_registerUpdatedValueHandlers
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Registering message for updated value", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(_HMAccessorySetting *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMAS.uv" receiver:selfCopy selector:sel__handleUpdatedValue_];
}

- (void)configureWithAccessorySettings:(id)settings context:(id)context shouldHandleUpdatedValue:(BOOL)value
{
  valueCopy = value;
  v18 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  contextCopy = context;
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v13;
    v16 = 2112;
    v17 = contextCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v10);
  [(_HMAccessorySetting *)selfCopy setAccessorySettings:settingsCopy];
  [(_HMAccessorySetting *)selfCopy setContext:contextCopy];
  if (valueCopy)
  {
    [(_HMAccessorySetting *)selfCopy _registerUpdatedValueHandlers];
  }
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  identifier = [(_HMAccessorySetting *)self identifier];
  uUIDString = [identifier UUIDString];
  name = [(_HMAccessorySetting *)self name];
  value = [(_HMAccessorySetting *)self value];
  v12 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Name = %@, Value = %@>", shortDescription, v7, uUIDString, name, value];

  if (pointerCopy)
  {
  }

  return v12;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  name = [(_HMAccessorySetting *)self name];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, name];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      identifier = [(_HMAccessorySetting *)self identifier];
      identifier2 = [(_HMAccessorySetting *)v6 identifier];
      v9 = [identifier isEqual:identifier2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(_HMAccessorySetting *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (void)unconfigure
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring accessorySetting", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(_HMAccessorySetting *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  [(_HMAccessorySetting *)selfCopy setContext:0];
}

- (_HMAccessorySetting)initWithType:(int64_t)type properties:(unint64_t)properties name:(id)name constraints:(id)constraints
{
  nameCopy = name;
  constraintsCopy = constraints;
  if (nameCopy)
  {
    v23.receiver = self;
    v23.super_class = _HMAccessorySetting;
    v12 = [(_HMAccessorySetting *)&v23 init];
    if (v12)
    {
      v13 = MEMORY[0x1E69A2A28];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v13 hmf_cachedInstanceForNSUUID:uUID];
      identifier = v12->_identifier;
      v12->_identifier = v15;

      v12->_type = type;
      v12->_properties = properties;
      v17 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:nameCopy];
      name = v12->_name;
      v12->_name = v17;

      if (constraintsCopy)
      {
        [MEMORY[0x1E695DFA0] orderedSetWithArray:constraintsCopy];
      }

      else
      {
        [MEMORY[0x1E695DFA0] orderedSet];
      }
      v19 = ;
      constraints = v12->_constraints;
      v12->_constraints = v19;
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)supportedConstraintClasses
{
  if (supportedConstraintClasses_onceToken != -1)
  {
    dispatch_once(&supportedConstraintClasses_onceToken, &__block_literal_global_139);
  }

  v3 = supportedConstraintClasses_supportedConstraintClasses;

  return v3;
}

+ (id)supportedValueClasses
{
  if (supportedValueClasses_onceToken_60499 != -1)
  {
    dispatch_once(&supportedValueClasses_onceToken_60499, &__block_literal_global_133);
  }

  v3 = supportedValueClasses_supportedValueClasses_60500;

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t63 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t63, &__block_literal_global_60536);
  }

  v3 = logCategory__hmf_once_v64;

  return v3;
}

+ (id)_replaceConstraintsPayloadWithAdditions:(id)additions removals:(id)removals keyPath:(id)path
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"remove";
  v13[1] = @"add";
  v14[0] = removals;
  v14[1] = additions;
  v13[2] = @"keyPath";
  v14[2] = path;
  v7 = MEMORY[0x1E695DF20];
  pathCopy = path;
  removalsCopy = removals;
  additionsCopy = additions;
  v11 = [v7 dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

+ (id)_encodedConstraintsToRemove:(id)remove
{
  v18 = *MEMORY[0x1E69E9840];
  removeCopy = remove;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(removeCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = removeCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        identifier = [*(*(&v13 + 1) + 8 * i) identifier];
        uUIDString = [identifier UUIDString];
        [v4 addObject:uUIDString];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end