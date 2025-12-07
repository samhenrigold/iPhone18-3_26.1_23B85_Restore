@interface NSUserDefaults.Global
- (id)dictionaryRepresentation;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key inDomain:(id)domain;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key inDomain:(id)domain;
@end

@implementation NSUserDefaults.Global

- (id)objectForKey:(id)key
{
  sub_18E1A7530();
  selfCopy = self;
  NSUserDefaults.Global.object(forKey:)(v12);

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

  NSUserDefaults.Global.set(_:forKey:)(v13, v10, v12);

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
  NSUserDefaults.Global.setObject(_:forKey:inDomain:)(v17, v11, v13);

  sub_18E178150(v17, &qword_1EABD0960, &qword_18E1AB550);
}

- (id)objectForKey:(id)key inDomain:(id)domain
{
  sub_18E1A7530();
  if (domain)
  {
    sub_18E1A7530();
  }

  selfCopy = self;
  NSUserDefaults.Global.object(forKey:inDomain:)(v14);

  v7 = v15;
  if (v15)
  {
    v8 = sub_18E158E00(v14, v15);
    v9 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8, v8);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_18E1A7B80();
    (*(v9 + 8))(v11, v7);
    sub_18E158EC4(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  NSUserDefaults.Global.dictionaryRepresentation()();

  v3 = sub_18E1A7470();

  return v3;
}

@end