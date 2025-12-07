@interface NTKLeghornHiVizComplicationStyleEditOption
+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device;
+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device;
- (id)_valueToFaceBundleStringDict;
- (id)localizedName;
@end

@implementation NTKLeghornHiVizComplicationStyleEditOption

+ (id)_snapshotKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    return 0;
  }

  else
  {
    return off_278BA1BA8[value];
  }
}

+ (id)_nameLocalizationKeyForValue:(unint64_t)value forDevice:(id)device
{
  if (value > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = objc_msgSend_stringByAppendingString_(@"EDIT_OPTION_LABEL_LEGHORN_HIVIZ_STYLE_", a2, off_278BA1BC0[value], device);
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
  if (qword_27E1DF650 != -1)
  {
    sub_23BEE7394();
  }

  v3 = qword_27E1DF648;

  return v3;
}

@end