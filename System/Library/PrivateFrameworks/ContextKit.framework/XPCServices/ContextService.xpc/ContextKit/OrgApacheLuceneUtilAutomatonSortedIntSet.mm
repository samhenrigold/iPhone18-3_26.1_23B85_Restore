@interface OrgApacheLuceneUtilAutomatonSortedIntSet
- (BOOL)isEqual:(id)equal;
- (id)description;
- (id)freezeWithInt:(int)int;
- (void)computeHash;
- (void)dealloc;
- (void)decrWithInt:(int)int;
- (void)incrWithInt:(int)int;
@end

@implementation OrgApacheLuceneUtilAutomatonSortedIntSet

- (void)incrWithInt:(int)int
{
  if (self->useTreeMap_)
  {
    v10 = JavaLangInteger_valueOfWithInt_(int);
    map = self->map_;
    if (map)
    {
      v12 = [(JavaUtilMap *)map getWithId:v10];
      v13 = self->map_;
      if (v12)
      {
        v14 = [v12 intValue] + 1;
      }

      else
      {
        v14 = 1;
      }

      v42 = JavaLangInteger_valueOfWithInt_(v14);

      [(JavaUtilMap *)v13 putWithId:v10 withId:v42];
      return;
    }

    goto LABEL_61;
  }

  p_values = &self->values_;
  values = self->values_;
  if (!values)
  {
    goto LABEL_61;
  }

  upto = self->upto_;
  if (upto == values[2])
  {
    v18 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(values, upto + 1, *&int, v3, v4, v5, v6, v7);
    JreStrongAssign(&self->values_, v18);
    v25 = OrgApacheLuceneUtilArrayUtil_growWithIntArray_withInt_(self->counts_, self->upto_ + 1, v19, v20, v21, v22, v23, v24);
    JreStrongAssign(&self->counts_, v25);
    upto = self->upto_;
  }

  if (upto < 1)
  {
LABEL_19:
    v30 = *p_values;
    if (*p_values)
    {
      size = v30->super.size_;
      if ((upto & 0x80000000) != 0 || upto >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, upto);
      }

      *(&v30->super.size_ + upto + 1) = int;
      counts = self->counts_;
      if (counts)
      {
        v33 = self->upto_;
        v34 = counts->super.size_;
        if (v33 < 0 || v33 >= v34)
        {
          IOSArray_throwOutOfBoundsWithMsg(v34, v33);
        }

        *(&counts->super.size_ + v33 + 1) = 1;
        v35 = self->upto_ + 1;
        self->upto_ = v35;
        if (v35 != 30)
        {
          return;
        }

        v36 = 0;
        self->useTreeMap_ = 1;
        while (1)
        {
          v37 = self->map_;
          if (!v37)
          {
            break;
          }

          v38 = (*p_values)->super.size_;
          if (v36 >= v38)
          {
            IOSArray_throwOutOfBoundsWithMsg(v38, v36);
          }

          v39 = JavaLangInteger_valueOfWithInt_(*(&(*p_values)->super.size_ + v36 + 1));
          v40 = self->counts_;
          v41 = v40->super.size_;
          if (v36 >= v41)
          {
            IOSArray_throwOutOfBoundsWithMsg(v41, v36);
          }

          [(JavaUtilMap *)v37 putWithId:v39 withId:JavaLangInteger_valueOfWithInt_(*(&v40->super.size_ + ++v36))];
          if (v36 >= self->upto_)
          {
            return;
          }
        }
      }
    }

    goto LABEL_61;
  }

  v26 = 0;
  while (1)
  {
    v27 = *p_values;
    if (!*p_values)
    {
      goto LABEL_61;
    }

    v28 = v27->super.size_;
    if (v26 >= v28)
    {
      IOSArray_throwOutOfBoundsWithMsg(v28, v26);
    }

    if (*(&v27->super.size_ + v26 + 1) == int)
    {
      break;
    }

    v29 = (*p_values)->super.size_;
    if (v26 >= v29)
    {
      IOSArray_throwOutOfBoundsWithMsg(v29, v26);
    }

    if (*(&(*p_values)->super.size_ + v26 + 1) > int)
    {
      v45 = self->upto_;
      if (v45 - 1 >= v26)
      {
        v50 = v45 - 1;
        do
        {
          v51 = (*p_values)->super.size_;
          if (v50 >= v51)
          {
            IOSArray_throwOutOfBoundsWithMsg(v51, (v45 - 1));
          }

          if ((v45 & 0x80000000) != 0 || v45 >= v51)
          {
            IOSArray_throwOutOfBoundsWithMsg(v51, v45);
          }

          *(&(*p_values)->super.size_ + v45 + 1) = *(&(*p_values)->super.size_ + v50 + 1);
          v52 = self->counts_;
          v53 = v52->super.size_;
          v54 = v52;
          if (v50 >= v53)
          {
            IOSArray_throwOutOfBoundsWithMsg(v53, (v45 - 1));
          }

          v55 = *(&v52->super.size_ + v50 + 1);
          v56 = v54->super.size_;
          if ((v45 & 0x80000000) != 0 || v45 >= v56)
          {
            IOSArray_throwOutOfBoundsWithMsg(v56, v45);
          }

          *(&v54->super.size_ + v45 + 1) = v55;
          v45 = (v45 - 1);
        }

        while (v50-- > v26);
      }

      v46 = *p_values;
      v47 = v46->super.size_;
      if (v26 >= v47)
      {
        IOSArray_throwOutOfBoundsWithMsg(v47, v26);
      }

      *(&v46->super.size_ + v26 + 1) = int;
      v48 = self->counts_;
      if (v48)
      {
        v49 = v48->super.size_;
        if (v26 >= v49)
        {
          IOSArray_throwOutOfBoundsWithMsg(v49, v26);
        }

        *(&v48->super.size_ + v26 + 1) = 1;
        ++self->upto_;
        return;
      }

LABEL_61:
      JreThrowNullPointerException();
    }

    upto = self->upto_;
    if (++v26 >= upto)
    {
      goto LABEL_19;
    }
  }

  v43 = self->counts_;
  if (!v43)
  {
    goto LABEL_61;
  }

  v44 = v43->super.size_;
  if (v26 >= v44)
  {
    IOSArray_throwOutOfBoundsWithMsg(v44, v26);
  }

  ++*(&v43->super.size_ + v26 + 1);
}

