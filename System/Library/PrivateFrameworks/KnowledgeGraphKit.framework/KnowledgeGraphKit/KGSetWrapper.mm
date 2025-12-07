@interface KGSetWrapper
- (BOOL)isEqual:(id)equal;
- (KGSetWrapper)initWithArray:(id)array;
- (KGSetWrapper)initWithSet:(id)set;
- (unint64_t)hash;
@end

@implementation KGSetWrapper

- (unint64_t)hash
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_set;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v9 + 1) + 8 * i) hash];
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSSet *)self->_set isEqualToSet:equalCopy->_set];
  }

  return v5;
}

- (KGSetWrapper)initWithArray:(id)array
{
  v4 = MEMORY[0x277CBEB98];
  arrayCopy = array;
  v6 = [[v4 alloc] initWithArray:arrayCopy];

  v7 = [(KGSetWrapper *)self initWithSet:v6];
  return v7;
}

- (KGSetWrapper)initWithSet:(id)set
{
  setCopy = set;
  v9.receiver = self;
  v9.super_class = KGSetWrapper;
  v5 = [(KGSetWrapper *)&v9 init];
  if (v5)
  {
    v6 = [setCopy copy];
    set = v5->_set;
    v5->_set = v6;
  }

  return v5;
}

@end