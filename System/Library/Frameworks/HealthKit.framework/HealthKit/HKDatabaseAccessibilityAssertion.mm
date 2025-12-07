@interface HKDatabaseAccessibilityAssertion
- (HKDatabaseAccessibilityAssertion)initWithCoder:(id)coder;
- (HKDatabaseAccessibilityAssertion)initWithOwnerIdentifier:(id)identifier uuidString:(id)string;
- (HKHealthStore)healthStore;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation HKDatabaseAccessibilityAssertion

- (HKDatabaseAccessibilityAssertion)initWithOwnerIdentifier:(id)identifier uuidString:(id)string
{
  identifierCopy = identifier;
  stringCopy = string;
  v14.receiver = self;
  v14.super_class = HKDatabaseAccessibilityAssertion;
  v9 = [(HKDatabaseAccessibilityAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ownerIdentifier, identifier);
    v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:stringCopy];
    UUID = v10->_UUID;
    v10->_UUID = v11;

    v10->_isValid = 0;
  }

  return v10;
}

- (void)invalidate
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Attempted to invalidate an invalid assertion %{public}@", &v2, 0xCu);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  ownerIdentifier = self->_ownerIdentifier;
  v7 = coderCopy;
  if (ownerIdentifier)
  {
    [coderCopy encodeObject:ownerIdentifier forKey:@"OwnerIdentifier"];
    coderCopy = v7;
  }

  UUID = self->_UUID;
  if (UUID)
  {
    [v7 encodeObject:UUID forKey:@"UniqueIdentifier"];
    coderCopy = v7;
  }
}

- (HKDatabaseAccessibilityAssertion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy containsValueForKey:@"OwnerIdentifier"];
  if (!v5)
  {
    _HKInitializeLogging(v5, v6);
    v7 = HKLogAssertions(v14, v15);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [HKDatabaseAccessibilityAssertion initWithCoder:v7];
    }

    goto LABEL_9;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OwnerIdentifier"];
  v8 = [coderCopy containsValueForKey:@"UniqueIdentifier"];
  if ((v8 & 1) == 0)
  {
    _HKInitializeLogging(v8, v9);
    v18 = HKLogAssertions(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [HKDatabaseAccessibilityAssertion initWithCoder:v18];
    }

LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueIdentifier"];
  UUID = self->_UUID;
  self->_UUID = v10;

  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  self = [(HKDatabaseAccessibilityAssertion *)self initWithOwnerIdentifier:v7 uuidString:uUIDString];

  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (HKHealthStore)healthStore
{
  WeakRetained = objc_loadWeakRetained(&self->_healthStore);

  return WeakRetained;
}

@end