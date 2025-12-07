@interface _CLLocationGroundAltitude
- (_CLLocationGroundAltitude)initWithCoder:(id)coder;
- (_CLLocationGroundAltitude)initWithEstimate:(double)estimate uncertainty:(double)uncertainty undulation:(double)undulation undulationModel:(int)model;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _CLLocationGroundAltitude

- (_CLLocationGroundAltitude)initWithEstimate:(double)estimate uncertainty:(double)uncertainty undulation:(double)undulation undulationModel:(int)model
{
  v13.receiver = self;
  v13.super_class = _CLLocationGroundAltitude;
  result = [(_CLLocationGroundAltitude *)&v13 init];
  if (result)
  {
    result->_estimate = estimate;
    result->_uncertainty = uncertainty;
    result->_undulationModel = model;
    uncertaintyCopy2 = sqrt(uncertainty * uncertainty + 900.0);
    if (model != -1)
    {
      uncertaintyCopy2 = uncertainty;
    }

    if (uncertainty <= 0.0)
    {
      uncertaintyCopy2 = uncertainty;
    }

    estimateCopy = estimate + undulation;
    result->_isAltitudeWgs84Available = uncertainty > 0.0 && model != -1;
    if (uncertainty <= 0.0 || model == -1)
    {
      estimateCopy = estimate;
    }

    result->_undulation = undulation;
    result->_altitudeWgs84 = estimateCopy;
    result->_uncertaintyWgs84 = uncertaintyCopy2;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_encodeDouble_forKey_(coder, v5, @"kCLLocationCodingKeyGroundAltitudeEstimate", self->_estimate);
    objc_msgSend_encodeDouble_forKey_(coder, v6, @"kCLLocationCodingKeyGroundAltitudeUncertainty", self->_uncertainty);
    objc_msgSend_encodeDouble_forKey_(coder, v7, @"kCLLocationCodingKeyGroundAltitudeUndulation", self->_undulation);
    undulationModel = self->_undulationModel;

    objc_msgSend_encodeInt_forKey_(coder, v8, undulationModel, @"kCLLocationCodingKeyGroundAltitudeUndulationModel");
  }

  else
  {
    objc_msgSend_encodeValueOfObjCType_at_(coder, v5, "d", &self->_estimate);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v10, "d", &self->_uncertainty);
    objc_msgSend_encodeValueOfObjCType_at_(coder, v11, "d", &self->_undulation);

    objc_msgSend_encodeValueOfObjCType_at_(coder, v12, "i", &self->_undulationModel);
  }
}

- (_CLLocationGroundAltitude)initWithCoder:(id)coder
{
  v24 = -1.0;
  v25 = 0.0;
  v23 = 0.0;
  v22 = -1;
  if (objc_msgSend_allowsKeyedCoding(coder, a2, coder))
  {
    objc_msgSend_decodeDoubleForKey_(coder, v5, @"kCLLocationCodingKeyGroundAltitudeEstimate");
    v7 = v6;
    v25 = v6;
    objc_msgSend_decodeDoubleForKey_(coder, v8, @"kCLLocationCodingKeyGroundAltitudeUncertainty");
    v10 = v9;
    v24 = v9;
    objc_msgSend_decodeDoubleForKey_(coder, v11, @"kCLLocationCodingKeyGroundAltitudeUndulation");
    v13 = v12;
    v23 = v12;
    v15 = objc_msgSend_decodeIntForKey_(coder, v14, @"kCLLocationCodingKeyGroundAltitudeUndulationModel");
    v22 = v15;
    return objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(self, v16, v15, v7, v10, v13);
  }

  else
  {
    objc_msgSend_decodeValueOfObjCType_at_(coder, v5, "d", &v25);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v18, "d", &v24);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v19, "d", &v23);
    objc_msgSend_decodeValueOfObjCType_at_(coder, v20, "i", &v22);
    return objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(self, v21, v22, v25, v24, v23);
  }
}

@end