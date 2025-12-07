@interface NCIncline
+ (NCIncline)idealizedIncline;
+ (id)newIncline:(id)incline;
+ (id)randomizedIncline;
- ($1AB5FA073B851C12C2339EC22442E995)gravity;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateHasSignificantChange:(id)change;
- (CGPoint)horizontalOffset;
- (NCIncline)initWithNCIncline:(id)incline;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)setGravity:(id)gravity;
@end

@implementation NCIncline

- (id)description
{
  hasReading = self->_hasReading;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = v6;
  if (hasReading)
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p>(vertical: %f, horizontal: %f, timestamp: %f)", v6, self, *&self->_verticalTilt, *&self->_horizontalTilt, *&self->_timestamp);
  }

  else
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p>(no reading)", v6, self);
  }
  v9 = ;

  return v9;
}

- (BOOL)updateHasSignificantChange:(id)change
{
  if (((change != 0) ^ self->_hasReading))
  {
    return 1;
  }

  objc_msgSend_gravity(change, a2, change);
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;

  return sub_23BD36DF0(v6, v7, v8, x, y, z);
}

+ (id)newIncline:(id)incline
{
  inclineCopy = incline;
  v4 = objc_opt_new();
  v6 = v4;
  if (inclineCopy)
  {
    objc_msgSend_setHasReading_(v4, v5, 1);
    objc_msgSend_gravity(inclineCopy, v7, v8);
    objc_msgSend_setGravity_(v6, v9, v10);
    objc_msgSend_timestamp(inclineCopy, v11, v12);
    objc_msgSend_setTimestamp_(v6, v13, v14);
  }

  return v6;
}

- (NCIncline)initWithNCIncline:(id)incline
{
  inclineCopy = incline;
  v35.receiver = self;
  v35.super_class = NCIncline;
  v7 = [(NCIncline *)&v35 init];
  if (v7)
  {
    objc_msgSend_gravity(inclineCopy, v5, v6);
    objc_msgSend_setGravity_(v7, v8, v9);
    v12 = objc_msgSend_orientation(inclineCopy, v10, v11);
    objc_msgSend_setOrientation_(v7, v13, v12);
    objc_msgSend_verticalTilt(inclineCopy, v14, v15);
    objc_msgSend_setVerticalTilt_(v7, v16, v17);
    objc_msgSend_horizontalOffset(inclineCopy, v18, v19);
    objc_msgSend_setHorizontalOffset_(v7, v20, v21);
    objc_msgSend_horizontalTilt(inclineCopy, v22, v23);
    objc_msgSend_setHorizontalTilt_(v7, v24, v25);
    objc_msgSend_timestamp(inclineCopy, v26, v27);
    objc_msgSend_setTimestamp_(v7, v28, v29);
    hasReading = objc_msgSend_hasReading(inclineCopy, v30, v31);
    objc_msgSend_setHasReading_(v7, v33, hasReading);
  }

  return v7;
}

- (void)setGravity:(id)gravity
{
  var1 = gravity.var1;
  var0 = gravity.var0;
  self->_gravity = gravity;
  v7 = acos(gravity.var2);
  v8 = v7 + -1.57079633;
  if (v7 + -1.57079633 < 0.0)
  {
    v8 = -v8;
  }

  if (v8 <= 0.610865238)
  {
    v15 = atan2(var0, -var1);
    objc_msgSend_setOrientation_(self, v16, 0);
    v19 = 1.57079633;
    if (v15 <= 1.57079633)
    {
      v19 = v15;
    }

    v20 = fmax(v19, -1.57079633) * 180.0 / 3.14159265;

    objc_msgSend_setVerticalTilt_(self, v17, v18, v20);
  }

  else
  {
    objc_msgSend_setOrientation_(self, v6, 1);
    objc_msgSend_setHorizontalOffset_(self, v9, v10, -var0, var1);
    v13 = v7 + -3.14159265;
    if (v7 <= 1.57079633)
    {
      v13 = v7;
    }

    v14 = v13 * 180.0 / 3.14159265;

    objc_msgSend_setHorizontalTilt_(self, v11, v12, v14);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_gravity(equalCopy, v5, v6);
    v8 = v7;
    v10 = v9;
    v12 = v11;
    objc_msgSend_gravity(self, v13, v14);
    v18 = !sub_23BD36DF0(v8, v10, v12, v15, v16, v17);
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

+ (NCIncline)idealizedIncline
{
  if (qword_27E1C4F18 != -1)
  {
    sub_23BD65B30();
  }

  v3 = qword_27E1C4F10;

  return v3;
}

+ (id)randomizedIncline
{
  v2 = objc_opt_new();
  objc_msgSend_setHasReading_(v2, v3, 1);
  if (arc4random())
  {
    objc_msgSend_setOrientation_(v2, v4, 0);
    v10 = arc4random_uniform(0xB4u);
    objc_msgSend_setVerticalTilt_(v2, v11, v12, (v10 - 90));
  }

  else
  {
    objc_msgSend_setOrientation_(v2, v4, 1);
    v5 = arc4random_uniform(0x37u);
    objc_msgSend_setHorizontalTilt_(v2, v6, v7, v5);
  }

  v13 = objc_msgSend_date(MEMORY[0x277CBEAA8], v8, v9);
  objc_msgSend_timeIntervalSinceReferenceDate(v13, v14, v15);
  objc_msgSend_setTimestamp_(v2, v16, v17);

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCIncline alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithNCIncline_, self);
}

- ($1AB5FA073B851C12C2339EC22442E995)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

- (CGPoint)horizontalOffset
{
  x = self->_horizontalOffset.x;
  y = self->_horizontalOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end