@interface JavaUtilSimpleTimeZone
- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)zone;
- (BOOL)inDaylightTimeWithJavaUtilDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLeapYearWithInt:(int)int;
- (JavaUtilSimpleTimeZone)initWithInt:(int)int withNSString:(id)string;
- (JavaUtilSimpleTimeZone)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt withInt:(int)a6 withInt:(int)a7 withInt:(int)a8 withInt:(int)a9 withInt:(int)self0 withInt:(int)self1 withInt:(int)self2 withInt:(int)self3 withInt:(int)self4 withInt:(int)self5;
- (id)clone;
- (id)description;
- (int)getDSTSavings;
- (int)getOffsetWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withInt:(int)a7 withInt:(int)a8;
- (int)getOffsetWithLong:(int64_t)long;
- (int)mod7WithInt:(int)int;
- (unint64_t)hash;
- (void)setDSTSavingsWithInt:(int)int;
- (void)setEndRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)setEndRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6;
- (void)setEndRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withBoolean:(BOOL)boolean;
- (void)setStartRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5;
- (void)setStartRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6;
- (void)setStartRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withBoolean:(BOOL)boolean;
@end

@implementation JavaUtilSimpleTimeZone

- (JavaUtilSimpleTimeZone)initWithInt:(int)int withNSString:(id)string
{
  JavaUtilTimeZone_init();
  self->dstSavings_ = 3600000;
  [(JavaUtilTimeZone *)self setIDWithNSString:string];
  self->rawOffset_ = int;
  return self;
}

- (JavaUtilSimpleTimeZone)initWithInt:(int)int withNSString:(id)string withInt:(int)withInt withInt:(int)a6 withInt:(int)a7 withInt:(int)a8 withInt:(int)a9 withInt:(int)self0 withInt:(int)self1 withInt:(int)self2 withInt:(int)self3 withInt:(int)self4 withInt:(int)self5
{
  JavaUtilSimpleTimeZone_initWithInt_withNSString_withInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_withInt_(self, *&int, string, withInt, a6, a7, a8, a10, a11, a12, a13, a15);
  self->startMode_ = a9;
  self->endMode_ = a14;
  return self;
}

