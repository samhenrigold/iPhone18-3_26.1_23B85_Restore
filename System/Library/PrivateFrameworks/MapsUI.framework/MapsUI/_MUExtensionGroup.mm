@interface _MUExtensionGroup
- (_MUExtensionGroup)initWithAppIdentifier:(id)identifier;
- (_MXExtension)bestExtensionToUse;
- (void)addExtensionIfMatchedAppIdentifier:(id)identifier;
@end

@implementation _MUExtensionGroup

- (_MUExtensionGroup)initWithAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = _MUExtensionGroup;
  v6 = [(_MUExtensionGroup *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appIdentifier, identifier);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    extensions = v7->_extensions;
    v7->_extensions = v8;

    v10 = geo_isolater_create();
    extensionsLock = v7->_extensionsLock;
    v7->_extensionsLock = v10;
  }

  return v7;
}

- (void)addExtensionIfMatchedAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _containingAppIdentifer = [identifierCopy _containingAppIdentifer];
  v6 = [_containingAppIdentifer isEqual:self->_appIdentifier];

  if (v6)
  {
    v7 = identifierCopy;
    geo_isolate_sync();
  }
}

- (_MXExtension)bestExtensionToUse
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__16682;
  v8 = __Block_byref_object_dispose__16683;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

@end