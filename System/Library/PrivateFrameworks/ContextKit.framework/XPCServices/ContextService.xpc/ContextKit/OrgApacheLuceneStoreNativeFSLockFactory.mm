@interface OrgApacheLuceneStoreNativeFSLockFactory
+ (void)initialize;
- (id)obtainFSLockWithOrgApacheLuceneStoreFSDirectory:(id)directory withNSString:(id)string;
@end

@implementation OrgApacheLuceneStoreNativeFSLockFactory

- (id)obtainFSLockWithOrgApacheLuceneStoreFSDirectory:(id)directory withNSString:(id)string
{
  if (!directory || (v5 = [directory getDirectory], OrgLukhnosPortmobileFileFiles_createDirectoriesWithOrgLukhnosPortmobileFilePath_(v5), !v5) || (v6 = objc_msgSend(v5, "resolveWithNSString:", string), OrgLukhnosPortmobileFileFiles_createFileWithOrgLukhnosPortmobileFilePath_(v6), !v6) || (v7 = objc_msgSend(v6, "toRealPath"), OrgLukhnosPortmobileFileAttributeBasicFileAttributes_class_(v7, v8), (AttributesWithOrgLukhnosPortmobileFilePath_withIOSClass = OrgLukhnosPortmobileFileFiles_readAttributesWithOrgLukhnosPortmobileFilePath_withIOSClass_(v7)) == 0) || (v10 = -[OrgLukhnosPortmobileFileAttributeBasicFileAttributes creationTime](AttributesWithOrgLukhnosPortmobileFilePath_withIOSClass, "creationTime"), !qword_100554738) || !v7)
  {
    JreThrowNullPointerException();
  }

  v11 = v10;
  if (![qword_100554738 addWithId:{objc_msgSend(v7, "description")}])
  {
    v32 = JreStrcat("$@", v12, v13, v14, v15, v16, v17, v18, @"Lock held by this virtual machine: ");
    v33 = new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(v32);
    objc_exception_throw(v33);
  }

  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v36[0] = qword_100557490;
  if ((atomic_load_explicit(OrgLukhnosPortmobileFileStandardOpenOptionEnum__initialized, memory_order_acquire) & 1) == 0)
  {
    objc_opt_class();
  }

  v36[1] = qword_100557488;
  v19 = [IOSObjectArray arrayWithObjects:v36 count:2 type:OrgLukhnosPortmobileFileStandardOpenOptionEnum_class_()];
  v20 = OrgLukhnosPortmobileChannelsUtilsFileChannelUtils_openWithOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileStandardOpenOptionEnumArray_(v7, v19);
  v21 = v20;
  if (!v20)
  {
    JreThrowNullPointerException();
  }

  tryLock = [v20 tryLock];
  if (!tryLock)
  {
    v34 = JreStrcat("$@", v22, v23, v24, v25, v26, v27, v28, @"Lock held by another program: ");
    v35 = new_OrgApacheLuceneStoreLockObtainFailedException_initWithNSString_(v34);
    objc_exception_throw(v35);
  }

  v30 = [OrgApacheLuceneStoreNativeFSLockFactory_NativeFSLock alloc];
  OrgApacheLuceneStoreNativeFSLockFactory_NativeFSLock_initWithJavaNioChannelsFileLock_withJavaNioChannelsFileChannel_withOrgLukhnosPortmobileFilePath_withOrgLukhnosPortmobileFileAttributeFileTime_(&v30->super.super.isa, tryLock, v21, v7, v11);
  return v30;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneStoreNativeFSLockFactory alloc];
    OrgApacheLuceneStoreFSLockFactory_init();
    JreStrongAssignAndConsume(&OrgApacheLuceneStoreNativeFSLockFactory_INSTANCE_, v2);
    v3 = new_JavaUtilHashSet_init();
    v5 = JavaUtilCollections_synchronizedSetWithJavaUtilSet_(v3, v4);
    JreStrongAssign(&qword_100554738, v5);
    atomic_store(1u, OrgApacheLuceneStoreNativeFSLockFactory__initialized);
  }
}

@end