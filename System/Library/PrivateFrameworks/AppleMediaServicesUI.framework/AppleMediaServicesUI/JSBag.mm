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

- (id)dictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  selfCopy = self;
  v6 = sub_100050D38(dictionaryCopy, sub_100050B8C);

  return v6;
}

- (id)string:(id)string
{
  stringCopy = string;
  selfCopy = self;
  v6 = sub_100050D38(stringCopy, sub_100055464);

  return v6;
}

- (id)double:(id)double
{
  doubleCopy = double;
  selfCopy = self;
  v6 = sub_100050D38(doubleCopy, sub_100105E18);

  return v6;
}

- (id)integer:(id)integer
{
  integerCopy = integer;
  selfCopy = self;
  v6 = sub_100050D38(integerCopy, sub_100105DFC);

  return v6;
}

- (id)BOOLean:(id)lean
{
  leanCopy = lean;
  selfCopy = self;
  v6 = sub_100050D38(leanCopy, sub_100105DE0);

  return v6;
}

- (id)array:(id)array
{
  arrayCopy = array;
  selfCopy = self;
  v6 = sub_100050D38(arrayCopy, sub_100105DC4);

  return v6;
}

- (id)url:(id)url
{
  urlCopy = url;
  selfCopy = self;
  v6 = sub_100050D38(urlCopy, sub_100105DA8);

  return v6;
}

@end