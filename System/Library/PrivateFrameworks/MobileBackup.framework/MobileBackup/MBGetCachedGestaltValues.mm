@interface MBGetCachedGestaltValues
@end

@implementation MBGetCachedGestaltValues

void *___MBGetCachedGestaltValues_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = MBGetDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEB5D000, v1, OS_LOG_TYPE_DEBUG, "Loading cached MobileGestalt values", buf, 2u);
    _MBLog(@"Db", "Loading cached MobileGestalt values");
  }

  _MBCachedGestaltValues = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  *buf = @"DeviceClass";
  v15 = @"UniqueDeviceID";
  v16 = @"SerialNumber";
  v17 = @"ProductType";
  v18 = @"BuildVersion";
  v19 = @"ProductVersion";
  v20 = @"DeviceColor";
  v21 = @"DeviceEnclosureColor";
  v22 = @"9N7qIucqhr0Cy2/Tk27/hw";
  v23 = @"NJsxTSI2WuD+13rxShXX9w";
  v24 = @"CJcvxERO5v/3IWjDFKZKRw";
  v25 = @"HWModelStr";
  v26 = @"marketing-name";
  v27 = @"ReleaseType";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:14];
  result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        v8 = MBGetGestaltValueForKey(v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v8 stringValue];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        if (v8)
        {
          [_MBCachedGestaltValues setObject:v8 forKeyedSubscript:v7];
          goto LABEL_14;
        }

LABEL_13:
        *buf = @"DeviceColor";
        v15 = @"DeviceEnclosureColor";
        v16 = @"marketing-name";
        v17 = @"ReleaseType";
        if (([objc_msgSend(MEMORY[0x1E695DEC8] arrayWithObjects:buf count:{4), "containsObject:", v7}] & 1) == 0)
        {
          objc_exception_throw([[MBException alloc] initWithCode:1 format:@"Error getting %@ from MobileGestalt", v7]);
        }

LABEL_14:
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

@end