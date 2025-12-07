@interface NSUserDefaults.Secure
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key inDomain:(id)domain;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key inDomain:(id)domain;
@end

@implementation NSUserDefaults.Secure

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18E1A77D0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  v10 = sub_18E1A7530();
  v12 = v11;

  NSUserDefaults.Secure.set(_:forKey:)(v13, v10, v12);

  sub_18E178150(v13, &qword_1EABD0960, &qword_18E1AB550);
}

- (void)setObject:(id)object forKey:(id)key inDomain:(id)domain
{
  if (object)
  {
    keyCopy = key;
    domainCopy = domain;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18E1A77D0();
    swift_unknownObjectRelease();
    if (key)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    v13 = 0;
    if (!domain)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  memset(v17, 0, sizeof(v17));
  keyCopy2 = key;
  domainCopy2 = domain;
  selfCopy2 = self;
  if (!key)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = sub_18E1A7530();
  v13 = v12;

  if (domain)
  {
LABEL_4:
    sub_18E1A7530();
  }

LABEL_7:
  NSUserDefaults.Secure.setObject(_:forKey:inDomain:)(v17, v11, v13);

  sub_18E178150(v17, &qword_1EABD0960, &qword_18E1AB550);
}

- (id)objectForKey:(id)key
{
  sub_18E1A7530();
  selfCopy = self;
  NSUserDefaults.Secure.object(forKey:)(v12);

  v5 = v13;
  if (v13)
  {
    v6 = sub_18E158E00(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x1EEE9AC00](v6, v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_18E1A7B80();
    (*(v7 + 8))(v9, v5);
    sub_18E158EC4(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)objectForKey:(id)key inDomain:(id)domain
{
  v6 = sub_18E1A7530();
  v8 = v7;
  if (domain)
  {
    sub_18E1A7530();
  }

  selfCopy = self;
  NSUserDefaults.Secure.object(forKey:inDomain:)(v6, v8, v17);

  v10 = v18;
  if (v18)
  {
    v11 = sub_18E158E00(v17, v18);
    v12 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](v11, v11);
    v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_18E1A7B80();
    (*(v12 + 8))(v14, v10);
    sub_18E158EC4(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  NSUserDefaults.Secure.dictionaryRepresentation()();

  v3 = sub_18E1A7470();

  return v3;
}

@end