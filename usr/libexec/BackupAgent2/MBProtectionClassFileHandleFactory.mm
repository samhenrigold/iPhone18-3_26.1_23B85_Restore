@interface MBProtectionClassFileHandleFactory
+ (id)factoryWithProtectionClass:(unsigned __int8)class;
- (MBProtectionClassFileHandleFactory)initWithProtectionClass:(unsigned __int8)class;
- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error;
@end

@implementation MBProtectionClassFileHandleFactory

+ (id)factoryWithProtectionClass:(unsigned __int8)class
{
  v3 = [[MBProtectionClassFileHandleFactory alloc] initWithProtectionClass:class];

  return v3;
}

- (MBProtectionClassFileHandleFactory)initWithProtectionClass:(unsigned __int8)class
{
  classCopy = class;
  if (sub_1000707C8(class, 1, 0) == 255)
  {
    sub_1000A0430(a2, self, classCopy);
  }

  v7.receiver = self;
  v7.super_class = MBProtectionClassFileHandleFactory;
  result = [(MBProtectionClassFileHandleFactory *)&v7 init];
  if (result)
  {
    result->_protectionClass = classCopy;
  }

  return result;
}

- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v8 = *&flags;
  pathCopy = path;
  v11 = [MBBasicFileHandle basicFileHandleWithPath:pathCopy flags:v8 mode:modeCopy error:error];
  if (!v11)
  {
    v17 = 0;
LABEL_9:
    v18 = v11;
    goto LABEL_10;
  }

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    protectionClass = self->_protectionClass;
    *buf = 67109378;
    v22 = protectionClass;
    v23 = 2112;
    v24 = pathCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting protection class to %d: %@", buf, 0x12u);
    _MBLog(@"I ", "Setting protection class to %d: %@", self->_protectionClass, pathCopy);
  }

  v14 = [v11 fd];
  v15 = self->_protectionClass;
  v20 = 0;
  v16 = [MBProtectionClassUtils setWithFD:v14 value:v15 error:&v20];
  v17 = v20;
  if (v16)
  {
    goto LABEL_9;
  }

  if (error)
  {
    *error = [MBError errorWithCode:100 error:v17 path:pathCopy format:@"Error setting protection class to %d", self->_protectionClass];
  }

  [v11 closeWithError:0];
  v18 = 0;
LABEL_10:

  return v18;
}

@end