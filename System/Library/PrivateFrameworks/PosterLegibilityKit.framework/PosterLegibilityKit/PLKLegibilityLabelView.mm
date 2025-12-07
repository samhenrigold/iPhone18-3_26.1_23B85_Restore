@interface PLKLegibilityLabelView
- (void)setAttributedText:(id)text legibilityDescriptor:(id)descriptor;
@end

@implementation PLKLegibilityLabelView

- (void)setAttributedText:(id)text legibilityDescriptor:(id)descriptor
{
  textCopy = text;
  descriptorCopy = descriptor;
  if (!textCopy)
  {
    [PLKLegibilityLabelView setAttributedText:a2 legibilityDescriptor:self];
  }

  v9 = descriptorCopy;
  if (!descriptorCopy)
  {
    [PLKLegibilityLabelView setAttributedText:a2 legibilityDescriptor:self];
  }

  v10 = +[PLKLegibilityContentDataSource attributedStringContentDataSource];
  v11 = [v10 legibilityContentForObject:? legibilityDescriptor:?];
  v12.receiver = self;
  v12.super_class = PLKLegibilityLabelView;
  [(PLKLegibilityView *)&v12 setContent:v11];
}

- (void)setAttributedText:(const char *)a1 legibilityDescriptor:(uint64_t)a2 .cold.1(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"legibilityDescriptor"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"PLKLegibilityView.m";
    v10 = 1024;
    v11 = 371;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setAttributedText:(const char *)a1 legibilityDescriptor:(uint64_t)a2 .cold.2(const char *a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"attributedText"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a1);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_0();
    v9 = @"PLKLegibilityView.m";
    v10 = 1024;
    v11 = 370;
    v12 = v7;
    v13 = v3;
    _os_log_error_impl(&dword_21E5D5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end