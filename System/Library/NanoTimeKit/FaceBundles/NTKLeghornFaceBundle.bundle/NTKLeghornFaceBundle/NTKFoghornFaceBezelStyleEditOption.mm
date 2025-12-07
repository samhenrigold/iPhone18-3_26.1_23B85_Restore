@interface NTKFoghornFaceBezelStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_orderedValuesForDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKFoghornFaceBezelStyleEditOption

+ (id)_orderedValuesForDevice:(id)device
{
  deviceCopy = device;
  v5 = objc_msgSend_arrayByAddingObject_(&unk_284EB72A0, v4, &unk_284EB7540);
  v7 = objc_msgSend_supportsPDRCapability_(deviceCopy, v6, 554439219);

  if (v7)
  {
    v9 = objc_msgSend_arrayByAddingObject_(v5, v8, &unk_284EB7558);

    v5 = v9;
  }

  return v5;
}

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 5)
  {
    return 0;
  }

  else
  {
    return off_278BA12D8[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 5)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_FOGHORN_BEZEL_", a2, off_278BA1308[value], device);
  }

  return v5;
}

- (id)localizedName
{
  v3 = objc_opt_class();
  v6 = objc_msgSend__value(self, v4, v5);
  v9 = objc_msgSend_device(self, v7, v8);
  v11 = objc_msgSend__nameLocalizationKeyForValue_forDevice_(v3, v10, v6, v9);

  v13 = objc_msgSend_stringByAppendingString_(v11, v12, @"_COMPANION");

  if (v13)
  {
    v14 = NTKFoghornFaceLocalizedString(v13);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_valueToFaceBundleStringDict
{
  if (qword_27E1DF4E0 != -1)
  {
    sub_23BEE7054();
  }

  v3 = qword_27E1DF4D8;

  return v3;
}

@end