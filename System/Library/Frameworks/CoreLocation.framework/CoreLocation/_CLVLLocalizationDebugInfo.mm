@interface _CLVLLocalizationDebugInfo
- (_CLVLLocalizationDebugInfo)initWithCoder:(id)coder;
- (_CLVLLocalizationDebugInfo)initWithVLLocalizationDebugInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent;
- (void)dealloc;
@end

@implementation _CLVLLocalizationDebugInfo

- (_CLVLLocalizationDebugInfo)initWithVLLocalizationDebugInfo:(id)info
{
  v5.receiver = self;
  v5.super_class = _CLVLLocalizationDebugInfo;
  result = [(_CLVLLocalizationDebugInfo *)&v5 init];
  if (result)
  {
    if (info)
    {
      result->_maps488Details = 0;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CLVLLocalizationDebugInfo;
  [(_CLVLLocalizationDebugInfo *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  v12 = objc_msgSend_init(v8, v9, v10, v11);
  v12[1] = objc_msgSend_copyWithZone_(self->_maps488Details, v13, zone, v14);
  return v12;
}

- (_CLVLLocalizationDebugInfo)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = _CLVLLocalizationDebugInfo;
  result = [(_CLVLLocalizationDebugInfo *)&v4 init];
  if (result)
  {
    result->_maps488Details = 0;
  }

  return result;
}

- (id)descriptionWithMemberIndent:(id)indent endIndent:(id)endIndent
{
  v7 = objc_msgSend_stringByAppendingString_(indent, a2, @"\t", endIndent);
  v10 = objc_msgSend_stringByAppendingString_(endIndent, v8, @"\t", v9);
  v11 = MEMORY[0x1E696AEC0];
  v15 = objc_msgSend_maps488Details(self, v12, v13, v14);
  v17 = objc_msgSend_descriptionWithMemberIndent_endIndent_(v15, v16, v7, v10);
  return objc_msgSend_stringWithFormat_(v11, v18, @"<_CLVLLocalizationDebugInfo: %p> {\n%@.maps488Details = %@\n%@}", v19, self, indent, v17, endIndent);
}

@end