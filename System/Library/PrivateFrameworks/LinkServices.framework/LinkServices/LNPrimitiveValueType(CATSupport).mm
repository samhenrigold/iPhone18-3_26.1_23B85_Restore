@interface LNPrimitiveValueType(CATSupport)
- (__CFString)cat_dialogType;
- (__CFString)cat_keyPath;
- (id)cat_value:()CATSupport;
@end

@implementation LNPrimitiveValueType(CATSupport)

- (__CFString)cat_keyPath
{
  typeIdentifier = [self typeIdentifier];
  v2 = @"longLocation";
  if (typeIdentifier != 10)
  {
    v2 = 0;
  }

  if (typeIdentifier == 8)
  {
    return @"dateTimeDescriptive";
  }

  else
  {
    return v2;
  }
}

- (id)cat_value:()CATSupport
{
  v82[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  typeIdentifier = [self typeIdentifier];
  value14 = 0;
  if (typeIdentifier > 7)
  {
    if (typeIdentifier <= 9)
    {
      if (typeIdentifier == 8)
      {
        v81[0] = @"secs";
        v14 = MEMORY[0x1E696AD98];
        value = [v4 value];
        if (value)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = value;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v21 = v16;

        [v21 timeIntervalSince1970];
        v23 = v22;

        currentCalendar = [v14 numberWithDouble:v23];
        v81[1] = @"timeZone";
        v82[0] = currentCalendar;
        localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
        name = [localTimeZone name];
        v82[1] = name;
        value14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
      }

      else
      {
        v79 = @"secs";
        v10 = MEMORY[0x1E696AD98];
        currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
        value2 = [v4 value];
        if (value2)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = value2;
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }

        v26 = v13;

        v27 = [currentCalendar dateFromComponents:v26];

        [v27 timeIntervalSince1970];
        v28 = [v10 numberWithDouble:?];
        v80 = v28;
        value14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
      }
    }

    else
    {
      switch(typeIdentifier)
      {
        case 10:
          v77 = @"values";
          v74 = @"address";
          v72[0] = @"administrativeArea";
          value3 = [v4 value];
          if (value3)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = value3;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v29 = v18;

          administrativeArea = [v29 administrativeArea];

          v71 = administrativeArea;
          v73[0] = administrativeArea;
          v72[1] = @"country";
          value4 = [v4 value];
          if (value4)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = value4;
            }

            else
            {
              v32 = 0;
            }
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;

          country = [v33 country];

          v70 = country;
          v73[1] = country;
          v72[2] = @"countryCode";
          value5 = [v4 value];
          if (value5)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v36 = value5;
            }

            else
            {
              v36 = 0;
            }
          }

          else
          {
            v36 = 0;
          }

          v37 = v36;

          iSOcountryCode = [v37 ISOcountryCode];

          v69 = iSOcountryCode;
          v73[2] = iSOcountryCode;
          v72[3] = @"locality";
          value6 = [v4 value];
          if (value6)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = value6;
            }

            else
            {
              v40 = 0;
            }
          }

          else
          {
            v40 = 0;
          }

          v41 = v40;

          locality = [v41 locality];

          v68 = locality;
          v73[3] = locality;
          v72[4] = @"name";
          value7 = [v4 value];
          if (value7)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = value7;
            }

            else
            {
              v44 = 0;
            }
          }

          else
          {
            v44 = 0;
          }

          v45 = v44;

          name2 = [v45 name];

          v73[4] = name2;
          v72[5] = @"postCode";
          value8 = [v4 value];
          if (value8)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v48 = value8;
            }

            else
            {
              v48 = 0;
            }
          }

          else
          {
            v48 = 0;
          }

          v49 = v48;

          postalCode = [v49 postalCode];

          v73[5] = postalCode;
          v72[6] = @"subAdministrativeArea";
          value9 = [v4 value];
          if (value9)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v52 = value9;
            }

            else
            {
              v52 = 0;
            }
          }

          else
          {
            v52 = 0;
          }

          v53 = v52;

          subAdministrativeArea = [v53 subAdministrativeArea];

          v73[6] = subAdministrativeArea;
          v72[7] = @"subThoroughfare";
          value10 = [v4 value];
          if (value10)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = value10;
            }

            else
            {
              v56 = 0;
            }
          }

          else
          {
            v56 = 0;
          }

          v57 = v56;

          subThoroughfare = [v57 subThoroughfare];

          v73[7] = subThoroughfare;
          v72[8] = @"thoroughfare";
          value11 = [v4 value];
          if (value11)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v60 = value11;
            }

            else
            {
              v60 = 0;
            }
          }

          else
          {
            v60 = 0;
          }

          v61 = v60;

          thoroughfare = [v61 thoroughfare];

          v73[8] = thoroughfare;
          v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:9];
          v75 = v63;
          v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
          v76 = v64;
          v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v76 count:1];
          v78 = v65;
          value14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];

          goto LABEL_4;
        case 11:
          value12 = [v4 value];
          if (value12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = value12;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }

          v66 = v20;

          absoluteString = [v66 absoluteString];
          break;
        case 12:
          value13 = [v4 value];
          if (value13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v9 = value13;
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }

          v66 = v9;

          absoluteString = [v66 string];
          break;
        default:
          goto LABEL_4;
      }

      value14 = absoluteString;
    }
  }

  else if (typeIdentifier < 8)
  {
    value14 = [v4 value];
  }

LABEL_4:

  return value14;
}

- (__CFString)cat_dialogType
{
  typeIdentifier = [self typeIdentifier];
  if ((typeIdentifier - 1) > 9)
  {
    return @"dialog.String";
  }

  else
  {
    return off_1E74B1518[typeIdentifier - 1];
  }
}

@end