- (id)clone
{
  v4.receiver = self;
  v4.super_class = JavaUtilSimpleTimeZone;
  clone = [(JavaUtilTimeZone *)&v4 clone];
  objc_opt_class();
  if (clone && (objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return clone;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (!equal)
  {
    [(JavaUtilTimeZone *)self getID];
    goto LABEL_26;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  getID = [(JavaUtilTimeZone *)self getID];
  if (!getID)
  {
LABEL_26:
    JreThrowNullPointerException();
  }

  v6 = [getID isEqual:{objc_msgSend(equal, "getID")}];
  if (!v6)
  {
    return v6;
  }

  if (self->rawOffset_ != *(equal + 6) || self->useDaylight_ != *(equal + 72))
  {
    goto LABEL_21;
  }

  if (!self->useDaylight_)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  if (self->startYear_ != *(equal + 7) || self->startMonth_ != *(equal + 8) || self->startDay_ != *(equal + 9) || self->startMode_ != *(equal + 16) || self->startDayOfWeek_ != *(equal + 10) || self->startTime_ != *(equal + 11) || self->endMonth_ != *(equal + 12) || self->endDay_ != *(equal + 13) || self->endDayOfWeek_ != *(equal + 14) || self->endTime_ != *(equal + 15) || self->endMode_ != *(equal + 17))
  {
LABEL_21:
    LOBYTE(v6) = 0;
    return v6;
  }

  LOBYTE(v6) = self->dstSavings_ == *(equal + 19);
  return v6;
}

- (int)getDSTSavings
{
  if (self->useDaylight_)
  {
    return self->dstSavings_;
  }

  else
  {
    return 0;
  }
}

- (int)getOffsetWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withInt:(int)a7 withInt:(int)a8
{
  if (int >= 2)
  {
    v85 = JreStrcat("$I", a2, *&int, *&withInt, *&a5, *&a6, *&a7, *&a8, @"Invalid era: ");
    v86 = new_JavaLangIllegalArgumentException_initWithNSString_(v85);
    objc_exception_throw(v86);
  }

  v11 = *&a6;
  v12 = *&a5;
  sub_100243978(*&a5, *&a7, *&a8, *&withInt, *&a5, *&a6, *&a7, *&a8);
  if (v12 != 1 || v11 != 29)
  {
    goto LABEL_10;
  }

  v21 = withInt & 3;
  if (withInt < 1583 || (withInt & 3) != 0)
  {
    if (withInt > 1582)
    {
LABEL_10:
      sub_100243A00(v12, v11, v15, v16, v17, v18, v19, v20);
      goto LABEL_11;
    }
  }

  else
  {
    HIDWORD(v22) = -1030792151 * withInt;
    LODWORD(v22) = -1030792151 * withInt;
    if ((v22 >> 2) > 0x28F5C28)
    {
      goto LABEL_11;
    }

    v21 = withInt % 0x190u;
  }

  if (v21)
  {
    goto LABEL_10;
  }

LABEL_11:
  useDaylightTime = [(JavaUtilSimpleTimeZone *)self useDaylightTime];
  if (int != 1 || !useDaylightTime || self->startYear_ > withInt)
  {
    return self->rawOffset_;
  }

  endMonth = self->endMonth_;
  startMonth = self->startMonth_;
  if (endMonth >= startMonth)
  {
    if (endMonth >= v12)
    {
      v27 = __OFSUB__(startMonth, v12);
      v29 = startMonth <= v12;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    if (!v29)
    {
      return self->rawOffset_;
    }
  }

  else
  {
    if (endMonth < v12)
    {
      v27 = __OFSUB__(startMonth, v12);
      v28 = startMonth <= v12;
    }

    else
    {
      v27 = 0;
      v28 = 1;
    }

    if (!v28)
    {
      return self->rawOffset_;
    }
  }

  v30 = (a7 - v11) % 7;
  if ((v30 & (a7 - v11)) < 0 != v27)
  {
    v31 = v30 + 7;
  }

  else
  {
    v31 = (a7 - v11) % 7;
  }

  if (startMonth != v12)
  {
    v32 = 0;
    goto LABEL_40;
  }

  v32 = 0;
  startMode = self->startMode_;
  if (startMode > 2)
  {
    v50 = __OFSUB__(startMode, 3);
    if (startMode == 3)
    {
      startDay = self->startDay_;
      v59 = self->startDayOfWeek_ - startDay - v31 + 1;
      if (((v59 % 7) & v59) < 0 != v50)
      {
        v60 = v59 % 7 + 7;
      }

      else
      {
        v60 = v59 % 7;
      }

      v32 = v60 + startDay;
    }

    else
    {
      v51 = __OFSUB__(startMode, 4);
      if (startMode == 4)
      {
        v52 = self->startDay_;
        v53 = self->startDayOfWeek_ - v52 - v31 + 1;
        if (((v53 % 7) & v53) < 0 != v51)
        {
          v54 = v53 % 7 + 7;
        }

        else
        {
          v54 = v53 % 7;
        }

        if (v54)
        {
          v32 = v52 + v54 - 7;
        }

        else
        {
          v32 = self->startDay_;
        }
      }
    }
  }

  else
  {
    if (startMode == 1)
    {
      v32 = self->startDay_;
      goto LABEL_137;
    }

    v34 = __OFSUB__(startMode, 2);
    if (startMode == 2)
    {
      v35 = self->startDay_;
      if ((v35 & 0x80000000) == 0)
      {
        v36 = self->startDayOfWeek_ - v31;
        if (((v36 % 7) & v36) < 0 != v34)
        {
          v37 = v36 % 7 + 7;
        }

        else
        {
          v37 = v36 % 7;
        }

        v32 = v37 - v35 + 8 * v35 - 6;
        goto LABEL_137;
      }

      if ((atomic_load_explicit(JavaUtilGregorianCalendar__initialized, memory_order_acquire) & 1) == 0)
      {
        sub_1002447B4();
      }

      if (!JavaUtilGregorianCalendar_DaysInMonth_)
      {
        goto LABEL_141;
      }

      v68 = self->startMonth_;
      v69 = *(JavaUtilGregorianCalendar_DaysInMonth_ + 8);
      if (v68 < 0 || v68 >= v69)
      {
        IOSArray_throwOutOfBoundsWithMsg(v69, self->startMonth_);
      }

      v70 = *(JavaUtilGregorianCalendar_DaysInMonth_ + 12 + v68);
      v71 = __OFSUB__(v68, 1);
      if (v68 != 1)
      {
        goto LABEL_133;
      }

      v72 = withInt & 3;
      if (withInt < 1583 || (withInt & 3) != 0)
      {
        v71 = __OFSUB__(withInt, 1582);
        if (withInt > 1582)
        {
          goto LABEL_133;
        }
      }

      else
      {
        HIDWORD(v74) = -1030792151 * withInt;
        LODWORD(v74) = -1030792151 * withInt;
        v73 = v74 >> 2;
        v71 = __OFSUB__(v73, 42949672);
        if (v73 > 0x28F5C28)
        {
LABEL_132:
          ++v70;
          goto LABEL_133;
        }

        v72 = withInt % 0x190u;
      }

      if (!v72)
      {
        goto LABEL_132;
      }

LABEL_133:
      v81 = v70 - self->startDay_ + 8 * self->startDay_;
      v82 = self->startDayOfWeek_ - v31 - v70;
      if (((v82 % 7) & v82) < 0 != v71)
      {
        v83 = v82 % 7 + 7;
      }

      else
      {
        v83 = v82 % 7;
      }

      v32 = v81 + v83 + 1;
    }
  }

LABEL_137:
  if (v32 > v11)
  {
    return self->rawOffset_;
  }

  if (v32 == v11)
  {
    v32 = v11;
    if (self->startTime_ > a8)
    {
      return self->rawOffset_;
    }
  }

LABEL_40:
  v38 = self->endTime_ - self->dstSavings_;
  v39 = (v12 + 1) % 12;
  LODWORD(v40) = self->endMonth_;
  if (v40 != v12 && ((v38 & 0x80000000) == 0 || v39 != v40))
  {
    return self->dstSavings_ + self->rawOffset_;
  }

  endMode = self->endMode_;
  if (endMode > 2)
  {
    v45 = __OFSUB__(endMode, 3);
    if (endMode == 3)
    {
      endDay = self->endDay_;
      v56 = self->endDayOfWeek_ - endDay - v31 + 1;
      if (((v56 % 7) & v56) < 0 != v45)
      {
        v57 = v56 % 7 + 7;
      }

      else
      {
        v57 = v56 % 7;
      }

      v32 = v57 + endDay;
    }

    else
    {
      v46 = __OFSUB__(endMode, 4);
      if (endMode == 4)
      {
        v47 = self->endDay_;
        v48 = self->endDayOfWeek_ - v47 - v31 + 1;
        if (((v48 % 7) & v48) < 0 != v46)
        {
          v49 = v48 % 7 + 7;
        }

        else
        {
          v49 = v48 % 7;
        }

        if (v49)
        {
          v32 = v47 + v49 - 7;
        }

        else
        {
          v32 = self->endDay_;
        }
      }
    }
  }

  else
  {
    if (endMode == 1)
    {
      v32 = self->endDay_;
      goto LABEL_104;
    }

    if (endMode == 2)
    {
      v42 = self->endDay_;
      if ((v42 & 0x80000000) == 0)
      {
        v43 = self->endDayOfWeek_ - v31;
        if (((v43 % 7) & v43) < 0 != __OFSUB__(endMode, 2))
        {
          v44 = v43 % 7 + 7;
        }

        else
        {
          v44 = v43 % 7;
        }

        v32 = v44 - v42 + 8 * v42 - 6;
        goto LABEL_104;
      }

      if ((atomic_load_explicit(JavaUtilGregorianCalendar__initialized, memory_order_acquire) & 1) == 0)
      {
        v84 = v38;
        sub_1002447B4();
        v39 = (v12 + 1) % 12;
        v38 = v84;
      }

      if (!JavaUtilGregorianCalendar_DaysInMonth_)
      {
        goto LABEL_141;
      }

      v61 = self->endMonth_;
      v62 = *(JavaUtilGregorianCalendar_DaysInMonth_ + 8);
      if (v61 < 0 || v61 >= v62)
      {
        IOSArray_throwOutOfBoundsWithMsg(v62, self->endMonth_);
      }

      LODWORD(v40) = self->endMonth_;
      v63 = *(JavaUtilGregorianCalendar_DaysInMonth_ + 12 + v61);
      v64 = __OFSUB__(v61, 1);
      if (v61 != 1)
      {
        goto LABEL_100;
      }

      v65 = withInt & 3;
      if (withInt < 1583 || (withInt & 3) != 0)
      {
        v64 = __OFSUB__(withInt, 1582);
        if (withInt > 1582)
        {
          goto LABEL_100;
        }
      }

      else
      {
        HIDWORD(v67) = -1030792151 * withInt;
        LODWORD(v67) = -1030792151 * withInt;
        v66 = v67 >> 2;
        v64 = __OFSUB__(v66, 42949672);
        if (v66 > 0x28F5C28)
        {
LABEL_99:
          ++v63;
          goto LABEL_100;
        }

        v65 = withInt % 0x190u;
      }

      if (!v65)
      {
        goto LABEL_99;
      }

LABEL_100:
      v75 = v63 - self->endDay_ + 8 * self->endDay_;
      v76 = self->endDayOfWeek_ - v31 - v63;
      if (((v76 % 7) & v76) < 0 != v64)
      {
        v77 = v76 % 7 + 7;
      }

      else
      {
        v77 = v76 % 7;
      }

      v32 = v75 + v77 + 1;
    }
  }

LABEL_104:
  if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

  v78 = -v38 / 0x5265C00u;
  v38 += 86400000 * v78 + 86400000;
  v32 += ~v78;
  if (v32 > 0)
  {
    goto LABEL_123;
  }

  if (v40 - 1 >= 0)
  {
    v40 = (v40 - 1);
  }

  else
  {
    v40 = 11;
  }

  if ((atomic_load_explicit(JavaUtilGregorianCalendar__initialized, memory_order_acquire) & 1) == 0)
  {
    v87 = v40;
    v88 = v38;
    v89 = v39;
    sub_1002447B4();
    v39 = v89;
    v38 = v88;
    v40 = v87;
  }

  if (!JavaUtilGregorianCalendar_DaysInMonth_)
  {
LABEL_141:
    JreThrowNullPointerException();
  }

  v79 = *(JavaUtilGregorianCalendar_DaysInMonth_ + 8);
  if (v40 >= v79)
  {
    IOSArray_throwOutOfBoundsWithMsg(v79, v40);
  }

  v32 += *(JavaUtilGregorianCalendar_DaysInMonth_ + 12 + v40);
  if (v40 == 1)
  {
    if (withInt >= 1583 && (withInt & 3) == 0)
    {
      HIDWORD(v80) = -1030792151 * withInt;
      LODWORD(v80) = -1030792151 * withInt;
      if ((v80 >> 2) <= 0x28F5C28 && withInt % 0x190u)
      {
        goto LABEL_122;
      }

      goto LABEL_121;
    }

    LODWORD(v40) = 1;
    if (withInt <= 1582 && (withInt & 3) == 0)
    {
LABEL_121:
      ++v32;
LABEL_122:
      LODWORD(v40) = 1;
    }
  }

LABEL_123:
  if (v40 == v12)
  {
    if (v32 >= v11 && (v32 != v11 || v38 > a8))
    {
      return self->dstSavings_ + self->rawOffset_;
    }

    return self->rawOffset_;
  }

  if (v39 != v40)
  {
    return self->rawOffset_;
  }

  return self->dstSavings_ + self->rawOffset_;
}

- (int)getOffsetWithLong:(int64_t)long
{
  useDaylightTime = [(JavaUtilSimpleTimeZone *)self useDaylightTime];
  rawOffset = self->rawOffset_;
  if (useDaylightTime)
  {
    v7 = JavaUtilGrego_timeToFieldsWithLong_withIntArray_(rawOffset + long, 0);
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    v8 = v7;
    size = v7->super.size_;
    if (size < 1)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 0);
    }

    if (size < 2)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 1);
    }

    if (size < 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 2);
    }

    v11 = v8[5];
    if (size <= 3)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 3);
    }

    v12 = v8[6];
    if (size <= 5)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, 5);
    }

    v13 = v8[8];
    v14 = v8[3];
    v10 = v8[4];

    LODWORD(rawOffset) = [(JavaUtilSimpleTimeZone *)self getOffsetWithInt:1 withInt:v14 withInt:v10 withInt:v11 withInt:v12 withInt:v13];
  }

  return rawOffset;
}

