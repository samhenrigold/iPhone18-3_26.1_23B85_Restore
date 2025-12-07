@interface CMAPencilFusionResult
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CMAPencilFusionResult

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  *(v10 + 12) = self->_altitudeAngle;
  *(v10 + 16) = self->_azimuthAngle;
  *(v10 + 20) = self->_rollAngle;
  *(v10 + 48) = *self->_position;
  *(v10 + 24) = objc_msgSend_copyWithZone_(self->_estimationUpdateIndex, v11, zone);
  *(v10 + 8) = self->_estimated;
  *(v10 + 32) = self->_timestamp;
  return v10;
}

- (id)description
{
  estimationUpdateIndex = self->_estimationUpdateIndex;
  if (self->_estimated)
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"FusionResult index: %@, %s, angles (%.1f, %.1f, %.1f)°, pos (%.1f, %.1f, %.1f) mm, timestamp: %.3f sec", estimationUpdateIndex, "estimated", (self->_altitudeAngle * 57.296), (self->_azimuthAngle * 57.296), (self->_rollAngle * 57.296), COERCE_FLOAT(*self->_position), COERCE_FLOAT(HIDWORD(*self->_position)), COERCE_FLOAT(*&self->_position[8]), *&self->_timestamp);
  }

  else
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"FusionResult index: %@, %s, angles (%.1f, %.1f, %.1f)°, pos (%.1f, %.1f, %.1f) mm, timestamp: %.3f sec", estimationUpdateIndex, "real", (self->_altitudeAngle * 57.296), (self->_azimuthAngle * 57.296), (self->_rollAngle * 57.296), COERCE_FLOAT(*self->_position), COERCE_FLOAT(HIDWORD(*self->_position)), COERCE_FLOAT(*&self->_position[8]), *&self->_timestamp);
  }
}

@end