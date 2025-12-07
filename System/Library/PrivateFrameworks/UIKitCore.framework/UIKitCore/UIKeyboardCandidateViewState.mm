@interface UIKeyboardCandidateViewState
+ (BOOL)resolveInstanceMethod:(SEL)method;
- (BOOL)isEqual:(id)equal;
- (CGPoint)arrowButtonOffset;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UIKeyboardCandidateViewState

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(UIKeyboardCandidateViewStyle *)self->_style copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(UIKeyboardCandidateViewStyle *)self->_disambiguationStyle copy];
  v8 = v4[3];
  v4[3] = v7;

  v4[4] = self->_primaryGridRowType;
  v4[5] = self->_disambiguationGridRowType;
  v4[6] = self->_disambiguationGridPosition;
  v4[7] = self->_sortControlPosition;
  v4[8] = self->_inlineTextViewPosition;
  v4[9] = self->_arrowButtonPosition;
  v4[10] = self->_arrowButtonDirection;
  *(v4 + 8) = self->_hasBackdrop;
  *(v4 + 9) = self->_candidateNumberEnabled;
  v4[11] = *&self->_yOffset;
  v4[12] = *&self->_additionalHeight;
  *(v4 + 7) = self->_arrowButtonOffset;
  v4[13] = self->_borders;
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v19 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    style = self->_style;
    v7 = v5;
    isEqual = objc_msgSend_isEqual_(style);
    v8 = objc_msgSend_isEqual_(self->_disambiguationStyle);
    v30 = *&self->_disambiguationGridPosition;
    v25 = *&v7->_primaryGridRowType;
    v26 = *&v7->_disambiguationGridPosition;
    v28 = *&self->_inlineTextViewPosition;
    v29 = *&self->_primaryGridRowType;
    v27 = *&v7->_inlineTextViewPosition;
    arrowButtonDirection = self->_arrowButtonDirection;
    v10 = v7->_arrowButtonDirection;
    v11 = self->_hasBackdrop == v7->_hasBackdrop;
    candidateNumberEnabled = self->_candidateNumberEnabled;
    v13 = v7->_candidateNumberEnabled;
    v23 = *&v7->_yOffset;
    v24 = *&self->_yOffset;
    arrowButtonOffset = v7->_arrowButtonOffset;
    v22 = self->_arrowButtonOffset;
    borders = self->_borders;
    v15 = v7->_borders;

    v16.i64[0] = arrowButtonDirection;
    v16.i64[1] = borders;
    v17.i64[0] = v10;
    v17.i64[1] = v15;
    v18 = vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vceqq_s64(v29, v25), vceqq_s64(v30, v26)), vuzp1q_s32(vceqq_s64(v28, v27), vceqq_s64(v16, v17))))) & vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v24, v23), vceqq_f64(v22, arrowButtonOffset)))) & v11;
    if (candidateNumberEnabled != v13)
    {
      v18 = 0;
    }

    v19 = v18 & v8 & isEqual;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___UIKeyboardCandidateViewState;
  if ((objc_msgSendSuper2(&v6, sel_resolveInstanceMethod_) & 1) == 0)
  {
    v4 = objc_opt_class();
    class_addMethod(v4, method, nullMethodIMP, "v@:");
  }

  return 1;
}

- (CGPoint)arrowButtonOffset
{
  x = self->_arrowButtonOffset.x;
  y = self->_arrowButtonOffset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end