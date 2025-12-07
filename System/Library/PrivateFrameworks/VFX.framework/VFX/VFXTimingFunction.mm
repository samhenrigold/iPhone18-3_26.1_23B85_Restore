@interface VFXTimingFunction
+ (id)functionWithCAMediaTimingFunction:(id)function;
+ (id)functionWithMass:(float)mass stiffness:(float)stiffness damping:(float)damping initialVelocity:(float)velocity;
- (VFXTimingFunction)init;
- (VFXTimingFunction)initWithCoder:(id)coder;
- (VFXTimingFunction)initWithTimingFunctionRef:(__CFXTimingFunction *)ref;
- (double)perceptualDuration;
- (double)springCoefiscients;
- (double)springDuration;
- (float)bounce;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setBounce:(float)bounce;
- (void)setDamping:(float)damping;
- (void)setInitialVelocity:(float)velocity;
- (void)setMass:(float)mass;
- (void)setPerceptualDuration:(double)duration;
- (void)setSpringCoefiscients:(VFXTimingFunction *)self;
- (void)setStiffness:(float)stiffness;
@end

@implementation VFXTimingFunction

- (VFXTimingFunction)initWithTimingFunctionRef:(__CFXTimingFunction *)ref
{
  v7.receiver = self;
  v7.super_class = VFXTimingFunction;
  v4 = [(VFXTimingFunction *)&v7 init];
  if (v4)
  {
    if (ref)
    {
      v5 = CFRetain(ref);
    }

    else
    {
      v5 = 0;
    }

    v4->_timingFunction = v5;
  }

  return v4;
}

- (VFXTimingFunction)init
{
  v5.receiver = self;
  v5.super_class = VFXTimingFunction;
  v2 = [(VFXTimingFunction *)&v5 init];
  if (v2)
  {
    sub_1AF120994(@"default");
    v2->_timingFunction = v3;
  }

  return v2;
}

