@interface KNAnimationEffect
+ (NSDictionary)defaultAttributes;
+ (id)updateDirectionAttributeValue:(int64_t)value andCustomTextDirectionValue:(unint64_t)directionValue turnOffBounce:(BOOL)bounce turnOffMotionBlur:(BOOL)blur forAttributes:(id)attributes;
- (CATransform3D)mvpMatrixWithContext:(SEL)context;
- (CATransform3D)mvpMatrixWithTexture:(SEL)texture andFrame:(id)frame;
- (CATransform3D)perspectiveMVPMatrixWithContext:(SEL)context;
- (CATransform3D)perspectiveMVPMatrixWithTexture:(SEL)texture andFrame:(id)frame;
- (KNAnimationEffect)initWithAnimationContext:(id)context;
@end

@implementation KNAnimationEffect

- (KNAnimationEffect)initWithAnimationContext:(id)context
{
  v5.receiver = self;
  v5.super_class = KNAnimationEffect;
  result = [(KNAnimationEffect *)&v5 init];
  if (result)
  {
    result->mAnimationContext = context;
  }

  return result;
}

+ (NSDictionary)defaultAttributes
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = @"KNBuildAttributesDefaultDuration";
  v4[0] = &unk_2884F3C78;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
}

+ (id)updateDirectionAttributeValue:(int64_t)value andCustomTextDirectionValue:(unint64_t)directionValue turnOffBounce:(BOOL)bounce turnOffMotionBlur:(BOOL)blur forAttributes:(id)attributes
{
  blurCopy = blur;
  bounceCopy = bounce;
  v12 = [attributes mutableCopy];
  [v12 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", value), @"KNBuildAttributesDirection"}];
  if (![attributes objectForKey:@"KNBuildCustomAttributesTextDelivery"])
  {
    [v12 setObject:&unk_2884F3600 forKey:@"KNBuildCustomAttributesTextDelivery"];
  }

  [v12 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", directionValue), @"KNBuildCustomAttributesDeliveryOption"}];
  if (bounceCopy)
  {
    [v12 setObject:MEMORY[0x277CBEC28] forKey:@"KNBuildCustomAttributesBounce"];
  }

  if (blurCopy)
  {
    [v12 setObject:MEMORY[0x277CBEC28] forKey:@"KNBuildCustomAttributesMotionBlur"];
  }

  return v12;
}

- (CATransform3D)mvpMatrixWithContext:(SEL)context
{
  if (![a4 isTransition])
  {
    [objc_msgSend(a4 "textures")];
    if ([a4 isMetalRenderer])
    {
      [(KNAnimationContext *)self->mAnimationContext slideRect];
    }

    else
    {
      result = [a4 drawableFrame];
      if (!self)
      {
        goto LABEL_8;
      }
    }

    result = objc_msgSend_mvpMatrixWithTexture_andFrame_(self);
    goto LABEL_9;
  }

  result = self->mAnimationContext;
  if (!result)
  {
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  result = objc_msgSend_slideProjectionMatrix(result);
LABEL_9:
  *&retstr->m31 = v12;
  *&retstr->m33 = v13;
  *&retstr->m41 = v14;
  *&retstr->m43 = v15;
  *&retstr->m11 = v8;
  *&retstr->m13 = v9;
  *&retstr->m21 = v10;
  *&retstr->m23 = v11;
  return result;
}

- (CATransform3D)mvpMatrixWithTexture:(SEL)texture andFrame:(id)frame
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  TSDTransform3DMakeOrtho();
  [objc_msgSend(frame "parent")];
  v12 = v11;
  [frame frame];
  v14 = v12 + v13;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v15 = v14 - CGRectGetMinX(v31);
  [objc_msgSend(frame "parent")];
  v17 = v16;
  [frame frame];
  v18 = v17 + CGRectGetMaxY(v32);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MaxY = CGRectGetMaxY(v33);
  v20 = *&retstr->m33;
  *&v29.m31 = *&retstr->m31;
  *&v29.m33 = v20;
  v21 = *&retstr->m43;
  *&v29.m41 = *&retstr->m41;
  *&v29.m43 = v21;
  v22 = *&retstr->m13;
  *&v29.m11 = *&retstr->m11;
  *&v29.m13 = v22;
  v23 = *&retstr->m23;
  *&v29.m21 = *&retstr->m21;
  *&v29.m23 = v23;
  result = CATransform3DTranslate(&v30, &v29, v15, -(v18 - MaxY), 0.0);
  v25 = *&v30.m33;
  *&retstr->m31 = *&v30.m31;
  *&retstr->m33 = v25;
  v26 = *&v30.m43;
  *&retstr->m41 = *&v30.m41;
  *&retstr->m43 = v26;
  v27 = *&v30.m13;
  *&retstr->m11 = *&v30.m11;
  *&retstr->m13 = v27;
  v28 = *&v30.m23;
  *&retstr->m21 = *&v30.m21;
  *&retstr->m23 = v28;
  return result;
}

- (CATransform3D)perspectiveMVPMatrixWithContext:(SEL)context
{
  if (![a4 isTransition])
  {
    [objc_msgSend(a4 "textures")];
    if ([a4 isMetalRenderer])
    {
      [(KNAnimationContext *)self->mAnimationContext slideRect];
    }

    else
    {
      result = [a4 drawableFrame];
      if (!self)
      {
        goto LABEL_8;
      }
    }

    result = objc_msgSend_perspectiveMVPMatrixWithTexture_andFrame_(self);
    goto LABEL_9;
  }

  result = self->mAnimationContext;
  if (!result)
  {
LABEL_8:
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    goto LABEL_9;
  }

  result = objc_msgSend_slideProjectionMatrix(result);
LABEL_9:
  *&retstr->m31 = v12;
  *&retstr->m33 = v13;
  *&retstr->m41 = v14;
  *&retstr->m43 = v15;
  *&retstr->m11 = v8;
  *&retstr->m13 = v9;
  *&retstr->m21 = v10;
  *&retstr->m23 = v11;
  return result;
}

- (CATransform3D)perspectiveMVPMatrixWithTexture:(SEL)texture andFrame:(id)frame
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [objc_msgSend(frame "parent")];
  v13 = v12;
  [frame frame];
  v15 = v13 + v14;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v32 = v15 - CGRectGetMinX(v37);
  [objc_msgSend(frame "parent")];
  v17 = v16;
  [frame frame];
  v18 = v17 + CGRectGetMaxY(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  v19 = v18 - CGRectGetMaxY(v39);
  [(KNAnimationContext *)self->mAnimationContext fieldOfViewInRadians];
  v21 = tan(v20 * 0.5);
  v22 = height / (v21 + v21);
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  [(KNAnimationContext *)self->mAnimationContext fieldOfViewInRadians];
  TSDTransform3DMakeProjection();
  memset(&v36, 0, sizeof(v36));
  CATransform3DMakeTranslation(&v36, width * -0.5 - x + x + v32, height * -0.5 - y + y - v19, -v22);
  a = v36;
  v23 = *&retstr->m33;
  *&b.m31 = *&retstr->m31;
  *&b.m33 = v23;
  v24 = *&retstr->m43;
  *&b.m41 = *&retstr->m41;
  *&b.m43 = v24;
  v25 = *&retstr->m13;
  *&b.m11 = *&retstr->m11;
  *&b.m13 = v25;
  v26 = *&retstr->m23;
  *&b.m21 = *&retstr->m21;
  *&b.m23 = v26;
  result = CATransform3DConcat(&v35, &a, &b);
  v28 = *&v35.m33;
  *&retstr->m31 = *&v35.m31;
  *&retstr->m33 = v28;
  v29 = *&v35.m43;
  *&retstr->m41 = *&v35.m41;
  *&retstr->m43 = v29;
  v30 = *&v35.m13;
  *&retstr->m11 = *&v35.m11;
  *&retstr->m13 = v30;
  v31 = *&v35.m23;
  *&retstr->m21 = *&v35.m21;
  *&retstr->m23 = v31;
  return result;
}

@end