@interface REMReminderSortDescriptor
+ (id)sortDescriptorSortingByCreationDateAscending:(BOOL)ascending;
+ (id)sortDescriptorSortingByDueDateAscending:(BOOL)ascending;
+ (id)sortDescriptorSortingByOrderingInListAscending:(BOOL)ascending;
+ (id)sortDescriptorSortingByPriorityAscending:(BOOL)ascending;
+ (id)sortDescriptorSortingByTitleAscending:(BOOL)ascending;
- (BOOL)isEqual:(id)equal;
- (REMReminderSortDescriptor)initWithCoder:(id)coder;
- (REMReminderSortDescriptor)initWithType:(int64_t)type ascending:(BOOL)ascending;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderSortDescriptor

- (REMReminderSortDescriptor)initWithType:(int64_t)type ascending:(BOOL)ascending
{
  v7.receiver = self;
  v7.super_class = REMReminderSortDescriptor;
  result = [(REMReminderSortDescriptor *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_ascending = ascending;
  }

  return result;
}

+ (id)sortDescriptorSortingByTitleAscending:(BOOL)ascending
{
  v3 = [[REMReminderSortDescriptor alloc] initWithType:0 ascending:ascending];

  return v3;
}

+ (id)sortDescriptorSortingByCreationDateAscending:(BOOL)ascending
{
  v3 = [[REMReminderSortDescriptor alloc] initWithType:1 ascending:ascending];

  return v3;
}

+ (id)sortDescriptorSortingByDueDateAscending:(BOOL)ascending
{
  v3 = [[REMReminderSortDescriptor alloc] initWithType:2 ascending:ascending];

  return v3;
}

+ (id)sortDescriptorSortingByPriorityAscending:(BOOL)ascending
{
  v3 = [[REMReminderSortDescriptor alloc] initWithType:3 ascending:ascending];

  return v3;
}

+ (id)sortDescriptorSortingByOrderingInListAscending:(BOOL)ascending
{
  v3 = [[REMReminderSortDescriptor alloc] initWithType:4 ascending:ascending];

  return v3;
}

- (REMReminderSortDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  if (v5 >= 5)
  {
    v6 = os_log_create("com.apple.reminderkit", "default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(REMReminderSortDescriptor *)v5 initWithCoder:v6];
    }

    v5 = 1;
  }

  v7 = -[REMReminderSortDescriptor initWithType:ascending:](self, "initWithType:ascending:", v5, [coderCopy decodeBoolForKey:@"ascending"]);

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMReminderSortDescriptor type](self forKey:{"type"), @"type"}];
  [coderCopy encodeBool:-[REMReminderSortDescriptor ascending](self forKey:{"ascending"), @"ascending"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [(REMReminderSortDescriptor *)self type], v7 == [(REMReminderSortDescriptor *)v6 type]))
    {
      ascending = [(REMReminderSortDescriptor *)self ascending];
      v9 = ascending ^ [(REMReminderSortDescriptor *)v6 ascending]^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  return v9;
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Unknown REMReminderSortDescriptorType %ld", &v2, 0xCu);
}

@end