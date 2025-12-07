@interface SMSScreenshotUIImages
+ (id)captureScreenshot;
+ (id)getKeyWindow;
+ (id)imageFromView:(id)view;
+ (void)saveImage:(id)image filePath:(id)path fileName:(id)name withHeader:(id)header;
@end

@implementation SMSScreenshotUIImages

+ (id)captureScreenshot
{
  getKeyWindow = [self getKeyWindow];
  v4 = [self imageFromView:getKeyWindow];

  return v4;
}

+ (id)getKeyWindow
{
  v2 = +[UIApplication sharedApplication];
  connectedScenes = [v2 connectedScenes];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = connectedScenes;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (![v9 activationState])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v9;
            v19 = 0u;
            v20 = 0u;
            v21 = 0u;
            v22 = 0u;
            windows = [v10 windows];
            v12 = [windows countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v20;
              while (2)
              {
                for (j = 0; j != v13; j = j + 1)
                {
                  if (*v20 != v14)
                  {
                    objc_enumerationMutation(windows);
                  }

                  v16 = *(*(&v19 + 1) + 8 * j);
                  if ([v16 isKeyWindow])
                  {
                    v17 = v16;

                    goto LABEL_22;
                  }
                }

                v13 = [windows countByEnumeratingWithState:&v19 objects:v27 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v6);
  }

  else
  {
    v17 = 0;
  }

LABEL_22:

  return v17;
}

+ (id)imageFromView:(id)view
{
  viewCopy = view;
  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v11.width = v5;
  v11.height = v6;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);

  v7 = +[UIScreen mainScreen];
  [v7 bounds];
  [viewCopy drawViewHierarchyInRect:1 afterScreenUpdates:?];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

+ (void)saveImage:(id)image filePath:(id)path fileName:(id)name withHeader:(id)header
{
  headerCopy = header;
  pathCopy = path;
  imageCopy = image;
  name = [NSString stringWithFormat:@"%@.png", name];
  v13 = [pathCopy stringByAppendingPathComponent:name];

  v14 = +[NSFileManager defaultManager];
  v15 = [v14 fileExistsAtPath:v13];

  if (v15)
  {
    v16 = +[NSFileManager defaultManager];
    [v16 removeItemAtPath:v13 error:0];
  }

  v20 = 0;
  [headerCopy writeToFile:v13 atomically:1 encoding:4 error:&v20];
  v17 = v20;
  v18 = UIImagePNGRepresentation(imageCopy);

  [v18 writeToFile:v13 atomically:1];
  v19 = [NSFileHandle fileHandleForWritingAtPath:v13];
  if (v19 && !v17 || (NSLog(@"|--ERROR: Failed to generate file handle at path %@. %@--|", v13, v17), v19))
  {
    [v19 closeFile];
  }
}

@end