- (void)decrWithInt:(int)int
{
  if (self->useTreeMap_)
  {
    map = self->map_;
    if (map)
    {
      v6 = [(JavaUtilMap *)map getWithId:JavaLangInteger_valueOfWithInt_(int)];
      if (v6)
      {
        intValue = [v6 intValue];
        v8 = self->map_;
        v9 = JavaLangInteger_valueOfWithInt_(int);
        if (intValue == 1)
        {
          [(JavaUtilMap *)v8 removeWithId:v9];
        }

        else
        {
          [(JavaUtilMap *)v8 putWithId:v9 withId:JavaLangInteger_valueOfWithInt_(intValue - 1)];
        }

        if (![(JavaUtilMap *)self->map_ size])
        {
          self->useTreeMap_ = 0;
          self->upto_ = 0;
        }

        return;
      }
    }

LABEL_34:
    JreThrowNullPointerException();
  }

  if (self->upto_ < 1)
  {
    return;
  }

  v10 = 0;
  while (1)
  {
    values = self->values_;
    if (!values)
    {
      goto LABEL_34;
    }

    size = values->super.size_;
    if (v10 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v10);
    }

    if (*(&values->super.size_ + v10 + 1) == int)
    {
      break;
    }

    if (++v10 >= self->upto_)
    {
      return;
    }
  }

  counts = self->counts_;
  if (!counts)
  {
    goto LABEL_34;
  }

  v14 = counts->super.size_;
  if (v10 >= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(v14, v10);
  }

  --*(&counts->super.size_ + v10 + 1);
  v15 = self->counts_;
  v16 = v15->super.size_;
  if (v10 >= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(v16, v10);
  }

  if (!*(&v15->super.size_ + v10 + 1))
  {
    v17 = self->upto_ - 1;
    if (v10 < v17)
    {
      do
      {
        v18 = self->values_;
        v19 = v10 + 1;
        v20 = v18->super.size_;
        if (v10 + 1 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, (v10 + 1));
        }

        v21 = v18->buffer_[v10];
        if (v10 >= v20)
        {
          IOSArray_throwOutOfBoundsWithMsg(v20, v10);
        }

        *(&self->values_->super.size_ + v10 + 1) = v21;
        v22 = self->counts_;
        v23 = v22->super.size_;
        if (v19 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, (v10 + 1));
        }

        v24 = v22->buffer_[v10];
        if (v10 >= v23)
        {
          IOSArray_throwOutOfBoundsWithMsg(v23, v10);
        }

        *(&self->counts_->super.size_ + ++v10) = v24;
      }

      while (v17 != v19);
    }

    self->upto_ = v17;
  }
}

