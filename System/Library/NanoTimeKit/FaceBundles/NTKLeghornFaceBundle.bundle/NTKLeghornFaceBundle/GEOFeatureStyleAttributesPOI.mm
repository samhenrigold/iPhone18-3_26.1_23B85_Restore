@interface GEOFeatureStyleAttributesPOI
- (GEOFeatureStyleAttributesPOI)initWithStyleAttributes:(id)attributes category:(unint64_t)category labelText:(id)text location:(id)location;
- (UIColor)fillColor;
- (UIColor)glyphColor;
- (UIImage)glyphImage;
@end

@implementation GEOFeatureStyleAttributesPOI

- (GEOFeatureStyleAttributesPOI)initWithStyleAttributes:(id)attributes category:(unint64_t)category labelText:(id)text location:(id)location
{
  v30 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  textCopy = text;
  locationCopy = location;
  v23.receiver = self;
  v23.super_class = GEOFeatureStyleAttributesPOI;
  v14 = [(GEOFeatureStyleAttributesPOI *)&v23 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_styleAttributes, attributes);
    objc_storeStrong(&v15->_labelText, text);
    v15->_category = category;
    objc_storeStrong(&v15->_location, location);
    v18 = NTKFoghornFaceBundleLogObject(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_msgSend_description(attributesCopy, v19, v20);
      *buf = 136315650;
      v25 = "[GEOFeatureStyleAttributesPOI initWithStyleAttributes:category:labelText:location:]";
      v26 = 2112;
      v27 = textCopy;
      v28 = 2112;
      v29 = v21;
      _os_log_impl(&dword_23BEB1000, v18, OS_LOG_TYPE_DEFAULT, "%s: waypoint.name = %@, style.attr = %@", buf, 0x20u);
    }
  }

  return v15;
}

- (UIColor)glyphColor
{
  glyphColor = self->_glyphColor;
  if (!glyphColor)
  {
    v4 = self->_styleAttributes;
    v6 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v5, self->_styleAttributes);
    v9 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v7, v8);
    v11 = objc_msgSend_glyphColorForStyleAttributes_key_(v9, v10, v4, v6);
    if (!v11)
    {
      v11 = objc_msgSend_whiteColor(MEMORY[0x277D75348], v12, v13);
    }

    v14 = self->_glyphColor;
    self->_glyphColor = v11;

    glyphColor = self->_glyphColor;
  }

  return glyphColor;
}

- (UIColor)fillColor
{
  fillColor = self->_fillColor;
  if (!fillColor)
  {
    v4 = self->_styleAttributes;
    v6 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v5, self->_styleAttributes);
    v9 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v7, v8);
    v11 = objc_msgSend_fillColorForStyleAttributes_key_(v9, v10, v4, v6);
    if (!v11)
    {
      v11 = objc_msgSend_greenColor(MEMORY[0x277D75348], v12, v13);
    }

    v14 = self->_fillColor;
    self->_fillColor = v11;

    fillColor = self->_fillColor;
  }

  return fillColor;
}

- (UIImage)glyphImage
{
  image = self->_image;
  if (!image)
  {
    v4 = self->_styleAttributes;
    v6 = objc_msgSend_keyForStyleAttributes_(GEOFeatureStyleAttributesCache, v5, self->_styleAttributes);
    v9 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v7, v8);
    v11 = objc_msgSend_imageForStyleAttributes_key_(v9, v10, v4, v6);
    if (!v11)
    {
      v11 = objc_msgSend_iconImageForSFSymbol_(NTKLeghornWaypoint, v12, @"pin");
    }

    v13 = self->_image;
    self->_image = v11;

    image = self->_image;
  }

  return image;
}

@end