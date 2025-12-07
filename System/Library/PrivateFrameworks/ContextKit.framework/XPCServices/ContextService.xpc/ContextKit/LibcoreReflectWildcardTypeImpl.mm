@interface LibcoreReflectWildcardTypeImpl
- (BOOL)isEqual:(id)equal;
- (LibcoreReflectWildcardTypeImpl)initWithLibcoreReflectListOfTypes:(id)types withLibcoreReflectListOfTypes:(id)ofTypes;
- (NSString)description;
- (id)getLowerBounds;
- (id)getUpperBounds;
- (void)dealloc;
@end

@implementation LibcoreReflectWildcardTypeImpl

- (LibcoreReflectWildcardTypeImpl)initWithLibcoreReflectListOfTypes:(id)types withLibcoreReflectListOfTypes:(id)ofTypes
{
  JreStrongAssign(&self->extendsBound_, types);
  JreStrongAssign(&self->superBound_, ofTypes);
  return self;
}

- (id)getLowerBounds
{
  superBound = self->superBound_;
  if (!superBound || (v3 = [(LibcoreReflectListOfTypes *)superBound getResolvedTypes]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 clone];
}

- (id)getUpperBounds
{
  extendsBound = self->extendsBound_;
  if (!extendsBound || (v3 = [(LibcoreReflectListOfTypes *)extendsBound getResolvedTypes]) == 0)
  {
    JreThrowNullPointerException();
  }

  return [v3 clone];
}

- (BOOL)isEqual:(id)equal
{
  v5 = [JavaLangReflectWildcardType_class_(self a2)];
  if (!v5)
  {
    return 0;
  }

  v7 = JavaLangReflectWildcardType_class_(v5, v6);
  if (!equal)
  {
    [(LibcoreReflectWildcardTypeImpl *)self getLowerBounds];
    JreThrowNullPointerException();
  }

  if (([v7 isInstance:equal] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (!JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(-[LibcoreReflectWildcardTypeImpl getLowerBounds](self, "getLowerBounds"), [equal getLowerBounds]))
  {
    return 0;
  }

  getUpperBounds = [(LibcoreReflectWildcardTypeImpl *)self getUpperBounds];
  getUpperBounds2 = [equal getUpperBounds];

  return JavaUtilArrays_equalsWithNSObjectArray_withNSObjectArray_(getUpperBounds, getUpperBounds2);
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_initWithNSString_(@"?");
  p_extendsBound = &self->extendsBound_;
  extendsBound = self->extendsBound_;
  if (!extendsBound)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  if ([(LibcoreReflectListOfTypes *)extendsBound length]== 1)
  {
    getResolvedTypes = [(LibcoreReflectListOfTypes *)*p_extendsBound getResolvedTypes];
    if (!getResolvedTypes)
    {
      goto LABEL_17;
    }

    v8 = getResolvedTypes;
    v9 = getResolvedTypes[2];
    if (v9 <= 0)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, 0);
    }

    v10 = *(v8 + 3);
    if (v10 != NSObject_class_(v9, v7))
    {
      goto LABEL_7;
    }
  }

  if ([(LibcoreReflectListOfTypes *)*p_extendsBound length]>= 2)
  {
LABEL_7:
    v11 = [(JavaLangStringBuilder *)v3 appendWithNSString:@" extends "];
    if (!v11)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  superBound = self->superBound_;
  p_superBound = &self->superBound_;
  v12 = superBound;
  if (!superBound)
  {
    goto LABEL_17;
  }

  if ([(LibcoreReflectListOfTypes *)v12 length]>= 1)
  {
    v11 = [(JavaLangStringBuilder *)v3 appendWithNSString:@" super "];
    if (!v11)
    {
      goto LABEL_17;
    }

    p_extendsBound = p_superBound;
LABEL_13:
    [v11 appendWithId:*p_extendsBound];
  }

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = LibcoreReflectWildcardTypeImpl;
  [(LibcoreReflectWildcardTypeImpl *)&v3 dealloc];
}

@end