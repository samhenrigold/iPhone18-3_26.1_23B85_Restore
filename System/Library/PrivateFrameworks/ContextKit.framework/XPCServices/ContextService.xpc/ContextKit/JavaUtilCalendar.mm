@interface JavaUtilCalendar
+ (void)initialize;
- (BOOL)afterWithId:(id)id;
- (BOOL)beforeWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSetWithInt:(int)int;
- (JavaUtilCalendar)init;
- (NSString)description;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getDisplayNameWithInt:(int)int withInt:(int)withInt withJavaUtilLocale:(id)locale;
- (id)getDisplayNamesWithInt:(int)int withInt:(int)withInt withJavaUtilLocale:(id)locale;
- (id)getTime;
- (int)compareToWithId:(id)id;
- (int)getActualMaximumWithInt:(int)int;
- (int)getActualMinimumWithInt:(int)int;
- (int)getWithInt:(int)int;
- (int)internalGetWithInt:(int)int;
- (int64_t)getTimeInMillis;
- (unint64_t)hash;
- (void)clear;
- (void)clearWithInt:(int)int;
- (void)complete;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)stream;
- (void)rollWithInt:(int)int withInt:(int)withInt;
- (void)setTimeInMillisWithLong:(int64_t)long;
- (void)setTimeWithJavaUtilDate:(id)date;
- (void)setWithInt:(int)int withInt:(int)withInt;
- (void)setWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)setWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withInt:(int)a7;
- (void)setWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withInt:(int)a7 withInt:(int)a8;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream;
@end

@implementation JavaUtilCalendar

- (JavaUtilCalendar)init
{
  Default = JavaUtilTimeZone_getDefault();
  v4 = JavaUtilLocale_getDefault();
  JavaUtilCalendar_initWithJavaUtilTimeZone_withJavaUtilLocale_(self, Default, v4);
  return self;
}

- (BOOL)afterWithId:(id)id
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  getTimeInMillis = [(JavaUtilCalendar *)self getTimeInMillis];
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return getTimeInMillis > [id getTimeInMillis];
}

- (BOOL)beforeWithId:(id)id
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  getTimeInMillis = [(JavaUtilCalendar *)self getTimeInMillis];
  objc_opt_class();
  if (!id)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return getTimeInMillis < [id getTimeInMillis];
}

- (void)clear
{
  for (i = 0; i != 17; ++i)
  {
    fields = self->fields_;
    if (!fields)
    {
      goto LABEL_10;
    }

    size = fields->super.size_;
    if (i >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, i);
    }

    *(&fields->super.size_ + i + 1) = 0;
    isSet = self->isSet_;
    if (!isSet)
    {
LABEL_10:
      JreThrowNullPointerException();
    }

    v7 = isSet->super.size_;
    if (i >= v7)
    {
      IOSArray_throwOutOfBoundsWithMsg(v7, i);
    }

    *(&isSet->super.size_ + i + 4) = 0;
  }

  self->isTimeSet_ = 0;
  self->areFieldsSet_ = 0;
}

- (void)clearWithInt:(int)int
{
  fields = self->fields_;
  if (!fields)
  {
    goto LABEL_8;
  }

  size = fields->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  *(&fields->super.size_ + int + 1) = 0;
  isSet = self->isSet_;
  if (!isSet)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v7 = isSet->super.size_;
  if (int < 0 || v7 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v7, *&int);
  }

  *(&isSet->super.size_ + int + 4) = 0;
  self->isTimeSet_ = 0;
  self->areFieldsSet_ = 0;
}

