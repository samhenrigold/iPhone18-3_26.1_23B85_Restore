@interface NTKFoghornFaceLayoutStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKFoghornFaceLayoutStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 5)
  {
    return 0;
  }

  else
  {
    return off_278BA1560[value];
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
    v5 = objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_FOGHORN_STYLE_", a2, off_278BA1590[value], device);
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
  if (qword_27E1DF620 != -1)
  {
    sub_23BEE736C();
  }

  v3 = qword_27E1DF618;

  return v3;
}

@end