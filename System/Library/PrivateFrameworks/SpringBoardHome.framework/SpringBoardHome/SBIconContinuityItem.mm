@interface SBIconContinuityItem
+ (SBIconContinuityItem)itemWithBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier;
+ (id)_resolvedItemForExplicitBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier;
+ (id)itemForBadgeTypeString:(id)string deviceTypeIdentifier:(id)identifier;
+ (id)itemForContinuityInfo:(id)info;
+ (int64_t)_continuityBadgeTypeForNSString:(id)string;
- (BOOL)isEqual:(id)equal;
- (SBIconContinuityItem)init;
- (SBIconContinuityItem)initWithBadgeType:(int64_t)type systemImageName:(id)name;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBIconContinuityItem

+ (id)itemForContinuityInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    if ([infoCopy isLocationBasedSuggestion])
    {
      v6 = 5;
    }

    else if ([v5 isBluetoothAudioPrediction])
    {
      v6 = 4;
    }

    else if ([v5 isBluetoothPrediction])
    {
      v6 = 3;
    }

    else if ([v5 isHeadphonesPrediction])
    {
      v6 = 2;
    }

    else if ([v5 isFirstWakePrediction])
    {
      v6 = 6;
    }

    else
    {
      v6 = 0;
    }

    originatingDeviceType = [v5 originatingDeviceType];
    v7 = [self _resolvedItemForExplicitBadgeType:v6 deviceTypeIdentifier:originatingDeviceType];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (SBIconContinuityItem)itemWithBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = identifierCopy;
  if (type == 1 && !identifierCopy)
  {
    NSLog(&cfstr_Sbiconcontinui.isa);
  }

  v8 = [self _resolvedItemForExplicitBadgeType:type deviceTypeIdentifier:v7];

  return v8;
}

- (SBIconContinuityItem)initWithBadgeType:(int64_t)type systemImageName:(id)name
{
  nameCopy = name;
  if (!type)
  {
    [SBIconContinuityItem initWithBadgeType:a2 systemImageName:self];
  }

  v9 = nameCopy;
  if (!nameCopy)
  {
    [SBIconContinuityItem initWithBadgeType:a2 systemImageName:self];
  }

  v13.receiver = self;
  v13.super_class = SBIconContinuityItem;
  v10 = [(SBIconContinuityItem *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_badgeType = type;
    objc_storeStrong(&v10->_systemImageName, name);
  }

  return v11;
}

- (SBIconContinuityItem)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed for SBIconContinuityItem"];
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
    v16 = @"SBIconContinuityItem.m";
    v17 = 1024;
    v18 = 74;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)itemForBadgeTypeString:(id)string deviceTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self itemWithBadgeType:objc_msgSend(self deviceTypeIdentifier:{"_continuityBadgeTypeForNSString:", string), identifierCopy}];

  return v7;
}

+ (id)_resolvedItemForExplicitBadgeType:(int64_t)type deviceTypeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v18 = 0;
    v7 = [MEMORY[0x1E69A8A40] symbolForTypeIdentifier:identifierCopy withResolutionStrategy:1 variantOptions:1 error:&v18];
    v8 = v18;
    if (v7)
    {
      name = [v7 name];
LABEL_6:

      type = 1;
      goto LABEL_23;
    }

    v10 = [identifierCopy isEqualToString:@"com.apple.mac"];
    if (v10)
    {
      name = @"display";
      goto LABEL_6;
    }

    v11 = SBLogContinuity(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SBIconContinuityItem _resolvedItemForExplicitBadgeType:identifierCopy deviceTypeIdentifier:v11];
    }
  }

  if (type > 3)
  {
    v13 = @"airpods";
    v14 = @"location.fill";
    v16 = @"alarm";
    if (type != 6)
    {
      v16 = 0;
    }

    if (type != 5)
    {
      v14 = v16;
    }

    v15 = type == 4;
  }

  else
  {
    v12 = 0;
    if (type < 2)
    {
      goto LABEL_24;
    }

    v13 = @"headphones";
    v14 = @"bluetooth";
    if (type != 3)
    {
      v14 = 0;
    }

    v15 = type == 2;
  }

  if (v15)
  {
    name = v13;
  }

  else
  {
    name = v14;
  }

LABEL_23:
  v12 = [[self alloc] initWithBadgeType:type systemImageName:name];

LABEL_24:

  return v12;
}

+ (int64_t)_continuityBadgeTypeForNSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeNone"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeDevice"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeAUX"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeBluetooth"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeHeadphones"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeLocation"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"SBIconContinuityBadgeTypeWake"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      badgeType = [(SBIconContinuityItem *)self badgeType];
      if (badgeType == [(SBIconContinuityItem *)v7 badgeType])
      {
        systemImageName = [(SBIconContinuityItem *)self systemImageName];
        systemImageName2 = [(SBIconContinuityItem *)v7 systemImageName];
        v11 = BSEqualObjects();
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  badgeType = [(SBIconContinuityItem *)self badgeType];
  systemImageName = [(SBIconContinuityItem *)self systemImageName];
  v5 = [systemImageName hash];

  return v5 ^ badgeType;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(SBIconContinuityItem *)self badgeType]- 1;
  if (v5 > 5)
  {
    v6 = @"none";
  }

  else
  {
    v6 = off_1E808A390[v5];
  }

  systemImageName = [(SBIconContinuityItem *)self systemImageName];
  v8 = [v3 stringWithFormat:@"<%@: %p badgeType: %@, systemImageName: %@>", v4, self, v6, systemImageName];;

  return v8;
}

- (void)initWithBadgeType:(const char *)a1 systemImageName:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"systemImageName != ((void*)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    v9 = @"SBIconContinuityItem.m";
    v10 = 1024;
    v11 = 64;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithBadgeType:(const char *)a1 systemImageName:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"badgeType != SBIconContinuityBadgeTypeNone"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0_1();
    v9 = @"SBIconContinuityItem.m";
    v10 = 1024;
    v11 = 63;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_1BEB18000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)_resolvedItemForExplicitBadgeType:(uint64_t)a1 deviceTypeIdentifier:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BEB18000, a2, OS_LOG_TYPE_ERROR, "Failed to find symbol for device type identifier: '%{public}@'", &v2, 0xCu);
}

@end