- (id)clone
{
  v9.receiver = self;
  v9.super_class = JavaUtilCalendar;
  clone = [(JavaUtilCalendar *)&v9 clone];
  objc_opt_class();
  if (!clone)
  {
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_10;
  }

  fields = self->fields_;
  if (!fields || (JreStrongAssign(clone + 2, [(IOSArray *)fields clone]), (isSet = self->isSet_) == 0) || (JreStrongAssign(clone + 3, [(IOSArray *)isSet clone]), (zone = self->zone_) == 0))
  {
LABEL_9:
    JreThrowNullPointerException();
  }

  clone2 = [(JavaUtilTimeZone *)zone clone];
  objc_opt_class();
  if (clone2 && (objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_10:
    JreThrowClassCastException();
  }

  JreStrongAssign(clone + 9, clone2);
  return clone;
}

- (void)complete
{
  if (!self->isTimeSet_)
  {
    [(JavaUtilCalendar *)self computeTime];
    self->isTimeSet_ = 1;
  }

  if (!self->areFieldsSet_)
  {
    [(JavaUtilCalendar *)self computeFields];
    self->areFieldsSet_ = 1;
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!equal)
  {
    [(JavaUtilCalendar *)self getTimeInMillis];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getTimeInMillis = [(JavaUtilCalendar *)self getTimeInMillis];
  if (getTimeInMillis != [equal getTimeInMillis])
  {
    return 0;
  }

  isLenient = [(JavaUtilCalendar *)self isLenient];
  if (isLenient != [equal isLenient])
  {
    return 0;
  }

  getFirstDayOfWeek = [(JavaUtilCalendar *)self getFirstDayOfWeek];
  if (getFirstDayOfWeek != [equal getFirstDayOfWeek])
  {
    return 0;
  }

  getMinimalDaysInFirstWeek = [(JavaUtilCalendar *)self getMinimalDaysInFirstWeek];
  if (getMinimalDaysInFirstWeek != [equal getMinimalDaysInFirstWeek])
  {
    return 0;
  }

  getTimeZone = [(JavaUtilCalendar *)self getTimeZone];
  if (!getTimeZone)
  {
    JreThrowNullPointerException();
  }

  v10 = getTimeZone;
  getTimeZone2 = [equal getTimeZone];

  return [v10 isEqual:getTimeZone2];
}

- (int)getWithInt:(int)int
{
  v3 = *&int;
  [(JavaUtilCalendar *)self complete];
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  size = fields->super.size_;
  if ((v3 & 0x80000000) != 0 || size <= v3)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v3);
  }

  return *(&fields->super.size_ + v3 + 1);
}

- (int)getActualMaximumWithInt:(int)int
{
  v3 = *&int;
  v5 = [(JavaUtilCalendar *)self getMaximumWithInt:?];
  v6 = [(JavaUtilCalendar *)self getLeastMaximumWithInt:v3];
  if (v5 != v6)
  {
    v7 = v6;
    [(JavaUtilCalendar *)self complete];
    time = self->time_;
    [(JavaUtilCalendar *)self setWithInt:v3 withInt:v7];
    do
    {
      v5 = v7;
      [(JavaUtilCalendar *)self rollWithInt:v3 withBoolean:1];
      LODWORD(v7) = [(JavaUtilCalendar *)self getWithInt:v3];
    }

    while (v7 > v5);
    self->time_ = time;
    self->areFieldsSet_ = 0;
  }

  return v5;
}

- (int)getActualMinimumWithInt:(int)int
{
  v3 = *&int;
  v5 = [(JavaUtilCalendar *)self getMinimumWithInt:?];
  v6 = [(JavaUtilCalendar *)self getGreatestMinimumWithInt:v3];
  if (v5 != v6)
  {
    v7 = v6;
    [(JavaUtilCalendar *)self complete];
    time = self->time_;
    [(JavaUtilCalendar *)self setWithInt:v3 withInt:v7];
    do
    {
      v5 = v7;
      [(JavaUtilCalendar *)self rollWithInt:v3 withBoolean:0];
      LODWORD(v7) = [(JavaUtilCalendar *)self getWithInt:v3];
    }

    while (v7 < v5);
    self->time_ = time;
    self->areFieldsSet_ = 0;
  }

  return v5;
}

- (id)getTime
{
  v2 = new_JavaUtilDate_initWithLong_([(JavaUtilCalendar *)self getTimeInMillis]);

  return v2;
}

- (int64_t)getTimeInMillis
{
  if (!self->isTimeSet_)
  {
    [(JavaUtilCalendar *)self computeTime];
    self->isTimeSet_ = 1;
  }

  return self->time_;
}

