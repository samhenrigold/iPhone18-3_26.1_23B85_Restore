@interface JSBag
- (id)BOOLean:(id)lean;
- (id)array:(id)array;
- (id)dictionary:(id)dictionary;
- (id)double:(id)double;
- (id)integer:(id)integer;
- (id)string:(id)string;
- (id)url:(id)url;
@end

@implementation JSBag

- (id)string:(id)string
{
  stringCopy = string;
  selfCopy = self;
  v6 = sub_27058A394(stringCopy, sub_27058AAB4);

  return v6;
}

- (id)double:(id)double
{
  doubleCopy = double;
  selfCopy = self;
  v6 = sub_27058A394(doubleCopy, sub_27058AA80);

  return v6;
}

- (id)integer:(id)integer
{
  integerCopy = integer;
  selfCopy = self;
  v6 = sub_27058A394(integerCopy, sub_27058AA4C);

  return v6;
}

- (id)BOOLean:(id)lean
{
  leanCopy = lean;
  selfCopy = self;
  v6 = sub_27058A394(leanCopy, sub_27058AA18);

  return v6;
}

- (id)array:(id)array
{
  arrayCopy = array;
  selfCopy = self;
  v6 = sub_27058A394(arrayCopy, sub_27058A9E4);

  return v6;
}

- (id)dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  v6 = sub_27058A394(dictionaryCopy, sub_27058A9B0);

  return v6;
}

- (id)url:(id)url
{
  urlCopy = url;
  selfCopy = self;
  v6 = sub_27058A394(urlCopy, sub_27058A918);

  return v6;
}

@end