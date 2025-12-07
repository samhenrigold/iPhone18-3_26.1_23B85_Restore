@interface ICASWindowSceneResizeData
- (ICASWindowSceneResizeData)initWithUsesMultiWindow:(id)window;
- (id)toDict;
@end

@implementation ICASWindowSceneResizeData

- (ICASWindowSceneResizeData)initWithUsesMultiWindow:(id)window
{
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = ICASWindowSceneResizeData;
  v6 = [(ICASWindowSceneResizeData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_usesMultiWindow, window);
  }

  return v7;
}

- (id)toDict
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = @"usesMultiWindow";
  usesMultiWindow = [(ICASWindowSceneResizeData *)self usesMultiWindow];
  if (usesMultiWindow)
  {
    usesMultiWindow2 = [(ICASWindowSceneResizeData *)self usesMultiWindow];
  }

  else
  {
    usesMultiWindow2 = objc_opt_new();
  }

  v5 = usesMultiWindow2;
  v9[0] = usesMultiWindow2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  return v6;
}

@end