- (unint64_t)hash
{
  objc_sync_enter(self);
  getID = [(JavaUtilTimeZone *)self getID];
  if (!getID)
  {
    JreThrowNullPointerException();
  }

  v4 = self->rawOffset_ + [getID hash];
  if (self->useDaylight_)
  {
    v4 += self->startYear_ + self->startMonth_ + self->startDay_ + self->startDayOfWeek_ + self->startTime_ + self->startMode_ + self->endMonth_ + self->endDay_ + self->endDayOfWeek_ + self->endTime_ + self->endMode_ + self->dstSavings_;
  }

  v5 = v4;
  objc_sync_exit(self);
  return v5;
}

- (BOOL)hasSameRulesWithJavaUtilTimeZone:(id)zone
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if (!zone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  useDaylight = self->useDaylight_;
  if (useDaylight != *(zone + 72))
  {
    return 0;
  }

  rawOffset = self->rawOffset_;
  v7 = *(zone + 6);
  v8 = useDaylight ^ 1;
  if (rawOffset == v7)
  {
    result = v8;
  }

  else
  {
    result = 0;
  }

  if ((v8 & 1) == 0 && rawOffset == v7)
  {
    if (self->dstSavings_ == *(zone + 19) && self->startYear_ == *(zone + 7) && self->startMonth_ == *(zone + 8) && self->startDay_ == *(zone + 9) && self->startMode_ == *(zone + 16) && self->startDayOfWeek_ == *(zone + 10) && self->startTime_ == *(zone + 11) && self->endMonth_ == *(zone + 12) && self->endDay_ == *(zone + 13) && self->endDayOfWeek_ == *(zone + 14) && self->endTime_ == *(zone + 15))
    {
      return self->endMode_ == *(zone + 17);
    }

    return 0;
  }

  return result;
}

