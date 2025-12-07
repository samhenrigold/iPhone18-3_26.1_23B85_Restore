@interface MIBUTempSensorHelper
+ (id)readKey:(unsigned int)key error:(id *)error;
@end

@implementation MIBUTempSensorHelper

+ (id)readKey:(unsigned int)key error:(id *)error
{
  v5 = *&key;
  v6 = [NSString stringWithFormat:@"%c%c%c%c", HIBYTE(key), BYTE2(key), BYTE1(key), key];
  v33[0] = @"PrimaryUsagePage";
  v33[1] = @"PrimaryUsage";
  v34[0] = &off_1000A7C98;
  v34[1] = &off_1000A7CB0;
  v33[2] = @"LocationID";
  v7 = [NSNumber numberWithUnsignedInt:v5];
  v34[2] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];

  v9 = IOHIDEventSystemClientCreate();
  if (v9)
  {
    v10 = v9;
    IOHIDEventSystemClientSetMatching();
    v11 = IOHIDEventSystemClientCopyServices(v10);
    if (v11)
    {
      v12 = v11;
      if (CFArrayGetCount(v11) == 1)
      {
        CFArrayGetValueAtIndex(v12, 0);
        v13 = IOHIDServiceClientCopyEvent();
        if (v13)
        {
          IOHIDEventGetFloatValue();
          v14 = [NSNumber numberWithDouble:?];
          v15 = 0;
        }

        else
        {
          sub_100052230(v6, &v28, &v32);
          v14 = 0;
          v15 = v32;
        }
      }

      else
      {
        if (qword_1000B84A8[0] != -1)
        {
          sub_100052154();
        }

        v23 = qword_1000B84A0;
        if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
        {
          sub_10005217C(v6, v23, v12);
        }

        v29 = 0;
        CFArrayGetCount(v12);
        sub_100016130(&v29, 2684354566, 0, @"Failed to read temp key: %@; %lu matching sensors", v24, v25, v26, v27, v6);
        v15 = v29;
        v13 = 0;
        v14 = 0;
      }

      CFRelease(v10);
      CFRelease(v12);
      if (v13)
      {
        CFRelease(v13);
      }
    }

    else
    {
      if (qword_1000B84A8[0] != -1)
      {
        sub_100052330();
      }

      v18 = qword_1000B84A0;
      if (os_log_type_enabled(qword_1000B84A0, OS_LOG_TYPE_ERROR))
      {
        sub_100052358(v6, v18);
      }

      v30 = 0;
      sub_100016130(&v30, 2684354566, 0, @"Failed to read temp key: %@; no matching sensors", v19, v20, v21, v22, v6);
      v15 = v30;
      CFRelease(v10);
      v14 = 0;
    }
  }

  else
  {
    sub_1000523D0(v6, &v31, &v32);
    v14 = 0;
    v15 = v32;
  }

  if (error)
  {
    v16 = v15;
    *error = v15;
  }

  return v14;
}

@end