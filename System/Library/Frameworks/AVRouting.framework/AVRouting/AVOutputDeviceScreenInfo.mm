@interface AVOutputDeviceScreenInfo
- (AVOutputDeviceScreenInfo)initWithDict:(id)dict;
- (void)dealloc;
@end

@implementation AVOutputDeviceScreenInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVOutputDeviceScreenInfo;
  [(AVOutputDeviceScreenInfo *)&v3 dealloc];
}

- (AVOutputDeviceScreenInfo)initWithDict:(id)dict
{
  v41 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = AVOutputDeviceScreenInfo;
  v4 = [(AVOutputDeviceScreenInfo *)&v35 init];
  if (v4)
  {
    v4->_ID = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962400]), "copy"}];
    v4->_inputCapabilities = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962410]), "copy"}];
    v4->_limitedUI = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962418]), "BOOLValue"}];
    v4->_limitedUIElements = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962428]), "copy"}];
    v4->_nightMode = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962420]), "BOOLValue"}];
    v4->_maxFPS = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962430]), "copy"}];
    v5 = MEMORY[0x1E696B098];
    v6 = [dict objectForKey:*MEMORY[0x1E6962438]];
    size.width = 0.0;
    size.height = 0.0;
    v7 = CGSizeMakeWithDictionaryRepresentation(v6, &size);
    v8 = MEMORY[0x1E695F060];
    if (!v7)
    {
      size = *MEMORY[0x1E695F060];
    }

    v4->_physicalSize = [v5 valueWithSize:{size.width, size.height}];
    v9 = MEMORY[0x1E696B098];
    v10 = [dict objectForKey:*MEMORY[0x1E6962440]];
    size.width = 0.0;
    size.height = 0.0;
    if (!CGSizeMakeWithDictionaryRepresentation(v10, &size))
    {
      size = *v8;
    }

    v4->_pixelSize = [v9 valueWithSize:{size.width, size.height}];
    v11 = MEMORY[0x1E696B098];
    v12 = [dict objectForKey:*MEMORY[0x1E6962450]];
    size.width = 0.0;
    size.height = 0.0;
    if (!CGSizeMakeWithDictionaryRepresentation(v12, &size))
    {
      size = *v8;
    }

    v4->_squarePixelSize = [v11 valueWithSize:{size.width, size.height}];
    v4->_viewHeightScaleFactor = [dict objectForKey:*MEMORY[0x1E6962460]];
    v4->_primaryInputDevice = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E6962448]), "copy"}];
    v28 = v4;
    v4->_cornerMasks = [objc_msgSend(dict objectForKey:{*MEMORY[0x1E69623F8]), "BOOLValue"}];
    dictCopy = dict;
    v13 = [dict objectForKey:*MEMORY[0x1E6962458]];
    v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v13;
    v14 = [v13 countByEnumeratingWithState:&v36 objects:&size count:16];
    if (v14)
    {
      v15 = v14;
      v33 = *v37;
      v31 = *MEMORY[0x1E6962488];
      v32 = *MEMORY[0x1E6962478];
      v30 = *MEMORY[0x1E6962480];
      v16 = *MEMORY[0x1E6962470];
      v17 = *MEMORY[0x1E6962468];
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v37 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          v20 = [MEMORY[0x1E696B098] valueWithRect:{AVOutputDeviceViewAreaInfoNSRectFromDictionary(objc_msgSend(v19, "objectForKey:", v32))}];
          v21 = [v19 objectForKey:v31] != 0;
          v22 = [v19 objectForKey:v30] != 0;
          v23 = [v19 objectForKey:v16];
          v24 = -[AVOutputDeviceViewAreaInfo initWithViewArea:transitionControl:supportsFocusTransfer:statusBarEdge:safeArea:]([AVOutputDeviceViewAreaInfo alloc], "initWithViewArea:transitionControl:supportsFocusTransfer:statusBarEdge:safeArea:", v20, v21, v22, v23, [MEMORY[0x1E696B098] valueWithRect:{AVOutputDeviceViewAreaInfoNSRectFromDictionary(objc_msgSend(v19, "objectForKey:", v17))}]);
          [v34 addObject:v24];
        }

        v15 = [obj countByEnumeratingWithState:&v36 objects:&size count:16];
      }

      while (v15);
    }

    v4 = v28;
    v28->_viewAreas = v34;
    v28->_applicationURL = [dictCopy objectForKey:*MEMORY[0x1E69623F0]];
    v28->_initialApplicationURL = [dictCopy objectForKey:*MEMORY[0x1E6962408]];
    v25 = v28;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end