- (unint64_t)hash
{
  isLenient = [(JavaUtilCalendar *)self isLenient];
  getFirstDayOfWeek = [(JavaUtilCalendar *)self getFirstDayOfWeek];
  getMinimalDaysInFirstWeek = [(JavaUtilCalendar *)self getMinimalDaysInFirstWeek];
  getTimeZone = [(JavaUtilCalendar *)self getTimeZone];
  if (!getTimeZone)
  {
    JreThrowNullPointerException();
  }

  if (isLenient)
  {
    v7 = 1237;
  }

  else
  {
    v7 = 1231;
  }

  return (v7 + getFirstDayOfWeek + getMinimalDaysInFirstWeek + [getTimeZone hash]);
}

- (int)internalGetWithInt:(int)int
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  size = fields->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return *(&fields->super.size_ + int + 1);
}

- (BOOL)isSetWithInt:(int)int
{
  isSet = self->isSet_;
  if (!isSet)
  {
    JreThrowNullPointerException();
  }

  size = isSet->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  return *(&isSet->super.size_ + int + 4);
}

- (void)rollWithInt:(int)int withInt:(int)withInt
{
  if (withInt >= 0)
  {
    withIntCopy = withInt;
  }

  else
  {
    withIntCopy = -withInt;
  }

  if (withIntCopy >= 1)
  {
    v6 = *&int;
    do
    {
      [(JavaUtilCalendar *)self rollWithInt:v6 withBoolean:withInt >= 0];
      --withIntCopy;
    }

    while (withIntCopy);
  }
}

- (void)setWithInt:(int)int withInt:(int)withInt
{
  fields = self->fields_;
  if (!fields)
  {
    goto LABEL_14;
  }

  intCopy = int;
  size = fields->super.size_;
  if (int < 0 || size <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, *&int);
  }

  *(&fields->super.size_ + int + 1) = withInt;
  isSet = self->isSet_;
  if (!isSet)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v9 = isSet->super.size_;
  if (int < 0 || v9 <= int)
  {
    IOSArray_throwOutOfBoundsWithMsg(v9, *&int);
  }

  *(&isSet->super.size_ + int + 4) = 1;
  self->isTimeSet_ = 0;
  self->areFieldsSet_ = 0;
  if ((int - 3) <= 5)
  {
    self->lastDateFieldSet_ = int;
  }

  if ((int & 0xFFFFFFFE) != 0xA)
  {
    if (int != 9)
    {
      return;
    }

    intCopy = 10;
  }

  self->lastTimeFieldSet_ = intCopy;
}

- (void)setWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  v5 = *&a5;
  v6 = *&withInt;
  [(JavaUtilCalendar *)self setWithInt:1 withInt:*&int];
  [(JavaUtilCalendar *)self setWithInt:2 withInt:v6];

  [(JavaUtilCalendar *)self setWithInt:5 withInt:v5];
}

- (void)setWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withInt:(int)a7
{
  v7 = *&a7;
  v8 = *&a6;
  v9 = *&a5;
  v10 = *&withInt;
  [(JavaUtilCalendar *)self setWithInt:1 withInt:*&int];
  [(JavaUtilCalendar *)self setWithInt:2 withInt:v10];
  [(JavaUtilCalendar *)self setWithInt:5 withInt:v9];
  [(JavaUtilCalendar *)self setWithInt:11 withInt:v8];

  [(JavaUtilCalendar *)self setWithInt:12 withInt:v7];
}

- (void)setWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withInt:(int)a7 withInt:(int)a8
{
  v8 = *&a8;
  v9 = *&a7;
  v10 = *&a6;
  v11 = *&a5;
  v12 = *&withInt;
  [(JavaUtilCalendar *)self setWithInt:1 withInt:*&int];
  [(JavaUtilCalendar *)self setWithInt:2 withInt:v12];
  [(JavaUtilCalendar *)self setWithInt:5 withInt:v11];
  [(JavaUtilCalendar *)self setWithInt:11 withInt:v10];
  [(JavaUtilCalendar *)self setWithInt:12 withInt:v9];

  [(JavaUtilCalendar *)self setWithInt:13 withInt:v8];
}

- (void)setTimeWithJavaUtilDate:(id)date
{
  if (!date)
  {
    JreThrowNullPointerException();
  }

  getTime = [date getTime];

  [(JavaUtilCalendar *)self setTimeInMillisWithLong:getTime];
}

