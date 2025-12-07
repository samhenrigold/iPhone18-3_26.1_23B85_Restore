@interface RBSWrappedLSInfo
+ (id)infoWithBundleID:(id)d personaString:(id)string persistentJobLabel:(id)label platform:(int)platform bundleInode:(unint64_t)inode execInode:(unint64_t)execInode;
- (id)_initWithBundleID:(id)d personaString:(id)string persistentJobLabel:(id)label platform:(int)platform bundleInode:(unint64_t)inode execInode:(unint64_t)execInode;
@end

@implementation RBSWrappedLSInfo

- (id)_initWithBundleID:(id)d personaString:(id)string persistentJobLabel:(id)label platform:(int)platform bundleInode:(unint64_t)inode execInode:(unint64_t)execInode
{
  dCopy = d;
  stringCopy = string;
  labelCopy = label;
  v22.receiver = self;
  v22.super_class = RBSWrappedLSInfo;
  v18 = [(RBSWrappedLSInfo *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_bundleID, d);
    objc_storeStrong(&v19->_personaString, string);
    objc_storeStrong(&v19->_persistentJobLabel, label);
    v19->_platform = platform;
    v19->_bundleInode = inode;
    v19->_execInode = execInode;
    v20 = v19;
  }

  return v19;
}

+ (id)infoWithBundleID:(id)d personaString:(id)string persistentJobLabel:(id)label platform:(int)platform bundleInode:(unint64_t)inode execInode:(unint64_t)execInode
{
  v10 = *&platform;
  labelCopy = label;
  stringCopy = string;
  dCopy = d;
  v16 = [[RBSWrappedLSInfo alloc] _initWithBundleID:dCopy personaString:stringCopy persistentJobLabel:labelCopy platform:v10 bundleInode:inode execInode:execInode];

  return v16;
}

@end