@interface MBToolsFileHandleFactory
- (MBToolsFileHandleFactory)initWithKeyBag:(id)bag key:(id)key;
- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error;
@end

@implementation MBToolsFileHandleFactory

- (MBToolsFileHandleFactory)initWithKeyBag:(id)bag key:(id)key
{
  bagCopy = bag;
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = MBToolsFileHandleFactory;
  v9 = [(MBToolsFileHandleFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keybag, bag);
    objc_storeStrong(&v10->_key, key);
  }

  return v10;
}

- (id)fileHandleWithPath:(id)path flags:(int)flags mode:(unsigned __int16)mode error:(id *)error
{
  modeCopy = mode;
  v8 = *&flags;
  pathCopy = path;
  if (self->_keybag && self->_key)
  {
    v11 = [MBEncryptedFileHandle encryptedFileHandleForRestoreWithPath:"encryptedFileHandleForRestoreWithPath:keybag:key:error:" keybag:pathCopy key:? error:?];
  }

  else
  {
    v11 = [MBBasicFileHandle basicFileHandleWithPath:pathCopy flags:v8 mode:modeCopy error:error];
  }

  v12 = v11;

  return v12;
}

@end