- (BOOL)inDaylightTimeWithJavaUtilDate:(id)date
{
  useDaylightTime = [(JavaUtilSimpleTimeZone *)self useDaylightTime];
  if (useDaylightTime)
  {
    if (!date)
    {
      JreThrowNullPointerException();
    }

    v6 = -[JavaUtilSimpleTimeZone getOffsetWithLong:](self, "getOffsetWithLong:", [date getTime]);
    LOBYTE(useDaylightTime) = v6 != [(JavaUtilSimpleTimeZone *)self getRawOffset];
  }

  return useDaylightTime;
}

- (BOOL)isLeapYearWithInt:(int)int
{
  result = (int & 3) == 0 && int < 1583;
  if (int >= 1583)
  {
    HIDWORD(v5) = -1030792151 * int;
    LODWORD(v5) = -1030792151 * int;
    v4 = v5 >> 2;
    HIDWORD(v5) = -1030792151 * int;
    LODWORD(v5) = -1030792151 * int;
    v6 = (v5 >> 4) < 0xA3D70B;
    v7 = v4 > 0x28F5C28 || v6;
    if ((int & 3) == 0)
    {
      return v7;
    }
  }

  return result;
}

- (int)mod7WithInt:(int)int
{
  if (((int % 7) & int) < 0 != v3)
  {
    return int % 7 + 7;
  }

  else
  {
    return int % 7;
  }
}

