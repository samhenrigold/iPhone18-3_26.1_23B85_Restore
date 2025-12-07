@interface NSURL
- (id)urlByAppendingPathComponents:(id)components lastIsDirectory:(BOOL)directory;
@end

@implementation NSURL

- (id)urlByAppendingPathComponents:(id)components lastIsDirectory:(BOOL)directory
{
  directoryCopy = directory;
  componentsCopy = components;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = [componentsCopy count];
  if (v9)
  {
    v10 = v9 - 1;
    if (v9 == 1)
    {
      v13 = selfCopy;
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = [componentsCopy objectAtIndexedSubscript:v11];
        v13 = [(NSURL *)selfCopy URLByAppendingPathComponent:v12 isDirectory:1];

        ++v11;
        selfCopy = v13;
      }

      while (v10 != v11);
    }

    v14 = [componentsCopy objectAtIndexedSubscript:v10];
    selfCopy = [(NSURL *)v13 URLByAppendingPathComponent:v14 isDirectory:directoryCopy];
  }

  v15 = selfCopy;

  objc_autoreleasePoolPop(v7);

  return v15;
}

@end