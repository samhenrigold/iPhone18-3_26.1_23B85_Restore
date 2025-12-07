@interface _RESmallSetFeatureValue
- (_RESmallSetFeatureValue)initWithSet:(id)set;
- (id)setValue;
@end

@implementation _RESmallSetFeatureValue

- (_RESmallSetFeatureValue)initWithSet:(id)set
{
  v23 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v21.receiver = self;
  v21.super_class = _RESmallSetFeatureValue;
  v5 = [(_RESmallSetFeatureValue *)&v21 init];
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = setCopy;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (!v7)
    {

      v14 = 0;
      do
      {
LABEL_13:
        v15 = v14;
        v5->_values[v14] = 0;
        v14 = 1;
      }

      while (!v15);
      goto LABEL_14;
    }

    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      v12 = -v9;
      v13 = &v5->super.super.super.isa + v9;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13[1] = RECreateFeatureValueTaggedPointer(*(*(&v17 + 1) + 8 * v11++));
        --v12;
        ++v13;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v17 objects:v22 count:16];
      v9 = -v12;
    }

    while (v8);

    v14 = -v12;
    if (-v12 == 1 || v12 == 0)
    {
      goto LABEL_13;
    }
  }

LABEL_14:

  return v5;
}

- (id)setValue
{
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  v4 = 0;
  values = self->_values;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = REFeatureValueForTaggedPointer(values[v4]);
    if (v8)
    {
      [v3 addObject:v8];
    }

    v6 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  v9 = [v3 copy];

  return v9;
}

@end