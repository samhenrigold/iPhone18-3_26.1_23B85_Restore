@interface NLResourceWrapper
+ (id)copyAssetURLWithLocale:(id)locale contentType:(id)type contentName:(id)name;
@end

@implementation NLResourceWrapper

+ (id)copyAssetURLWithLocale:(id)locale contentType:(id)type contentName:(id)name
{
  CoreNLP::Resource::getAssetResource(&v7, locale, type, name, 0);
  if (v7 && CoreNLP::Resource::exists(v7))
  {
    v5 = [CoreNLP::Resource::URL(v7) copy];
  }

  else
  {
    v5 = 0;
  }

  std::unique_ptr<CoreNLP::Resource>::~unique_ptr[abi:ne200100](&v7);
  return v5;
}

@end