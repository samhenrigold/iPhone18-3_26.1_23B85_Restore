@interface DUPaths
+ (id)filename:(id)filename createIfNeeded:(BOOL)needed;
+ (id)filename:(id)filename subdirectory:(id)subdirectory createIfNeeded:(BOOL)needed;
+ (id)subdirectory:(id)subdirectory createIfNeeded:(BOOL)needed;
+ (id)topDirectory;
@end

@implementation DUPaths

+ (id)filename:(id)filename subdirectory:(id)subdirectory createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  filenameCopy = filename;
  subdirectoryCopy = subdirectory;
  v10 = objc_autoreleasePoolPush();
  v13 = objc_msgSend_subdirectory_createIfNeeded_(self, v11, subdirectoryCopy, neededCopy, v12);
  v17 = objc_msgSend_stringByAppendingPathComponent_(v13, v14, filenameCopy, v15, v16);

  objc_autoreleasePoolPop(v10);

  return v17;
}

+ (id)filename:(id)filename createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  filenameCopy = filename;
  v7 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_topDirectoryCreateIfNeeded_(self, v8, neededCopy, v9, v10);
  v15 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, filenameCopy, v13, v14);

  objc_autoreleasePoolPop(v7);

  return v15;
}

+ (id)subdirectory:(id)subdirectory createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  subdirectoryCopy = subdirectory;
  v7 = objc_autoreleasePoolPush();
  v11 = objc_msgSend_topDirectoryCreateIfNeeded_(self, v8, neededCopy, v9, v10);
  v15 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, subdirectoryCopy, v13, v14);

  objc_autoreleasePoolPop(v7);
  if (neededCopy)
  {
    sub_232CDFDC8(self, v15);
  }

  return v15;
}

+ (id)topDirectory
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_232CE044C;
  block[3] = &unk_2789A7E98;
  block[4] = self;
  if (qword_27DDD4DE8 != -1)
  {
    dispatch_once(&qword_27DDD4DE8, block);
  }

  v2 = qword_27DDD4DE0;

  return v2;
}

@end