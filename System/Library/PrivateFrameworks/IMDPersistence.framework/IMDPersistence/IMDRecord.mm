@interface IMDRecord
- (BOOL)isEqual:(id)equal;
- (IMDRecord)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMDRecord

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  if (self == equal)
  {
    return 1;
  }

  return _CFNonObjCEqual() != 0;
}

- (void)encodeWithCoder:(id)coder
{
  v6 = objc_msgSend__recordIdentifier(self, a2, coder, v3);
  objc_msgSend_encodeInt64_forKey_(coder, v7, v6, @"recordIdentifier");

  IMDBridgedRecordEncode(self, coder);
}

- (IMDRecord)initWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = IMDRecord;
  v6 = [(IMDRecord *)&v11 init];
  if (v6)
  {
    v7 = objc_msgSend_decodeInt64ForKey_(coder, v4, @"recordIdentifier", v5);
    objc_msgSend__setRecordIdentifier_(v6, v8, v7, v9);
    IMDBridgedRecordDecode(v6, coder);
  }

  return v6;
}

@end