- (void)setTimeInMillisWithLong:(int64_t)long
{
  if (!self->isTimeSet_ || !self->areFieldsSet_ || self->time_ != long)
  {
    self->time_ = long;
    self->isTimeSet_ = 1;
    self->areFieldsSet_ = 0;
    [(JavaUtilCalendar *)self complete];
  }
}

- (NSString)description
{
  v3 = [-[JavaUtilCalendar getClass](self "getClass")];
  if (self->isTimeSet_)
  {
    NSString_valueOfLong_(self->time_);
  }

  zone = self->zone_;
  if (!zone)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  [(JavaUtilTimeZone *)zone getID];
  v12 = JreStrcat("$$$$Z$Z$$$I$I", v5, v6, v7, v8, v9, v10, v11, v3);
  v13 = new_JavaLangStringBuilder_initWithNSString_(v12);
  for (i = 0; i != 17; ++i)
  {
    [(JavaLangStringBuilder *)v13 appendWithChar:44];
    if (!qword_100555320)
    {
      goto LABEL_22;
    }

    v15 = *(qword_100555320 + 8);
    if (i >= v15)
    {
      IOSArray_throwOutOfBoundsWithMsg(v15, i);
    }

    [(JavaLangStringBuilder *)v13 appendWithNSString:*(qword_100555320 + 24 + 8 * i)];
    [(JavaLangStringBuilder *)v13 appendWithChar:61];
    isSet = self->isSet_;
    if (!isSet)
    {
      goto LABEL_22;
    }

    size = isSet->super.size_;
    if (i >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, i);
    }

    if (*(&isSet->super.size_ + i + 4) == 1)
    {
      fields = self->fields_;
      if (!fields)
      {
        goto LABEL_22;
      }

      v19 = fields->super.size_;
      if (i >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, i);
      }

      [(JavaLangStringBuilder *)v13 appendWithInt:*(&fields->super.size_ + i + 1)];
    }

    else
    {
      [(JavaLangStringBuilder *)v13 appendWithChar:63];
    }
  }

  [(JavaLangStringBuilder *)v13 appendWithChar:93];

  return [(JavaLangStringBuilder *)v13 description];
}

