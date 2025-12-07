@interface CXCallDirectoryLabeledPhoneNumberEntryData
- (CXCallDirectoryLabeledPhoneNumberEntryData)init;
- (CXCallDirectoryLabeledPhoneNumberEntryData)initWithCoder:(id)coder;
- (const)utf8LabelAtIndex:(unint64_t)index length:(unsigned __int16 *)length;
- (int64_t)phoneNumberAtIndex:(unint64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CXCallDirectoryLabeledPhoneNumberEntryData

- (CXCallDirectoryLabeledPhoneNumberEntryData)init
{
  v8.receiver = self;
  v8.super_class = CXCallDirectoryLabeledPhoneNumberEntryData;
  v2 = [(CXCallDirectoryLabeledPhoneNumberEntryData *)&v8 init];
  if (v2)
  {
    data = [MEMORY[0x1E695DEF0] data];
    phoneNumberData = v2->_phoneNumberData;
    v2->_phoneNumberData = data;

    data2 = [MEMORY[0x1E695DEF0] data];
    labelData = v2->_labelData;
    v2->_labelData = data2;
  }

  return v2;
}

- (int64_t)phoneNumberAtIndex:(unint64_t)index
{
  v8[0] = 0;
  v8[1] = 0;
  v4 = 16 * index;
  v5 = 16 * index + 16;
  v6 = [(NSData *)self->_phoneNumberData length];
  if (v5 > v6)
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData phoneNumberAtIndex:v6];
    return 0;
  }

  else
  {
    [(NSData *)self->_phoneNumberData getBytes:v8 range:v4, 16];
    return v8[0];
  }
}

- (const)utf8LabelAtIndex:(unint64_t)index length:(unsigned __int16 *)length
{
  v18 = 0;
  v19 = 0;
  v6 = 16 * index;
  v7 = 16 * index + 16;
  v8 = [(NSData *)self->_phoneNumberData length];
  if (v7 > v8)
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData utf8LabelAtIndex:v8 length:?];
    return 0;
  }

  [(NSData *)self->_phoneNumberData getBytes:&v18 range:v6, 16];
  v17 = 0;
  v9 = v19;
  v10 = v19 + 2;
  v11 = [(NSData *)self->_labelData length];
  if (v10 > v11)
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData utf8LabelAtIndex:v11 length:?];
    return 0;
  }

  [(NSData *)self->_labelData getBytes:&v17 range:v9, 2];
  v12 = v17;
  *length = v17;
  v13 = v12 + v19 + 2;
  v14 = [(NSData *)self->_labelData length];
  if (v13 > v14)
  {
    [CXCallDirectoryLabeledPhoneNumberEntryData utf8LabelAtIndex:v14 length:?];
    return 0;
  }

  bytes = [(NSData *)self->_labelData bytes];
  return &bytes[v19 + 2];
}

- (CXCallDirectoryLabeledPhoneNumberEntryData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CXCallDirectoryLabeledPhoneNumberEntryData;
  v5 = [(CXCallDirectoryLabeledPhoneNumberEntryData *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_phoneNumberData);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    phoneNumberData = v5->_phoneNumberData;
    v5->_phoneNumberData = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_labelData);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    labelData = v5->_labelData;
    v5->_labelData = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  phoneNumberData = [(CXCallDirectoryLabeledPhoneNumberEntryData *)self phoneNumberData];
  v6 = NSStringFromSelector(sel_phoneNumberData);
  [coderCopy encodeObject:phoneNumberData forKey:v6];

  labelData = [(CXCallDirectoryLabeledPhoneNumberEntryData *)self labelData];
  v7 = NSStringFromSelector(sel_labelData);
  [coderCopy encodeObject:labelData forKey:v7];
}

- (void)phoneNumberAtIndex:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v2 = CXDefaultLog(a1);
  if (OUTLINED_FUNCTION_3_0(v2))
  {
    v9 = 136315650;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, v9);
  }
}

- (void)utf8LabelAtIndex:(uint64_t)a1 length:.cold.1(uint64_t a1)
{
  v2 = CXDefaultLog(a1);
  if (OUTLINED_FUNCTION_3_0(v2))
  {
    v9 = 136315650;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, v9);
  }
}

- (void)utf8LabelAtIndex:(uint64_t)a1 length:.cold.2(uint64_t a1)
{
  v2 = CXDefaultLog(a1);
  if (OUTLINED_FUNCTION_3_0(v2))
  {
    v9 = 136315650;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, v9);
  }
}

- (void)utf8LabelAtIndex:(uint64_t)a1 length:.cold.3(uint64_t a1)
{
  v2 = CXDefaultLog(a1);
  if (OUTLINED_FUNCTION_3_0(v2))
  {
    v9 = 136315650;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1B47F3000, v3, v4, "Assertion failure: %s in %s:%d", v5, v6, v7, v8, v9);
  }
}

@end