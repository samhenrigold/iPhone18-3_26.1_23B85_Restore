@interface NCHeading
+ (NCHeading)idealizedHeading;
+ (id)newHeading:(id)heading;
+ (id)newHeadingForPPT:(double)t;
+ (id)randomizedHeading;
- (BOOL)isEqual:(id)equal;
- (BOOL)updateHasSignificantChange:(id)change;
- (NCHeading)initWithNCHeading:(id)heading;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation NCHeading

- (id)description
{
  hasReading = self->_hasReading;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v8 = v6;
  if (hasReading)
  {
    objc_msgSend_stringWithFormat_(v4, v7, @"<%@: %p>(heading: %f, accuracy: %f, timestamp: %f)", v6, self, *&self->_heading, *&self->_accuracy, *&self->_timestamp);
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
  changeCopy = change;
  v7 = changeCopy;
  if (((changeCopy != 0) ^ self->_hasReading))
  {
    goto LABEL_5;
  }

  objc_msgSend_heading(changeCopy, v5, v6);
  v11 = v10 - self->_heading;
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  if (v11 > 0.1)
  {
LABEL_5:
    v12 = 1;
  }

  else
  {
    objc_msgSend_headingAccuracy(v7, v8, v9);
    v14 = v13 - self->_accuracy;
    if (v14 < 0.0)
    {
      v14 = -v14;
    }

    v12 = v14 > 0.1;
  }

  return v12;
}

+ (id)newHeading:(id)heading
{
  headingCopy = heading;
  v4 = objc_opt_new();
  v6 = v4;
  if (headingCopy)
  {
    objc_msgSend_setHasReading_(v4, v5, 1);
    objc_msgSend_heading(headingCopy, v7, v8);
    if (v11 >= 360.0)
    {
      v11 = v11 + -360.0;
    }

    if (v11 < 0.0)
    {
      v11 = v11 + 360.0;
    }

    objc_msgSend_setHeading_(v6, v9, v10, v11);
    objc_msgSend_headingAccuracy(headingCopy, v12, v13);
    objc_msgSend_setAccuracy_(v6, v14, v15);
    objc_msgSend_timestamp(headingCopy, v16, v17);
    objc_msgSend_setTimestamp_(v6, v18, v19);
  }

  return v6;
}

- (NCHeading)initWithNCHeading:(id)heading
{
  headingCopy = heading;
  v23.receiver = self;
  v23.super_class = NCHeading;
  v7 = [(NCHeading *)&v23 init];
  if (v7)
  {
    objc_msgSend_heading(headingCopy, v5, v6);
    objc_msgSend_setHeading_(v7, v8, v9);
    objc_msgSend_accuracy(headingCopy, v10, v11);
    objc_msgSend_setAccuracy_(v7, v12, v13);
    objc_msgSend_timestamp(headingCopy, v14, v15);
    objc_msgSend_setTimestamp_(v7, v16, v17);
    hasReading = objc_msgSend_hasReading(headingCopy, v18, v19);
    objc_msgSend_setHasReading_(v7, v21, hasReading);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  objc_msgSend_heading(equalCopy, v5, v6);
  v8 = v7;
  objc_msgSend_heading(self, v9, v10);
  v14 = v8 - v13;
  if (v14 < 0.0)
  {
    v14 = -v14;
  }

  if (v14 <= 0.1)
  {
    objc_msgSend_accuracy(equalCopy, v11, v12);
    v17 = v16;
    objc_msgSend_accuracy(self, v18, v19);
    v21 = v17 - v20;
    if (v21 < 0.0)
    {
      v21 = -v21;
    }

    v15 = v21 < 0.1;
  }

  else
  {
LABEL_5:
    v15 = 0;
  }

  return v15;
}

+ (NCHeading)idealizedHeading
{
  if (qword_27E1C5350 != -1)
  {
    sub_23BD676E0();
  }

  v3 = qword_27E1C5348;

  return v3;
}

+ (id)randomizedHeading
{
  v2 = objc_opt_new();
  objc_msgSend_setHasReading_(v2, v3, 1);
  v4 = arc4random_uniform(0x168u);
  objc_msgSend_setHeading_(v2, v5, v6, v4);
  v7 = arc4random_uniform(0xB4u);
  objc_msgSend_setAccuracy_(v2, v8, v9, v7);

  return v2;
}

+ (id)newHeadingForPPT:(double)t
{
  v4 = objc_opt_new();
  objc_msgSend_setHasReading_(v4, v5, 1);
  objc_msgSend_setHeading_(v4, v6, v7, t);
  objc_msgSend_setAccuracy_(v4, v8, v9, 10.0);
  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCHeading alloc];

  return MEMORY[0x2821F9670](v4, sel_initWithNCHeading_, self);
}

@end