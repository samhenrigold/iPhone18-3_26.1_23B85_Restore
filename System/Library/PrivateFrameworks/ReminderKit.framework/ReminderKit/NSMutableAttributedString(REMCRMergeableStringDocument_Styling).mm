@interface NSMutableAttributedString(REMCRMergeableStringDocument_Styling)
- (void)rem_setFontHint:()REMCRMergeableStringDocument_Styling isOn:inRange:;
- (void)rem_setUnderline:()REMCRMergeableStringDocument_Styling inRange:;
@end

@implementation NSMutableAttributedString(REMCRMergeableStringDocument_Styling)

- (void)rem_setFontHint:()REMCRMergeableStringDocument_Styling isOn:inRange:
{
  v23 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = a4;
    v24.length = [self length];
    v24.location = 0;
    v26.location = a5;
    v26.length = a6;
    v11 = NSIntersectionRange(v24, v26);
    if (v11.length && v11.location != 0x7FFFFFFFFFFFFFFFLL)
    {
      [self beginEditing];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __96__NSMutableAttributedString_REMCRMergeableStringDocument_Styling__rem_setFontHint_isOn_inRange___block_invoke;
      v15[3] = &unk_1E75089D8;
      v16 = v9;
      v15[4] = self;
      v15[5] = a3;
      [self enumerateAttributesInRange:v11.location options:v11.length usingBlock:{0x100000, v15}];
      [self endEditing];
      v12 = +[REMLog crdt];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = NSStringFromRange(v11);
        *buf = 134218498;
        selfCopy = self;
        v19 = 2048;
        v20 = a3;
        v21 = 2112;
        v22 = v13;
        _os_log_impl(&dword_19A0DB000, v12, OS_LOG_TYPE_INFO, "Added REMTTFontHint to this NSMutableAttributedString {self: %p, hint: %lu, range: %@}", buf, 0x20u);
      }
    }
  }

  else
  {
    v14 = [REMLog crdt:0];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v25.location = a5;
      v25.length = a6;
      [NSMutableAttributedString(REMCRMergeableStringDocument_Styling) rem_setFontHint:self isOn:v25 inRange:v14];
    }
  }
}

- (void)rem_setUnderline:()REMCRMergeableStringDocument_Styling inRange:
{
  v20 = *MEMORY[0x1E69E9840];
  v21.length = [self length];
  v21.location = 0;
  v22.location = a4;
  v22.length = a5;
  v9 = NSIntersectionRange(v21, v22);
  if (v9.length && v9.location != 0x7FFFFFFFFFFFFFFFLL)
  {
    [self beginEditing];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92__NSMutableAttributedString_REMCRMergeableStringDocument_Styling__rem_setUnderline_inRange___block_invoke;
    v12[3] = &unk_1E7508A00;
    v13 = a3;
    v12[4] = self;
    [self enumerateAttributesInRange:v9.location options:v9.length usingBlock:{0x100000, v12}];
    [self endEditing];
    v10 = +[REMLog crdt];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = NSStringFromRange(v9);
      *buf = 134218498;
      selfCopy = self;
      v16 = 1024;
      v17 = a3;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_INFO, "Added REMTTUnderline to this NSMutableAttributedString {self: %p, value: %d, range: %@}", buf, 0x1Cu);
    }
  }
}

- (void)rem_setFontHint:()REMCRMergeableStringDocument_Styling isOn:inRange:.cold.1(uint64_t a1, NSRange range, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromRange(range);
  v6 = 134218242;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_19A0DB000, a3, OS_LOG_TYPE_ERROR, "Invalid 0 value provided when trying to -rem_setFontHint:isOn:range: to this NSMutableAttributedString {self: %p, range: %@}", &v6, 0x16u);
}

@end