- (void)computeHash
{
  if (!self->useTreeMap_)
  {
    upto = self->upto_;
    self->hashCode_ = upto;
    if (upto < 1)
    {
      return;
    }

    v27 = 0;
    v28 = upto;
    while (1)
    {
      values = self->values_;
      if (!values)
      {
        break;
      }

      size = values->super.size_;
      if (v27 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v27);
      }

      v28 = *(&values->super.size_ + v27 + 1) + 683 * v28;
      self->hashCode_ = v28;
      if (++v27 >= upto)
      {
        return;
      }
    }

LABEL_28:
    JreThrowNullPointerException();
  }

  map = self->map_;
  if (!map)
  {
    goto LABEL_28;
  }

  v4 = [(JavaUtilMap *)map size];
  v5 = self->values_;
  if (!v5)
  {
    goto LABEL_28;
  }

  if (v4 > v5->super.size_)
  {
    v6 = [(JavaUtilMap *)self->map_ size];
    v13 = OrgApacheLuceneUtilArrayUtil_oversizeWithInt_withInt_(v6, 4, v7, v8, v9, v10, v11, v12);
    JreStrongAssignAndConsume(&self->values_, [IOSIntArray newArrayWithLength:v13]);
    JreStrongAssignAndConsume(&self->counts_, [IOSIntArray newArrayWithLength:v13]);
  }

  self->hashCode_ = [(JavaUtilMap *)self->map_ size];
  self->upto_ = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  keySet = [(JavaUtilMap *)self->map_ keySet];
  if (!keySet)
  {
    goto LABEL_28;
  }

  v15 = keySet;
  v16 = [keySet countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v32;
    do
    {
      v19 = 0;
      do
      {
        if (*v32 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v31 + 1) + 8 * v19);
        if (!v20)
        {
          goto LABEL_28;
        }

        intValue = [v20 intValue];
        self->hashCode_ = intValue + 683 * self->hashCode_;
        v22 = self->values_;
        v23 = self->upto_;
        self->upto_ = v23 + 1;
        v24 = v22->super.size_;
        if (v23 < 0 || v23 >= v24)
        {
          IOSArray_throwOutOfBoundsWithMsg(v24, v23);
        }

        *(&v22->super.size_ + v23 + 1) = intValue;
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v25 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v17 = v25;
    }

    while (v25);
  }
}

- (id)freezeWithInt:(int)int
{
  v5 = [IOSIntArray arrayWithLength:self->upto_];
  JavaLangSystem_arraycopyWithId_withInt_withId_withInt_withInt_(self->values_, 0, v5, 0, self->upto_);
  hashCode = self->hashCode_;
  v7 = [OrgApacheLuceneUtilAutomatonSortedIntSet_FrozenIntSet alloc];
  JreStrongAssign(&v7->values_, v5);
  v7->hashCode_ = hashCode;
  v7->state_ = int;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->hashCode_ != *(equal + 4))
  {
    return 0;
  }

  v5 = *(equal + 1);
  if (!v5)
  {
    goto LABEL_20;
  }

  v6 = *(v5 + 8);
  if (v6 != self->upto_)
  {
    return 0;
  }

  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *(equal + 1);
      v9 = *(v8 + 8);
      if (v7 >= v9)
      {
        IOSArray_throwOutOfBoundsWithMsg(v9, v7);
      }

      values = self->values_;
      if (!values)
      {
        break;
      }

      v11 = *(v8 + 12 + 4 * v7);
      size = values->super.size_;
      if (v7 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v7);
      }

      v13 = *(&values->super.size_ + v7 + 1);
      result = v11 == v13;
      if (v11 == v13 && ++v7 < self->upto_)
      {
        continue;
      }

      return result;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  return 1;
}

- (id)description
{
  v3 = [new_JavaLangStringBuilder_init() appendWithChar:91];
  v4 = v3;
  if (self->upto_ >= 1)
  {
    v5 = 0;
    while (1)
    {
      if (v5)
      {
        if (!v4)
        {
          break;
        }

        [v4 appendWithChar:32];
      }

      else if (!v4)
      {
        break;
      }

      values = self->values_;
      if (!values)
      {
        break;
      }

      size = values->super.size_;
      if (v5 >= size)
      {
        IOSArray_throwOutOfBoundsWithMsg(size, v5);
      }

      v8 = [v4 appendWithInt:*(&values->super.size_ + v5 + 1)];
      if (!v8)
      {
        break;
      }

      v9 = [v8 appendWithChar:58];
      if (!v9)
      {
        break;
      }

      counts = self->counts_;
      if (!counts)
      {
        break;
      }

      v11 = v9;
      v12 = counts->super.size_;
      if (v5 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v5);
      }

      [v11 appendWithInt:*(&counts->super.size_ + ++v5)];
      if (v5 >= self->upto_)
      {
        goto LABEL_18;
      }
    }

LABEL_21:
    JreThrowNullPointerException();
  }

  if (!v3)
  {
    goto LABEL_21;
  }

LABEL_18:
  [v4 appendWithChar:93];

  return [v4 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneUtilAutomatonSortedIntSet;
  [(OrgApacheLuceneUtilAutomatonSortedIntSet *)&v3 dealloc];
}

@end