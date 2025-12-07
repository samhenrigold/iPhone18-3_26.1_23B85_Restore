@interface NSSUsageBundle
- (NSSUsageBundle)initWithCoder:(id)coder;
- (unint64_t)totalSize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSUsageBundle

- (unint64_t)totalSize
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_categories;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        v5 += [*(*(&v9 + 1) + 8 * i) size];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_categories forKey:@"categories"];
  [coderCopy encodeBool:self->_purgeable forKey:@"purgeable"];
}

- (NSSUsageBundle)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NSSUsageBundle;
  v5 = [(NSSUsageBundle *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"categories"];
    categories = v5->_categories;
    v5->_categories = v13;

    v5->_purgeable = [coderCopy decodeBoolForKey:@"purgeable"];
  }

  return v5;
}

@end