- (void)setDSTSavingsWithInt:(int)int
{
  if (int < 1)
  {
    v3 = new_JavaLangIllegalArgumentException_init();
    objc_exception_throw(v3);
  }

  self->dstSavings_ = int;
}

- (void)setEndRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  self->endMonth_ = int;
  self->endDay_ = withInt;
  self->endDayOfWeek_ = 0;
  self->endTime_ = a5;
  sub_1002440B4(self, a2, *&int, *&withInt, *&a5, v5, v6, v7);
}

- (void)setEndRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6
{
  self->endMonth_ = int;
  self->endDay_ = withInt;
  self->endDayOfWeek_ = a5;
  self->endTime_ = a6;
  sub_1002440B4(self, a2, *&int, *&withInt, *&a5, *&a6, v6, v7);
}

- (void)setEndRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withBoolean:(BOOL)boolean
{
  self->endMonth_ = int;
  if (boolean)
  {
    withIntCopy = withInt;
  }

  else
  {
    withIntCopy = -withInt;
  }

  self->endDay_ = withIntCopy;
  self->endDayOfWeek_ = -a5;
  self->endTime_ = a6;
  sub_1002440B4(self, a2, *&int, *&withInt, *&a5, *&a6, boolean, v7);
}

- (void)setStartRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5
{
  self->startMonth_ = int;
  self->startDay_ = withInt;
  self->startDayOfWeek_ = 0;
  self->startTime_ = a5;
  sub_1002442F8(self, a2, *&int, *&withInt, *&a5, v5, v6, v7);
}

- (void)setStartRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6
{
  self->startMonth_ = int;
  self->startDay_ = withInt;
  self->startDayOfWeek_ = a5;
  self->startTime_ = a6;
  sub_1002442F8(self, a2, *&int, *&withInt, *&a5, *&a6, v6, v7);
}

- (void)setStartRuleWithInt:(int)int withInt:(int)withInt withInt:(int)a5 withInt:(int)a6 withBoolean:(BOOL)boolean
{
  self->startMonth_ = int;
  if (boolean)
  {
    withIntCopy = withInt;
  }

  else
  {
    withIntCopy = -withInt;
  }

  self->startDay_ = withIntCopy;
  self->startDayOfWeek_ = -a5;
  self->startTime_ = a6;
  sub_1002442F8(self, a2, *&int, *&withInt, *&a5, *&a6, boolean, v7);
}

- (id)description
{
  v3 = [-[JavaUtilSimpleTimeZone getClass](self "getClass")];
  [(JavaUtilTimeZone *)self getID];
  return JreStrcat("$$$$I$I$Z$I$I$I$I$I$I$I$I$I$I$IC", @",startTime=", self->endMonth_, self->endDay_, @",endDay=", 93, v4, v5, v3);
}

@end