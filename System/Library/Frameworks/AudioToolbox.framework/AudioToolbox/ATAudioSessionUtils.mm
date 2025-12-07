@interface ATAudioSessionUtils
+ (__CFString)getAudioSessionPortType:(id)type forInput:(BOOL)input;
+ (id)categories;
+ (id)getAVASCategory:(unsigned int)category;
+ (id)getAVASMode:(unsigned int)mode;
+ (id)getAVASProperty:(unsigned int)property;
+ (id)getMappedObjectOf:(id)of inside:(id)inside ofType:(int)type;
+ (id)getPort:(id)port forInput:(BOOL)input;
+ (id)getPorts:(id)ports forInput:(BOOL)input;
+ (id)getRouteDescriptionFromAVASRouteDescription:(id)description;
+ (id)getRouteStringFromAVASRouteDescription:(id)description;
+ (id)inputPortTypes;
+ (id)modes;
+ (id)outputPortTypes;
+ (unint64_t)getCategoryOptionFromPropertyID:(unsigned int)d;
+ (unsigned)getAudioSessionCategory:(id)category;
+ (unsigned)getAudioSessionMode:(id)mode;
+ (unsigned)getAudioSessionProperty:(id)property;
@end

@implementation ATAudioSessionUtils

+ (id)getPort:(id)port forInput:(BOOL)input
{
  inputCopy = input;
  v10[1] = *MEMORY[0x1E69E9840];
  portCopy = port;
  v9 = @"RouteDetailedDescription_PortType";
  portType = [portCopy portType];
  v10[0] = [ATAudioSessionUtils getAudioSessionPortType:portType forInput:inputCopy];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  return v7;
}

+ (id)getPorts:(id)ports forInput:(BOOL)input
{
  inputCopy = input;
  v19 = *MEMORY[0x1E69E9840];
  portsCopy = ports;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = portsCopy;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [self getPort:*(*(&v14 + 1) + 8 * i) forInput:{inputCopy, v14}];
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v7;
}

+ (id)getRouteStringFromAVASRouteDescription:(id)description
{
  descriptionCopy = description;
  inputs = [descriptionCopy inputs];
  v6 = [self getPorts:inputs forInput:1];

  if ([v6 count])
  {
    firstObject = [v6 firstObject];
    v8 = [firstObject objectForKey:@"RouteDetailedDescription_PortType"];
  }

  else
  {
    v8 = &stru_1F37CAF70;
  }

  outputs = [descriptionCopy outputs];
  v10 = [self getPorts:outputs forInput:0];

  if ([v10 count])
  {
    firstObject2 = [v10 firstObject];
    v12 = [firstObject2 objectForKey:@"RouteDetailedDescription_PortType"];
    if ([(__CFString *)v8 length])
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@+%@", v8, v12];
    }

    else
    {
      v13 = v12;
    }

    v14 = v13;

    v8 = v14;
  }

  return v8;
}

+ (id)getRouteDescriptionFromAVASRouteDescription:(id)description
{
  descriptionCopy = description;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  inputs = [descriptionCopy inputs];
  v7 = [self getPorts:inputs forInput:1];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:@"RouteDetailedDescription_Inputs"];
  }

  outputs = [descriptionCopy outputs];
  v9 = [self getPorts:outputs forInput:0];

  if (v9)
  {
    [v5 setObject:v9 forKeyedSubscript:@"RouteDetailedDescription_Outputs"];
  }

  return v5;
}