- (int)compareToWithId:(id)id
{
  objc_opt_class();
  if (!id)
  {
    v9 = new_JavaLangNullPointerException_initWithNSString_(@"anotherCalendar == null");
    objc_exception_throw(v9);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getTimeInMillis = [(JavaUtilCalendar *)self getTimeInMillis];
  getTimeInMillis2 = [id getTimeInMillis];
  if (getTimeInMillis == getTimeInMillis2)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (getTimeInMillis > getTimeInMillis2)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

- (id)getDisplayNameWithInt:(int)int withInt:(int)withInt withJavaUtilLocale:(id)locale
{
  v8 = *&int;
  if (withInt <= 1)
  {
    withIntCopy = 1;
  }

  else
  {
    withIntCopy = withInt;
  }

  v11 = sub_100239504(int, withIntCopy, locale, *&withInt, locale, v5, v6, v7);
  v12 = [(JavaUtilCalendar *)self getWithInt:v8];
  if (!v11)
  {
    return 0;
  }

  v13 = v12;
  v14 = *(v11 + 2);
  if ((v13 & 0x80000000) != 0 || v13 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v13);
  }

  return v11[v13 + 3];
}

- (id)getDisplayNamesWithInt:(int)int withInt:(int)withInt withJavaUtilLocale:(id)locale
{
  sub_1002396BC(*&withInt, a2, *&int, *&withInt, locale, v5, v6, v7);
  [(JavaUtilCalendar *)self complete];
  v17 = new_JavaUtilHashMap_init();
  if (withInt <= 1)
  {
    v18 = sub_100239504(int, 1, locale, v12, v13, v14, v15, v16);
    sub_1002397D0(v17, v18);
  }

  if ((withInt & 0xFFFFFFFD) == 0)
  {
    v19 = sub_100239504(int, 2, locale, v12, v13, v14, v15, v16);
    sub_1002397D0(v17, v19);
  }

  if ([(JavaUtilHashMap *)v17 isEmpty])
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)stream
{
  [(JavaUtilCalendar *)self complete];
  if (!stream || (v5 = [stream putFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [v5 putWithNSString:@"areFieldsSet" withBoolean:self->areFieldsSet_];
  [v6 putWithNSString:@"fields" withId:self->fields_];
  [v6 putWithNSString:@"firstDayOfWeek" withInt:self->firstDayOfWeek_];
  [v6 putWithNSString:@"isSet" withId:self->isSet_];
  [v6 putWithNSString:@"isTimeSet" withBoolean:self->isTimeSet_];
  [v6 putWithNSString:@"lenient" withBoolean:self->lenient_];
  [v6 putWithNSString:@"minimalDaysInFirstWeek" withInt:self->minimalDaysInFirstWeek_];
  [v6 putWithNSString:@"nextStamp" withInt:2];
  [v6 putWithNSString:@"serialVersionOnStream" withInt:1];
  [v6 putWithNSString:@"time" withLong:self->time_];
  [v6 putWithNSString:@"zone" withId:self->zone_];

  [stream writeFields];
}

- (void)readObjectWithJavaIoObjectInputStream:(id)stream
{
  if (!stream || (v4 = [stream readFields]) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = v4;
  self->areFieldsSet_ = [v4 getWithNSString:@"areFieldsSet" withBoolean:0];
  v6 = [v5 getWithNSString:@"fields" withId:0];
  objc_opt_class();
  if (v6 && (objc_opt_isKindOfClass() & 1) == 0 || (JreStrongAssign(&self->fields_, v6), self->firstDayOfWeek_ = [v5 getWithNSString:@"firstDayOfWeek" withInt:1], v7 = objc_msgSend(v5, "getWithNSString:withId:", @"isSet", 0), objc_opt_class(), v7) && (objc_opt_isKindOfClass() & 1) == 0 || (JreStrongAssign(&self->isSet_, v7), self->isTimeSet_ = objc_msgSend(v5, "getWithNSString:withBoolean:", @"isTimeSet", 0), self->lenient_ = objc_msgSend(v5, "getWithNSString:withBoolean:", @"lenient", 1), self->minimalDaysInFirstWeek_ = objc_msgSend(v5, "getWithNSString:withInt:", @"minimalDaysInFirstWeek", 1), self->time_ = objc_msgSend(v5, "getWithNSString:withLong:", @"time", 0), v8 = objc_msgSend(v5, "getWithNSString:withId:", @"zone", 0), objc_opt_class(), v8) && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(&self->zone_, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilCalendar;
  [(JavaUtilCalendar *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  clone = [(JavaUtilCalendar *)self clone];

  return clone;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v10[5] = off_100456FF0;
    v10[6] = off_100457000;
    v10[7] = off_100457010;
    v11 = @"DST_OFFSET";
    v10[3] = off_100456FD0;
    v10[4] = off_100456FE0;
    v10[1] = off_100456FB0;
    v10[2] = off_100456FC0;
    v10[0] = off_100456FA0;
    v2 = [IOSObjectArray newArrayWithObjects:v10 count:17 type:NSString_class_()];
    JreStrongAssignAndConsume(&qword_100555320, v2);
    v8[0] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"areFieldsSet", +[IOSClass BOOLeanClass]);
    v3 = IOSClass_arrayType(+[IOSClass intClass], 1u);
    v8[1] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"fields", v3);
    v8[2] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"firstDayOfWeek", +[IOSClass intClass]);
    v4 = IOSClass_arrayType(+[IOSClass BOOLeanClass], 1u);
    v8[3] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"isSet", v4);
    v8[4] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"isTimeSet", +[IOSClass BOOLeanClass]);
    v8[5] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"lenient", +[IOSClass BOOLeanClass]);
    v8[6] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"minimalDaysInFirstWeek", +[IOSClass intClass]);
    v8[7] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"nextStamp", +[IOSClass intClass]);
    v8[8] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"serialVersionOnStream", +[IOSClass intClass]);
    v8[9] = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"time", +[IOSClass longClass]);
    v5 = JavaUtilTimeZone_class_();
    v9 = new_JavaIoObjectStreamField_initWithNSString_withIOSClass_(@"zone", v5);
    v7 = [IOSObjectArray newArrayWithObjects:v8 count:11 type:JavaIoObjectStreamField_class_(v9, v6)];
    JreStrongAssignAndConsume(&qword_100555328, v7);
    atomic_store(1u, &JavaUtilCalendar__initialized);
  }
}

@end