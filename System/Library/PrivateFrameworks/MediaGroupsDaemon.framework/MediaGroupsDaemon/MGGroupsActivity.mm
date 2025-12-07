@interface MGGroupsActivity
- (MGGroupsActivity)initWithName:(id)name;
- (id)description;
- (void)dealloc;
@end

@implementation MGGroupsActivity

- (MGGroupsActivity)initWithName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = MGGroupsActivity;
  v5 = [(MGGroupsActivity *)&v12 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEAA8]);
    when = v5->_when;
    v5->_when = v8;

    v10 = MGLogForCategory(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v14 = v5;
      v15 = 2112;
      v16 = nameCopy;
      _os_log_impl(&dword_25863A000, v10, OS_LOG_TYPE_DEFAULT, "%p starting %@", buf, 0x16u);
    }
  }

  return v5;
}

- (void)dealloc
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] now];
  when = [(MGGroupsActivity *)self when];
  [v3 timeIntervalSinceDate:when];
  v6 = v5;

  v7 = MGLogForCategory(2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [(MGGroupsActivity *)self name];
    *buf = 134218498;
    selfCopy = self;
    v12 = 2112;
    v13 = name;
    v14 = 2048;
    v15 = v6;
    _os_log_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEFAULT, "%p ending %@ (%g)", buf, 0x20u);
  }

  v9.receiver = self;
  v9.super_class = MGGroupsActivity;
  [(MGGroupsActivity *)&v9 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = [(MGGroupsActivity *)self name];
  when = [(MGGroupsActivity *)self when];
  v8 = [v3 stringWithFormat:@"<%@: %p, %@ - %@>", v5, self, name, when];

  return v8;
}

@end