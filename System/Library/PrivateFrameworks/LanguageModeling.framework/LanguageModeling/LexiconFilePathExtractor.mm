@interface LexiconFilePathExtractor
- (id)lexiconFilePath:(id)path;
@end

@implementation LexiconFilePathExtractor

- (id)lexiconFilePath:(id)path
{
  v4 = MEMORY[0x1E696AAE8];
  v5 = objc_opt_class();
  v8 = objc_msgSend_bundleForClass_(v4, v6, v5, v7);

  return MEMORY[0x1EEE66B58](v8, sel_pathForResource_ofType_, path, &stru_1F24332A0);
}

@end