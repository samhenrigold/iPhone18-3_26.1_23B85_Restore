@interface IMDMessagePTask
- (IMDMessagePTask)initWithGUID:(id)d;
- (IMDMessagePTask)initWithStoreDictionary:(id)dictionary;
- (void)dealloc;
@end

@implementation IMDMessagePTask

- (IMDMessagePTask)initWithGUID:(id)d
{
  v6.receiver = self;
  v6.super_class = IMDMessagePTask;
  v4 = [(IMDMessagePTask *)&v6 init];
  if (v4)
  {
    v4->_guid = d;
    v4->_taskFlags = 0;
  }

  return v4;
}

- (IMDMessagePTask)initWithStoreDictionary:(id)dictionary
{
  v6 = objc_msgSend_objectForKeyedSubscript_(dictionary, a2, @"guid", v3);
  v11 = objc_msgSend_initWithGUID_(self, v7, v6, v8);
  if (v11)
  {
    v12 = objc_msgSend_objectForKeyedSubscript_(dictionary, v9, @"task_flags", v10);
    v11->_taskFlags = objc_msgSend_integerValue(v12, v13, v14, v15);
  }

  return v11;
}

- (void)dealloc
{
  self->_guid = 0;
  v3.receiver = self;
  v3.super_class = IMDMessagePTask;
  [(IMDMessagePTask *)&v3 dealloc];
}

@end