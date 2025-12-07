@interface NSCharacterSet(ZhuyinAddition)
+ (id)punctuationAndSymbolCharacterSet;
+ (id)zhuyinCharacterSet;
+ (id)zhuyinConsonantCharacterSet;
+ (id)zhuyinMedialCharacterSet;
+ (id)zhuyinPhonemeCharacterSet;
+ (id)zhuyinToneCharacterSet;
+ (id)zhuyinVowelCharacterSet;
@end

@implementation NSCharacterSet(ZhuyinAddition)

+ (id)zhuyinConsonantCharacterSet
{
  if (zhuyinConsonantCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinConsonantCharacterSet];
  }

  v2 = zhuyinConsonantCharacterSet___zhuyinConsonantCharacterSet;

  return v2;
}

+ (id)zhuyinMedialCharacterSet
{
  if (zhuyinMedialCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinMedialCharacterSet];
  }

  v2 = zhuyinMedialCharacterSet___zhuyinMedialCharacterSet;

  return v2;
}

+ (id)zhuyinVowelCharacterSet
{
  if (zhuyinVowelCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinVowelCharacterSet];
  }

  v2 = zhuyinVowelCharacterSet___zhuyinVowelCharacterSet;

  return v2;
}

+ (id)zhuyinPhonemeCharacterSet
{
  if (zhuyinPhonemeCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinPhonemeCharacterSet];
  }

  v2 = zhuyinPhonemeCharacterSet___zhuyinPhonemeCharacterSet;

  return v2;
}

+ (id)zhuyinToneCharacterSet
{
  if (zhuyinToneCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinToneCharacterSet];
  }

  v2 = zhuyinToneCharacterSet___zhuyinToneCharacterSet;

  return v2;
}

+ (id)zhuyinCharacterSet
{
  if (zhuyinCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) zhuyinCharacterSet];
  }

  v2 = zhuyinCharacterSet___zhuyinCharacterSet;

  return v2;
}

+ (id)punctuationAndSymbolCharacterSet
{
  if (punctuationAndSymbolCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(ZhuyinAddition) punctuationAndSymbolCharacterSet];
  }

  v2 = punctuationAndSymbolCharacterSet___punctuationAndSymbolCharacterSet;

  return v2;
}

@end