+ (id)outputPortTypes
{
  v31[9] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D6B8];
  v30[0] = @"LineOut";
  v30[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v31[0] = v3;
  v4 = *MEMORY[0x1E698D6A0];
  v29[0] = @"Headphones";
  v29[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v31[1] = v5;
  v6 = *MEMORY[0x1E698D658];
  v28[0] = @"BluetoothHFPOutput";
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v31[2] = v7;
  v8 = *MEMORY[0x1E698D650];
  v27[0] = @"BluetoothA2DPOutput";
  v27[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v31[3] = v9;
  v10 = *MEMORY[0x1E698D670];
  v26[0] = @"Receiver";
  v26[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v31[4] = v11;
  v12 = *MEMORY[0x1E698D688];
  v25[0] = @"Speaker";
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v31[5] = v13;
  v14 = *MEMORY[0x1E698D6C0];
  v24[0] = @"USBOutput";
  v24[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v31[6] = v15;
  v16 = *MEMORY[0x1E698D698];
  v23[0] = @"HDMIOutput";
  v23[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v31[7] = v17;
  v18 = *MEMORY[0x1E698D648];
  v22[0] = @"AirPlay";
  v22[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v31[8] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:9];

  return v20;
}

+ (id)inputPortTypes
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D6B0];
  v18[0] = @"LineIn";
  v18[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v19[0] = v3;
  v4 = *MEMORY[0x1E698D660];
  v17[0] = @"MicrophoneBuiltIn";
  v17[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v19[1] = v5;
  v6 = *MEMORY[0x1E698D6A8];
  v16[0] = @"MicrophoneWired";
  v16[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v19[2] = v7;
  v8 = *MEMORY[0x1E698D658];
  v15[0] = @"MicrophoneBluetooth";
  v15[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  v19[3] = v9;
  v10 = *MEMORY[0x1E698D6C0];
  v14[0] = @"USBInput";
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v19[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];

  return v12;
}

+ (id)modes
{
  v31[28] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D5C8];
  v30[0] = &unk_1F37D3D60;
  v30[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v31[0] = v3;
  v4 = *MEMORY[0x1E698D628];
  v29[0] = &unk_1F37D3D78;
  v29[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v31[1] = v5;
  v6 = *MEMORY[0x1E698D620];
  v28[0] = &unk_1F37D3D90;
  v28[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
  v31[2] = v7;
  v8 = *MEMORY[0x1E698D5E0];
  v27[0] = &unk_1F37D3DA8;
  v27[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
  v31[3] = v9;
  v10 = *MEMORY[0x1E698D5D8];
  v26[0] = &unk_1F37D3DC0;
  v26[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v31[4] = v11;
  v12 = *MEMORY[0x1E698D618];
  v25[0] = &unk_1F37D3DD8;
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v31[5] = v13;
  v31[6] = &unk_1F37D4288;
  v14 = *MEMORY[0x1E698D5E8];
  v24[0] = &unk_1F37D3E08;
  v24[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v31[7] = v15;
  v16 = *MEMORY[0x1E698D610];
  v23[0] = &unk_1F37D3E20;
  v23[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v31[8] = v17;
  v18 = *MEMORY[0x1E698D638];
  v22[0] = &unk_1F37D3E38;
  v22[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v31[9] = v19;
  v31[10] = &unk_1F37D42A0;
  v31[11] = &unk_1F37D42B8;
  v31[12] = &unk_1F37D42D0;
  v31[13] = &unk_1F37D42E8;
  v31[14] = &unk_1F37D4300;
  v31[15] = &unk_1F37D4318;
  v31[16] = &unk_1F37D4330;
  v31[17] = &unk_1F37D4348;
  v31[18] = &unk_1F37D4360;
  v31[19] = &unk_1F37D4378;
  v31[20] = &unk_1F37D4390;
  v31[21] = &unk_1F37D43A8;
  v31[22] = &unk_1F37D43C0;
  v31[23] = &unk_1F37D43D8;
  v31[24] = &unk_1F37D43F0;
  v31[25] = &unk_1F37D4408;
  v31[26] = &unk_1F37D4420;
  v31[27] = &unk_1F37D4438;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:28];

  return v20;
}

+ (id)categories
{
  v23[8] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E698D508];
  v22[0] = &unk_1F37D3CA0;
  v22[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v23[0] = v3;
  v4 = *MEMORY[0x1E698D548];
  v21[0] = &unk_1F37D3CB8;
  v21[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v23[1] = v5;
  v6 = *MEMORY[0x1E698D520];
  v20[0] = &unk_1F37D3CD0;
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v23[2] = v7;
  v8 = *MEMORY[0x1E698D538];
  v19[0] = &unk_1F37D3CE8;
  v19[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v23[3] = v9;
  v10 = *MEMORY[0x1E698D518];
  v18[0] = &unk_1F37D3D00;
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v23[4] = v11;
  v23[5] = &unk_1F37D4270;
  v17[0] = &unk_1F37D3D30;
  v17[1] = v2;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v23[6] = v12;
  v16[0] = &unk_1F37D3D48;
  v16[1] = v6;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v23[7] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:8];

  return v14;
}

+ (id)getMappedObjectOf:(id)of inside:(id)inside ofType:(int)type
{
  v22 = *MEMORY[0x1E69E9840];
  ofCopy = of;
  insideCopy = inside;
  ofCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF contains [c] %@", ofCopy];
  v10 = [insideCopy filteredArrayUsingPredicate:ofCopy];
  v11 = v10;
  if (v10 && [v10 count])
  {
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v12 objectAtIndexedSubscript:type];

    goto LABEL_11;
  }

  if (kAudioSessionClientLogSubsystem)
  {
    v13 = *kAudioSessionClientLogSubsystem;
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v17 = "ATAudioSessionUtils.mm";
    v18 = 1024;
    v19 = 111;
    v20 = 2112;
    v21 = ofCopy;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: Invalid item requested %@", buf, 0x1Cu);
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (__CFString)getAudioSessionPortType:(id)type forInput:(BOOL)input
{
  inputCopy = input;
  typeCopy = type;
  if (inputCopy)
  {
    [self inputPortTypes];
  }

  else
  {
    [self outputPortTypes];
  }
  v7 = ;
  v8 = [self getMappedObjectOf:typeCopy inside:v7 ofType:0];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = typeCopy;
  }

  return v9;
}

+ (unsigned)getAudioSessionMode:(id)mode
{
  modeCopy = mode;
  modes = [self modes];
  v6 = [self getMappedObjectOf:modeCopy inside:modes ofType:0];
  unsignedIntValue = [v6 unsignedIntValue];

  return unsignedIntValue;
}

+ (id)getAVASMode:(unsigned int)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&mode];
  modes = [self modes];
  v6 = [self getMappedObjectOf:v4 inside:modes ofType:1];

  return v6;
}

+ (unsigned)getAudioSessionCategory:(id)category
{
  categoryCopy = category;
  categories = [self categories];
  v6 = [self getMappedObjectOf:categoryCopy inside:categories ofType:0];
  unsignedIntValue = [v6 unsignedIntValue];

  return unsignedIntValue;
}

+ (id)getAVASCategory:(unsigned int)category
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&category];
  categories = [self categories];
  v6 = [self getMappedObjectOf:v4 inside:categories ofType:1];

  return v6;
}

+ (unsigned)getAudioSessionProperty:(id)property
{
  propertyCopy = property;
  kVOProperties = [self KVOProperties];
  v6 = [self getMappedObjectOf:propertyCopy inside:kVOProperties ofType:0];
  unsignedIntValue = [v6 unsignedIntValue];

  return unsignedIntValue;
}

+ (id)getAVASProperty:(unsigned int)property
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&property];
  kVOProperties = [self KVOProperties];
  v6 = [self getMappedObjectOf:v4 inside:kVOProperties ofType:1];

  return v6;
}

+ (unint64_t)getCategoryOptionFromPropertyID:(unsigned int)d
{
  v10 = *MEMORY[0x1E69E9840];
  if (d > 1668509802)
  {
    if (d == 1668509803)
    {
      return 8;
    }

    if (d == 1685414763)
    {
      return 2;
    }
  }

  else
  {
    if (d == 1667394677)
    {
      return 4;
    }

    if (d == 1668114808)
    {
      return 1;
    }
  }

  if (kAudioSessionClientLogSubsystem)
  {
    result = *kAudioSessionClientLogSubsystem;
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "ATAudioSessionUtils.mm";
    v8 = 1024;
    v9 = 39;
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid Category option requested", &v6, 0x12u);
  }

  return 0;
}

@end