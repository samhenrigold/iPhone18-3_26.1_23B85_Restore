@interface THAController
+ (id)selectButtonConfiguration:(id)configuration supportsSiri:(BOOL)siri;
- (BOOL)dispatchButtonEvent:(id)event;
- (THAController)initWithName:(id)name identifier:(unsigned int)identifier ticksPerSecond:(unint64_t)second supportedButtons:(id)buttons supportsSiri:(BOOL)siri;
@end

@implementation THAController

- (BOOL)dispatchButtonEvent:(id)event
{
  button = [event button];
  v4 = [button type] != 12;

  return v4;
}

- (THAController)initWithName:(id)name identifier:(unsigned int)identifier ticksPerSecond:(unint64_t)second supportedButtons:(id)buttons supportsSiri:(BOOL)siri
{
  siriCopy = siri;
  nameCopy = name;
  buttonsCopy = buttons;
  v20.receiver = self;
  v20.super_class = THAController;
  v14 = [(THAController *)&v20 init];
  if (v14)
  {
    v15 = objc_msgSend_copy(nameCopy);
    name = v14->_name;
    v14->_name = v15;

    v14->_identifier = identifier;
    v14->_ticksPerSecond = second;
    v14->_supportsSiri = siriCopy;
    v17 = [THAController selectButtonConfiguration:buttonsCopy supportsSiri:siriCopy];
    selectedButtons = v14->_selectedButtons;
    v14->_selectedButtons = v17;
  }

  return v14;
}

+ (id)selectButtonConfiguration:(id)configuration supportsSiri:(BOOL)siri
{
  siriCopy = siri;
  v23 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(configurationCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = configurationCopy;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        type = [v12 type];
        if ((type - 1) < 0xB || (type == 12 ? (v14 = !siriCopy) : (v14 = 1), !v14))
        {
          [v6 addObject:v12];
        }

        ++v11;
      }

      while (v9 != v11);
      v15 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = v15;
    }

    while (v15);
  }

  v16 = objc_msgSend_copy(v6);

  return v16;
}

@end