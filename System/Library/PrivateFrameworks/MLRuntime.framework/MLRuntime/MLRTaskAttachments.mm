@interface MLRTaskAttachments
- (MLRTaskAttachments)initWithCoder:(id)coder;
- (MLRTaskAttachments)initWithContentsOfURL:(id)l error:(id *)error;
- (MLRTaskAttachments)initWithDESRecipe:(id)recipe;
- (MLRTaskAttachments)initWithURLs:(id)ls;
- (id)attachmentURLsForBasename:(id)basename;
- (id)description;
@end

@implementation MLRTaskAttachments

- (MLRTaskAttachments)initWithURLs:(id)ls
{
  lsCopy = ls;
  v9.receiver = self;
  v9.super_class = MLRTaskAttachments;
  v5 = [(MLRTaskAttachments *)&v9 init];
  if (v5)
  {
    v6 = [lsCopy copy];
    attachmentURLs = v5->_attachmentURLs;
    v5->_attachmentURLs = v6;
  }

  return v5;
}

- (MLRTaskAttachments)initWithDESRecipe:(id)recipe
{
  if (recipe)
  {
    attachments = [recipe attachments];
    self = [(MLRTaskAttachments *)self initWithURLs:attachments];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MLRTaskAttachments)initWithContentsOfURL:(id)l error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  uRLByResolvingSymlinksInPath = [l URLByResolvingSymlinksInPath];
  if (!uRLByResolvingSymlinksInPath)
  {
    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Nil URL" userInfo:0];
    objc_exception_throw(v20);
  }

  v6 = uRLByResolvingSymlinksInPath;
  array = [MEMORY[0x277CBEB18] array];
  v8 = objc_autoreleasePoolPush();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [defaultManager enumeratorAtURL:v6 includingPropertiesForKeys:MEMORY[0x277CBEBF8] options:0 errorHandler:&__block_literal_global_1];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        if (([v16 hasDirectoryPath] & 1) == 0)
        {
          uRLByStandardizingPath = [v16 URLByStandardizingPath];
          [array addObject:uRLByStandardizingPath];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v8);
  v18 = [(MLRTaskAttachments *)self initWithURLs:array];

  return v18;
}

uint64_t __50__MLRTaskAttachments_initWithContentsOfURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if ([v5 code] != 260)
  {
    v6 = [MEMORY[0x277D05600] coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = v4;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_2577CB000, v6, OS_LOG_TYPE_DEFAULT, "Fail to enumerate %@: %@", &v8, 0x16u);
    }
  }

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(%@)\n", v5, self->_attachmentURLs];

  return v6;
}

- (id)attachmentURLsForBasename:(id)basename
{
  v23 = *MEMORY[0x277D85DE8];
  basenameCopy = basename;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_attachmentURLs;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        lastPathComponent = [v12 lastPathComponent];
        v14 = [lastPathComponent hasSuffix:basenameCopy];

        if (v14)
        {
          path = [v12 path];
          v16 = [defaultManager fileExistsAtPath:path];

          if (v16)
          {
            [v5 addObject:v12];
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v5;
}

- (MLRTaskAttachments)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"attachmentURLs"];

  v9 = [(MLRTaskAttachments *)self initWithURLs:v8];
  return v9;
}

@end