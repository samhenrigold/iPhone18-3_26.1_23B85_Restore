@interface VFXMTLBuffer
- (int64_t)decrementUsedCount;
- (void)contents;
- (void)dealloc;
- (void)incrementUsedCount;
@end

@implementation VFXMTLBuffer

- (void)contents
{
  if (!self->_buffer)
  {
    v4 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDEA64C(v4, a2, v2, v5, v6, v7, v8, v9);
    }
  }

  return (objc_msgSend_contents(self->_buffer, a2, v2) + self->_offset);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLBuffer;
  [(VFXMTLBuffer *)&v3 dealloc];
}

- (void)incrementUsedCount
{
  v5 = objc_msgSend_usedCount(self, a2, v2) + 1;

  objc_msgSend_setUsedCount_(self, v4, v5);
}

- (int64_t)decrementUsedCount
{
  v4 = objc_msgSend_usedCount(self, a2, v2);
  objc_msgSend_setUsedCount_(self, v5, v4 - 1);

  return objc_msgSend_usedCount(self, v6, v7);
}

@end