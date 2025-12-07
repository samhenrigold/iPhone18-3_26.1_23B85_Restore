@interface ISURLResourcePropertySpecification
+ (id)sharedInstance;
- (id)_init;
@end

@implementation ISURLResourcePropertySpecification

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ISURLResourcePropertySpecification sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_1;

  return v3;
}

uint64_t __52__ISURLResourcePropertySpecification_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_1 = [[ISURLResourcePropertySpecification alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_init
{
  v28 = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = ISURLResourcePropertySpecification;
  v2 = [(ISURLResourcePropertySpecification *)&v23 init];
  if (v2)
  {
    v3 = *MEMORY[0x1E695DBA0];
    v26[0] = *MEMORY[0x1E695DB78];
    v26[1] = v3;
    v4 = *MEMORY[0x1E695DBE8];
    v26[2] = *MEMORY[0x1E695DB88];
    v26[3] = v4;
    v5 = *MEMORY[0x1E695DB70];
    v26[4] = *MEMORY[0x1E695DB68];
    v26[5] = v5;
    v6 = *MEMORY[0x1E695DBB8];
    v26[6] = *MEMORY[0x1E695DBC8];
    v26[7] = v6;
    v7 = *MEMORY[0x1E695E2C0];
    v26[8] = *MEMORY[0x1E695DC40];
    v26[9] = v7;
    v27 = *MEMORY[0x1E695E2B8];
    v8 = v27;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:11];
    generalProperties = v2->_generalProperties;
    v2->_generalProperties = v9;

    applicationProperties = v2->_applicationProperties;
    v12 = MEMORY[0x1E695E0F0];
    v2->_applicationProperties = MEMORY[0x1E695E0F0];

    volumeProperties = v2->_volumeProperties;
    v2->_volumeProperties = v12;

    v14 = *MEMORY[0x1E695DBD0];
    v25[0] = *MEMORY[0x1E695DA88];
    v25[1] = v14;
    v15 = *MEMORY[0x1E695DA98];
    v25[2] = *MEMORY[0x1E695DBE0];
    v25[3] = v15;
    v25[4] = *MEMORY[0x1E695DA80];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];
    otherProperties = v2->_otherProperties;
    v2->_otherProperties = v16;

    v18 = MEMORY[0x1E695DFD8];
    v24 = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v20 = [v18 setWithArray:v19];
    allowedMissingProperties = v2->_allowedMissingProperties;
    v2->_allowedMissingProperties = v20;
  }

  return v2;
}

@end