- (void)dealloc
{
  timingFunction = self->_timingFunction;
  if (timingFunction)
  {
    CFRelease(timingFunction);
    self->_timingFunction = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXTimingFunction;
  [(VFXTimingFunction *)&v4 dealloc];
}

- (double)springCoefiscients
{
  v2 = 0;
  v3 = 0;
  sub_1AF120BE0(*(self + 8), &v3 + 1, &v3, &v2 + 1, &v2);
  return COERCE_DOUBLE(__PAIR64__(v3, HIDWORD(v3)));
}

+ (id)functionWithCAMediaTimingFunction:(id)function
{
  if (!function)
  {
    return 0;
  }

  v3 = sub_1AF36FC84(function, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [VFXTimingFunction alloc];
  v7 = objc_msgSend_initWithTimingFunctionRef_(v5, v6, v4);

  return v7;
}

+ (id)functionWithMass:(float)mass stiffness:(float)stiffness damping:(float)damping initialVelocity:(float)velocity
{
  result = sub_1AF120B08(mass, stiffness, damping, velocity);
  if (result)
  {
    v7 = result;
    v8 = [VFXTimingFunction alloc];
    v10 = objc_msgSend_initWithTimingFunctionRef_(v8, v9, v7);
    CFRelease(v7);

    return v10;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (objc_msgSend_isSpring(self, a2, zone))
  {
    objc_msgSend_springCoefiscients(self, v4, v5);
    LODWORD(v7) = HIDWORD(v6);
    LODWORD(v9) = v8;
    LODWORD(v11) = v10;
    v14 = objc_msgSend_functionWithMass_stiffness_damping_initialVelocity_(VFXTimingFunction, v12, v13, v6, v7, v9, v11);
  }

  else
  {
    v15 = objc_msgSend_caMediaTimingFunction(self, v4, v5);
    v14 = objc_msgSend_functionWithCAMediaTimingFunction_(VFXTimingFunction, v16, v15);
  }

  return v14;
}

- (double)perceptualDuration
{
  v6 = 0.0;
  if (objc_msgSend_isSpring(self, a2, v2))
  {
    objc_msgSend_springCoefiscients(self, v4, v5);
    if ((HIDWORD(v7) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      return sqrtf(*&v7 / *(&v7 + 1)) * 6.28318531;
    }
  }

  return v6;
}

- (double)springDuration
{
  v6 = 0.0;
  if (objc_msgSend_isSpring(self, a2, v2))
  {
    objc_msgSend_springCoefiscients(self, v4, v5);
    if ((HIDWORD(v7) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (v8 == 0.0)
      {
        return 1000.0;
      }

      else
      {
        v9 = fmax((20.0 / v8), 1.0);
        return (v9 + v9) * 3.14159265 * sqrtf(*&v7 / *(&v7 + 1)) * *&v7;
      }
    }
  }

  return v6;
}

- (float)bounce
{
  isSpring = objc_msgSend_isSpring(self, a2, v2);
  result = 0.0;
  if (isSpring)
  {
    objc_msgSend_springCoefiscients(self, v5, v6, 0.0);
    v17 = v8;
    v10 = v9;
    v11 = v9;
    objc_msgSend_perceptualDuration(self, v12, v13);
    v15 = v14 * v11 / (v17.f32[0] * 12.5663706);
    v16 = sqrtf(vmuls_lane_f32(v17.f32[0], v17, 1));
    if ((v10 / (v16 + v16)) <= 1.0)
    {
      return 1.0 - v15;
    }

    else
    {
      return 1.0 / v15 + -1.0;
    }
  }

  return result;
}

- (void)setSpringCoefiscients:(VFXTimingFunction *)self
{
  v4 = sub_1AF120B08(*&v2, *(&v2 + 1), *(&v2 + 2), *(&v2 + 3));
  v6 = sub_1AF120CF4(v4, v5);
  *sub_1AF120CF4(self->_timingFunction, v7) = *v6;
  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setMass:(float)mass
{
  objc_msgSend_springCoefiscients(self, a2, v3);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v5);
}

- (void)setStiffness:(float)stiffness
{
  objc_msgSend_springCoefiscients(self, a2, v3);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v5);
}

- (void)setDamping:(float)damping
{
  objc_msgSend_springCoefiscients(self, a2, v3);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v5);
}

- (void)setInitialVelocity:(float)velocity
{
  objc_msgSend_springCoefiscients(self, a2, v3);

  MEMORY[0x1EEE66B58](self, sel_setSpringCoefiscients_, v5);
}

- (void)setBounce:(float)bounce
{
  if (objc_msgSend_isSpring(self, a2, v3))
  {
    v5 = objc_alloc(MEMORY[0x1E69794A8]);
    objc_msgSend_perceptualDuration(self, v6, v7);
    v30 = objc_msgSend_initWithPerceptualDuration_bounce_(v5, v8, v9);
    objc_msgSend_mass(v30, v10, v11);
    v13 = v12;
    objc_msgSend_stiffness(v30, v14, v15);
    v17 = v16;
    objc_msgSend_damping(v30, v18, v19);
    v21 = v20;
    objc_msgSend_initialVelocity(v30, v22, v23);
    v25 = v24;
    v26 = sub_1AF120B08(v13, v17, v21, v25);
    v28 = sub_1AF120CF4(v26, v27);
    *sub_1AF120CF4(self->_timingFunction, v29) = *v28;
    if (v26)
    {
      CFRelease(v26);
    }
  }
}

- (void)setPerceptualDuration:(double)duration
{
  if (objc_msgSend_isSpring(self, a2, v3))
  {
    v6 = objc_alloc(MEMORY[0x1E69794A8]);
    objc_msgSend_bounce(self, v7, v8);
    v32 = objc_msgSend_initWithPerceptualDuration_bounce_(v6, v10, v11, duration, v9);
    objc_msgSend_mass(v32, v12, v13);
    v15 = v14;
    objc_msgSend_stiffness(v32, v16, v17);
    v19 = v18;
    objc_msgSend_damping(v32, v20, v21);
    v23 = v22;
    objc_msgSend_initialVelocity(v32, v24, v25);
    v27 = v26;
    v28 = sub_1AF120B08(v15, v19, v23, v27);
    v30 = sub_1AF120CF4(v28, v29);
    *sub_1AF120CF4(self->_timingFunction, v31) = *v30;
    if (v28)
    {
      CFRelease(v28);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  if (sub_1AF120D3C(self->_timingFunction, a2))
  {

    objc_msgSend_encodeBool_forKey_(coder, v5, 1, @"linear");
  }

  else
  {
    v7 = sub_1AF120BC4(self->_timingFunction);
    if (v7)
    {
      objc_msgSend_encodeBool_forKey_(coder, v6, 1, @"spring");
    }

    v8 = sub_1AF120CF4(self->_timingFunction, v6);
    LODWORD(v9) = *v8;
    objc_msgSend_encodeFloat_forKey_(coder, v10, @"c0", v9);
    LODWORD(v11) = v8[1];
    objc_msgSend_encodeFloat_forKey_(coder, v12, @"c1", v11);
    LODWORD(v13) = v8[2];
    objc_msgSend_encodeFloat_forKey_(coder, v14, @"c2", v13);
    LODWORD(v15) = v8[3];
    objc_msgSend_encodeFloat_forKey_(coder, v16, @"c3", v15);
    if (v7)
    {
      LODWORD(v18) = v8[4];

      objc_msgSend_encodeFloat_forKey_(coder, v17, @"c4", v18);
    }
  }
}

- (VFXTimingFunction)initWithCoder:(id)coder
{
  v24.receiver = self;
  v24.super_class = VFXTimingFunction;
  v5 = [(VFXTimingFunction *)&v24 init];
  if (v5)
  {
    if (objc_msgSend_decodeBoolForKey_(coder, v4, @"linear"))
    {
      sub_1AF120994(@"linear");
    }

    else
    {
      v8 = objc_msgSend_decodeBoolForKey_(coder, v6, @"spring");
      objc_msgSend_decodeFloatForKey_(coder, v9, @"c0");
      v11 = v10;
      objc_msgSend_decodeFloatForKey_(coder, v12, @"c1");
      v14 = v13;
      objc_msgSend_decodeFloatForKey_(coder, v15, @"c2");
      v17 = v16;
      objc_msgSend_decodeFloatForKey_(coder, v18, @"c3");
      v21 = v20;
      if (v8)
      {
        objc_msgSend_decodeFloatForKey_(coder, v19, @"c4");
        v7 = sub_1AF120A84(v11, v14, v17, v21, v22);
      }

      else
      {
        v7 = sub_1AF120C80(v11, v14, v17, v20);
      }
    }

    v5->_timingFunction = v7;
  }

  return v5;
}

@end