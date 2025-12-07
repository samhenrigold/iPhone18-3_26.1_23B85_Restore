@interface _VGOEMExtensionConnectionKey
- (BOOL)isEqual:(id)equal;
- (_VGOEMExtensionConnectionKey)initWithIntent:(id)intent;
- (id)description;
- (unint64_t)hash;
@end

@implementation _VGOEMExtensionConnectionKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      launchId = [(INIntent *)self->_intent launchId];
      launchId2 = [v5[1] launchId];
      v8 = [launchId isEqualToString:launchId2];

      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = 1;
LABEL_10:

          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          intent = self->_intent;
          v11 = v5[1];
          v12 = intent;
          carName = [(INIntent *)v12 carName];
          carName2 = [v11 carName];

          v9 = [carName isEqual:carName2];
          goto LABEL_10;
        }
      }
    }

    v9 = 0;
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (unint64_t)hash
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  intent = self->_intent;
  if (isKindOfClass)
  {
    launchId = [(INIntent *)intent launchId];
    v6 = [launchId hash];
  }

  else
  {
    v7 = intent;
    launchId = [(INIntent *)v7 launchId];
    v8 = [launchId hash];
    carName = [(INIntent *)v7 carName];

    v6 = [carName hash] ^ v8;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  intent = self->_intent;
  launchId = [(INIntent *)intent launchId];
  v7 = [v3 stringWithFormat:@"<%@ %p, intent: %@, id: %@, hash: %lu>", v4, self, intent, launchId, -[_VGOEMExtensionConnectionKey hash](self, "hash")];

  return v7;
}

- (_VGOEMExtensionConnectionKey)initWithIntent:(id)intent
{
  intentCopy = intent;
  v9.receiver = self;
  v9.super_class = _VGOEMExtensionConnectionKey;
  v6 = [(_VGOEMExtensionConnectionKey *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intent, intent);
  }

  return v7;
}

@end