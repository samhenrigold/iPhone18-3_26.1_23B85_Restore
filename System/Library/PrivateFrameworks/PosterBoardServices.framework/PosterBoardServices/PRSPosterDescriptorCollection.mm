@interface PRSPosterDescriptorCollection
+ (BOOL)validatePoster:(id)poster;
- (NSSet)mutableDescriptors;
- (void)dealloc;
@end

@implementation PRSPosterDescriptorCollection

- (NSSet)mutableDescriptors
{
  posters = [(PFPosterCollection *)self posters];
  v3 = [posters bs_filter:&__block_literal_global_1];

  return v3;
}

uint64_t __51__PRSPosterDescriptorCollection_mutableDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)validatePoster:(id)poster
{
  posterCopy = poster;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___PRSPosterDescriptorCollection;
    v5 = objc_msgSendSuper2(&v7, sel_validatePoster_, posterCopy);
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  mutableDescriptors = [(PRSPosterDescriptorCollection *)self mutableDescriptors];
  v4 = [mutableDescriptors countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(mutableDescriptors);
        }

        _path = [*(*(&v10 + 1) + 8 * v7) _path];
        [_path invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [mutableDescriptors countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = PRSPosterDescriptorCollection;
  [(PRSPosterDescriptorCollection *)&v9 dealloc];
}

@end