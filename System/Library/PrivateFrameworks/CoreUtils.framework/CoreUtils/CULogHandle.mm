@interface CULogHandle
- (CULogHandle)initWithSubsystem:(id)subsystem category:(id)category logLevel:(int)level logFlags:(unsigned int)flags;
- (void)dealloc;
- (void)setLabel:(id)label;
- (void)ulog:(int)ulog message:(id)message;
- (void)ulogf:(int)ulogf format:(id)format;
- (void)ulogv:(int)ulogv format:(id)format args:(char *)args;
@end

@implementation CULogHandle

- (void)dealloc
{
  ucatPtr = self->_ucatPtr;
  self->_ucatPtr = 0;
  LogCategory_Remove(ucatPtr);
  v4.receiver = self;
  v4.super_class = CULogHandle;
  [(CULogHandle *)&v4 dealloc];
}

- (void)ulogv:(int)ulogv format:(id)format args:(char *)args
{
  v6 = *&ulogv;
  formatCopy = format;
  v9 = formatCopy;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= v6)
  {
    v12 = formatCopy;
    if (ucatPtr->var0 != -1)
    {
LABEL_3:
      v11 = v9;
      formatCopy = LogPrintV(ucatPtr, "", v6, [v12 UTF8String], args);
      v9 = v12;
      goto LABEL_5;
    }

    formatCopy = _LogCategory_Initialize(ucatPtr, v6);
    v9 = v12;
    if (formatCopy)
    {
      ucatPtr = self->_ucatPtr;
      goto LABEL_3;
    }
  }

LABEL_5:

  MEMORY[0x1EEE66BB8](formatCopy, v9);
}

- (void)ulogf:(int)ulogf format:(id)format
{
  v4 = *&ulogf;
  formatCopy = format;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= v4 && (ucatPtr->var0 != -1 || _LogCategory_Initialize(ucatPtr, v4)))
  {
    LogPrintV(self->_ucatPtr, "", v4, [formatCopy UTF8String], &v8);
  }
}

- (void)ulog:(int)ulog message:(id)message
{
  v4 = *&ulog;
  messageCopy = message;
  v7 = messageCopy;
  ucatPtr = self->_ucatPtr;
  if (ucatPtr->var0 <= v4)
  {
    v15 = messageCopy;
    if (ucatPtr->var0 != -1)
    {
LABEL_3:
      v9 = v7;
      uTF8String = [v15 UTF8String];
      messageCopy = LogPrintF(ucatPtr, ", v4, "%s"", v11, v12, v13, v14, uTF8String);
      v7 = v15;
      goto LABEL_5;
    }

    messageCopy = _LogCategory_Initialize(ucatPtr, v4);
    v7 = v15;
    if (messageCopy)
    {
      ucatPtr = self->_ucatPtr;
      goto LABEL_3;
    }
  }

LABEL_5:

  MEMORY[0x1EEE66BB8](messageCopy, v7);
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  uTF8String = [(NSString *)self->_categoryName UTF8String];
  [labelCopy UTF8String];

  LogCategoryReplaceF(&self->_ucatPtr, "%s-%s", v7, v8, v9, v10, v11, v12, uTF8String);
}

- (CULogHandle)initWithSubsystem:(id)subsystem category:(id)category logLevel:(int)level logFlags:(unsigned int)flags
{
  subsystemCopy = subsystem;
  categoryCopy = category;
  v17.receiver = self;
  v17.super_class = CULogHandle;
  v12 = [(CULogHandle *)&v17 init];
  if (v12)
  {
    v16 = 0;
    v13 = LogCategoryCreateEx([subsystemCopy UTF8String], objc_msgSend(categoryCopy, "UTF8String"), level, flags, 0, &v16);
    v12->_ucatPtr = v13;
    if (!v13)
    {
      FatalErrorF("CULogHandle LogCategoryCreateEx failed: %#m", v16);
    }

    objc_storeStrong(&v12->_categoryName, category);
    v14 = v12;
  }

  return v12;
}

@end