@interface NUNIScene
- (BOOL)isAnimating:(id)animating forKeys:(unint64_t)keys;
- (CLLocationCoordinate2D)offsetCoordinate;
- (NUNIScene)initWithSphereoids:(unint64_t)sphereoids projectionType:(unint64_t)type currentDateBlock:(id)block;
- (NUNISceneObserver)observer;
- (double)animatedFloatForKey:(uint64_t)key;
- (id)packIntoBlob;
- (id)spheroidOfType:(unint64_t)type;
- (void)addAnimation:(id)animation;
- (void)removeAllAnimationsFor:(id)for withKeys:(unint64_t)keys;
- (void)setAnimatedFloat:(unint64_t)float forKey:;
- (void)setCamera:(float)camera target:up:roll:;
- (void)setOffsetCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)setSnap:(unint64_t)snap;
- (void)unpackFromBlob:(id)blob;
- (void)update:(float)update;
- (void)updateCamera;
- (void)updateFromDateIfNeeded;
- (void)updateSunLocationAnimated:(BOOL)animated lightingPreference:(unint64_t)preference adjustEarthRotation:(BOOL)rotation;
- (void)updateSunLocationForDate:(id)date animated:(BOOL)animated lightingPreference:(unint64_t)preference adjustEarthRotation:(BOOL)rotation;
@end

@implementation NUNIScene

- (NUNIScene)initWithSphereoids:(unint64_t)sphereoids projectionType:(unint64_t)type currentDateBlock:(id)block
{
  sphereoidsCopy = sphereoids;
  blockCopy = block;
  v29.receiver = self;
  v29.super_class = NUNIScene;
  v9 = [(NUNIScene *)&v29 init];
  if (v9)
  {
    typeCopy = type;
    aBlock = blockCopy;
    v10 = objc_opt_new();
    spheroids = v9->_spheroids;
    v9->_spheroids = v10;

    v12 = 0;
    v13 = 0;
    v14 = 0;
    while (((1 << v12) & sphereoidsCopy) == 0)
    {
LABEL_13:
      if (++v12 == 24)
      {
        v20 = objc_opt_new();
        animations = v9->_animations;
        v9->_animations = v20;

        *&v9->_structure.var0 = xmmword_25B71A330;
        *&v9->_structure.var3 = xmmword_25B719EA0;
        *&v9->_structure.var5 = xmmword_25B719ED0;
        *&v9->_structure.var11 = 2;
        v9->_structure.var8.var0.var0 = 5.7588;
        v9->_anon_78[16] = 1;
        *&v9->_anon_78[8] = typeCopy;
        *&v9->_anon_78[52] = 1097859072;
        [(NUNIScene *)v9 setSnap:24];
        blockCopy = aBlock;
        v22 = _Block_copy(aBlock);
        currentDateBlock = v9->_currentDateBlock;
        v9->_currentDateBlock = v22;

        date = [(NUNIScene *)v9 date];
        [date timeIntervalSince1970];
        *&v25 = v25 / 31536000.0;
        *&v9->_anon_78[20] = LODWORD(v25);

        goto LABEL_17;
      }
    }

    v15 = 0;
    if (v12 <= 9)
    {
      v16 = v14;
      if (((1 << v12) & 0x3EE) != 0)
      {
LABEL_6:
        v15 = v16;
        goto LABEL_7;
      }

      if (v12 == 4)
      {
        v16 = v13;
        goto LABEL_6;
      }
    }

LABEL_7:
    v17 = [[NUNISpheroid alloc] initWithScene:v9 parent:v15 type:v12];
    [(NSMutableArray *)v9->_spheroids addObject:v17];
    if (v12)
    {
      if (v12 != 3)
      {
LABEL_12:

        goto LABEL_13;
      }

      v18 = v13;
      v13 = v17;
    }

    else
    {
      v18 = v14;
      v14 = v17;
    }

    v19 = v17;

    goto LABEL_12;
  }

LABEL_17:

  return v9;
}

- (void)updateCamera
{
  DWORD2(v12) = 0;
  *&v12 = 0;
  DWORD2(v11) = 0;
  *&v11 = 0;
  if (*&self->_structure.var9 == 24)
  {
    var1 = self->_structure.var8.var0.var1;
    *&v5 = 0x3F0000003F000000;
    HIDWORD(v5) = 1056964608;
    *(&v5 + 2) = self->_structure.var8.var0.var0 * 0.5;
    v11 = xmmword_25B719EA0;
    v12 = v5;
    v6 = 0.0078125;
    v7 = 0.0000305175853;
  }

  else
  {
    v8 = [(NUNIScene *)self spheroidOfType:?];
    v9 = (*(self->_currentDateBlock + 2))();
    [v8 date:v9 toCameraPosition:&v12 toCameraTarget:&v11];

    [(NUNIScene *)self restingCameraRoll];
    var1 = v10 + self->_structure.var8.var0.var1;

    v7 = *&v11;
    *&v5 = v12;
    v6 = 0.0;
  }

  *&v2 = var1;
  [(NUNIScene *)self setCamera:*&v5 target:v7 up:v6 roll:v2, v11, v12];
}

- (double)animatedFloatForKey:(uint64_t)key
{
  *&v3 = 0;
  if (key > 4)
  {
    if (key > 7)
    {
      switch(key)
      {
        case 8:
          v4 = (self + 160);
          break;
        case 9:
          v4 = (self + 164);
          break;
        case 10:
          v4 = (self + 168);
          break;
        default:
          return *&v3;
      }
    }

    else
    {
      if (key != 5)
      {
        if (key == 6)
        {
          *&v3 = *(self + 144);
        }

        else
        {
          *&v3 = *(self + 152);
        }

        return *&v3;
      }

      v4 = (self + 96);
    }

LABEL_24:
    *&v3 = vld1q_dup_f32(v4).u64[0];
    return *&v3;
  }

  if (key > 1)
  {
    if (key == 2)
    {
      v3 = *(self + 80);
      return *&v3;
    }

    if (key == 3)
    {
      v4 = (self + 100);
    }

    else
    {
      v4 = (self + 140);
    }

    goto LABEL_24;
  }

  if (key)
  {
    if (key == 1)
    {
      v3 = *(self + 64);
    }
  }

  else
  {
    v3 = *(self + 48);
  }

  return *&v3;
}

- (void)setAnimatedFloat:(unint64_t)float forKey:
{
  if (float <= 4)
  {
    if (float <= 1)
    {
      if (float)
      {
        if (float == 1)
        {
          *&self->_structure.var3 = _Q0;
        }
      }

      else
      {
        *&self->_structure.var0 = _Q0;
      }
    }

    else if (float == 2)
    {
      _Q1 = vmulq_f32(_Q0, _Q0);
      _S2 = _Q0.i32[2];
      __asm { FMLA            S1, S2, V0.S[2] }

      _Q1.f32[0] = sqrtf(_Q1.f32[0]);
      *&self->_structure.var5 = vdivq_f32(_Q0, vdupq_lane_s32(*_Q1.f32, 0));
    }

    else if (float == 3)
    {
      LODWORD(self->_structure.var8.var0.var1) = _Q0.i32[0];
    }

    else
    {
      *&self->_anon_78[20] = _Q0.i32[0];
    }
  }

  else if (float > 7)
  {
    switch(float)
    {
      case 8uLL:
        *&self->_anon_78[40] = _Q0.i32[0];
        break;
      case 9uLL:
        *&self->_anon_78[44] = _Q0.i32[0];
        break;
      case 0xAuLL:
        *&self->_anon_78[48] = _Q0.i32[0];
        break;
    }
  }

  else if (float == 5)
  {
    LODWORD(self->_structure.var8.var0.var0) = _Q0.i32[0];
    [(NUNIScene *)self updateCamera];
  }

  else if (float == 6)
  {
    *&self->_anon_78[24] = _Q0.i64[0];
  }

  else
  {
    *&self->_anon_78[32] = _Q0.i64[0];
  }
}

- (void)update:(float)update
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_animations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        *&v8 = update;
        if (([v12 update:{v8, v15}] & 1) == 0)
        {
          [v5 addIndex:{-[NSMutableArray indexOfObject:](self->_animations, "indexOfObject:", v12)}];
          observer = [v12 observer];
          [observer astronomyAnimationFinished:v12];
        }
      }

      v9 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([v5 count])
  {
    [(NSMutableArray *)self->_animations removeObjectsAtIndexes:v5];
    if (![(NSMutableArray *)self->_animations count])
    {
      observer2 = [(NUNIScene *)self observer];
      [observer2 astronomySceneAnimationFinished:self];
    }
  }
}

- (BOOL)isAnimating:(id)animating forKeys:(unint64_t)keys
{
  v22 = *MEMORY[0x277D85DE8];
  animatingCopy = animating;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 key];
        animatable = [v12 animatable];
        if (animatable == animatingCopy)
        {
          v15 = 1;

          if (((1 << v13) & ~keys) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)addAnimation:(id)animation
{
  v20 = *MEMORY[0x277D85DE8];
  animationCopy = animation;
  v5 = [animationCopy key];
  animatable = [animationCopy animatable];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if ([v12 key] == v5)
        {
          animatable2 = [v12 animatable];

          if (animatable2 == animatable)
          {
            v14 = v12;

            if (v14)
            {
              [(NUNIScene *)self removeAnimation:v14];
            }

            goto LABEL_13;
          }
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:
  [(NSMutableArray *)self->_animations addObject:animationCopy, v15];
}

- (void)removeAllAnimationsFor:(id)for withKeys:(unint64_t)keys
{
  v22 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v7 = self->_animations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 key];
        animatable = [v13 animatable];
        if (animatable == forCopy)
        {

          if (((1 << v14) & ~keys) == 0)
          {
            if (!v10)
            {
              v10 = objc_opt_new();
            }

            [v10 addIndex:{-[NSMutableArray indexOfObject:](selfCopy->_animations, "indexOfObject:", v13)}];
          }
        }

        else
        {
        }
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  if ([v10 count])
  {
    [(NSMutableArray *)selfCopy->_animations removeObjectsAtIndexes:v10];
  }
}

- (void)updateSunLocationAnimated:(BOOL)animated lightingPreference:(unint64_t)preference adjustEarthRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  animatedCopy = animated;
  date = [(NUNIScene *)self date];
  [(NUNIScene *)self updateSunLocationForDate:date animated:animatedCopy lightingPreference:preference adjustEarthRotation:rotationCopy];
}

- (void)updateSunLocationForDate:(id)date animated:(BOOL)animated lightingPreference:(unint64_t)preference adjustEarthRotation:(BOOL)rotation
{
  rotationCopy = rotation;
  v80 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  self->_isUpdateNeeded = 0;
  [dateCopy timeIntervalSince1970];
  v10.i32[1] = 1098781496;
  *v10.i32 = v9 / 31536000.0;
  if (animated)
  {
    if (*&self->_anon_78[20] != *v10.i32)
    {
      v68 = v10;
      v11 = [NUNIAnimation alloc];
      v12 = &self->_anon_78[20];
      *&v13 = vld1q_dup_f32(v12).u64[0];
      v14 = [(NUNIAnimation *)v11 initWithAnimatable:self from:4 to:v13 key:*vdupq_lane_s32(v68, 0).i64];
      [(NUNIScene *)self addAnimation:v14];
    }
  }

  else
  {
    v69 = v9 / 31536000.0;
    [(NUNIScene *)self removeAllAnimationsFor:self withKeys:16];
    *&self->_anon_78[20] = v69;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = self->_spheroids;
  v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v76;
    v18 = vdup_n_s32(0x40C90FDBu);
    v19 = vdup_n_s32(0xC0C90FDB);
    v20 = vdup_n_s32(0x40490FDBu);
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v76 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v75 + 1) + 8 * i);
        if (animated)
        {
          v23 = objc_msgSend_structure(*(*(&v75 + 1) + 8 * i));
          *v24.i32 = *(v23 + 16) + (floorf(*(v23 + 16) / 6.2832) * -6.2832);
          v63 = v24;
          *v24.i32 = *(v23 + 20) + (floorf(*(v23 + 20) / 6.2832) * -6.2832);
          v70 = v24;
          v25 = *(v23 + 112);
          v26 = vrndm_f32(vdiv_f32(v25, v18));
          v27 = vmla_f32(v25, v19, v26);
          v26.i32[0] = *(v23 + 8);
          v64 = v26;
          v26.i32[0] = *(v23 + 84);
          v65 = v26;
          v66 = *&v27;
          v73 = 0;
          v74 = 0;
          v72 = 0;
          NUNIComputeSpheroidTransformParameters(v22, dateCopy, &v74, &v74 + 1, &v72, &v73 + 1, &v73, rotationCopy);
          v28 = *(&v74 + 1) + (floorf(*(&v74 + 1) / 6.2832) * -6.2832);
          v29 = vabds_f32(v28, *v63.i32);
          if (v28 <= *v63.i32)
          {
            v30 = 6.2832;
          }

          else
          {
            v30 = -6.2832;
          }

          v31 = v28 + v30;
          if (v29 <= 3.1416)
          {
            v32 = v28;
          }

          else
          {
            v32 = v31;
          }

          v33 = *&v74 + (floorf(*&v74 / 6.2832) * -6.2832);
          v34 = vabds_f32(v33, *v70.i32);
          if (v33 <= *v70.i32)
          {
            v35 = 6.2832;
          }

          else
          {
            v35 = -6.2832;
          }

          v36 = v33 + v35;
          if (v34 > 3.1416)
          {
            v33 = v36;
          }

          v74 = __PAIR64__(LODWORD(v32), LODWORD(v33));
          v37 = vmla_f32(v72, v19, vrndm_f32(vdiv_f32(v72, v18)));
          v72 = vbsl_s8(vcgt_f32(vabd_f32(v37, *&v66), v20), vadd_f32(v37, vbsl_s8(vcgt_f32(v37, *&v66), v19, v18)), v37);
          if (*v63.i32 != v32)
          {
            v38 = [NUNIAnimation alloc];
            v39 = &v74 + 1;
            *&v40 = vld1q_dup_f32(v39).u64[0];
            v41 = [(NUNIAnimation *)v38 initWithAnimatable:v22 from:8 to:*vdupq_lane_s32(v63 key:0).i64, v40];
            [(NUNIScene *)self addAnimation:v41];

            LODWORD(v33) = v74;
          }

          if (*v70.i32 != v33)
          {
            v42 = [NUNIAnimation alloc];
            v43 = &v74;
            *&v44 = vld1q_dup_f32(v43).u64[0];
            v45 = [(NUNIAnimation *)v42 initWithAnimatable:v22 from:1 to:*vdupq_lane_s32(v70 key:0).i64, v44];
            [(NUNIScene *)self addAnimation:v45];
          }

          v46 = vmvn_s8(vceq_f32(*&v66, v72));
          if (v46.i8[0] & 1) != 0 || (v46.i8[4])
          {
            v47 = [NUNIAnimation alloc];
            v48 = [(NUNIAnimation *)v47 initWithAnimatable:v22 from:3 to:v66 key:*&v72];
            [(NUNIScene *)self addAnimation:v48];
          }

          if (*v64.i32 != *(&v73 + 1))
          {
            v49 = [NUNIAnimation alloc];
            v50 = &v73 + 1;
            *&v51 = vld1q_dup_f32(v50).u64[0];
            v52 = [(NUNIAnimation *)v49 initWithAnimatable:v22 from:4 to:*vdupq_lane_s32(v64 key:0).i64, v51];
            [(NUNIScene *)self addAnimation:v52];
          }

          if (*v65.i32 != *&v73)
          {
            v53 = [NUNIAnimation alloc];
            v54 = &v73;
            *&v55 = vld1q_dup_f32(v54).u64[0];
            v56 = [(NUNIAnimation *)v53 initWithAnimatable:v22 from:6 to:*vdupq_lane_s32(v65 key:0).i64, v55];
            [(NUNIScene *)self addAnimation:v56];
          }

          if (((1 << *v23) & 0x3E6) != 0)
          {
            v71 = *(v23 + 144);
            v57 = NUNIComputeSpheroidIdealHomeCoordinate(preference, v72.f32[0], *&v74);
            v58 = *&v57;
            v67 = *&v57;
            [v22 setHomeCoordinate:{*(&v57 + 1), *&v57}];
            if (*&v71 != v58 || (vmvn_s8(vceq_f32(*&v71, *&v67)).i32[1] & 1) != 0)
            {
              v59 = [[NUNIAnimation alloc] initWithAnimatable:v22 from:10 to:v71 key:v67];
              [(NUNIScene *)self addAnimation:v59];
            }
          }
        }

        else
        {
          [(NUNIScene *)self removeAllAnimationsFor:*(*(&v75 + 1) + 8 * i) withKeys:282];
          [v22 updateSunLocationForDate:dateCopy lightingPreference:preference adjustEarthRotation:rotationCopy];
        }
      }

      v16 = [(NSMutableArray *)obj countByEnumeratingWithState:&v75 objects:v79 count:16];
    }

    while (v16);
  }
}

- (id)spheroidOfType:(unint64_t)type
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_spheroids;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 type] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)updateFromDateIfNeeded
{
  if (self->_isUpdateNeeded && self->_anon_78[16] == 1)
  {
    [(NUNIScene *)self updateSunLocationAnimated:0 lightingPreference:1 adjustEarthRotation:1];
    self->_isUpdateNeeded = 0;
  }
}

- (void)setCamera:(float)camera target:up:roll:
{
  v6 = v5;
  v9 = v3;
  v10 = v4;
  v11 = *&camera;
  v8 = NUNILoggingObjectForDomain(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [NUNIScene setCamera:v8 target:v11 up:? roll:?];
  }

  *&self->_structure.var0 = v11;
  *&self->_structure.var3 = v9;
  *&self->_structure.var5 = v10;
  self->_structure.var8.var0.var1 = v6;
}

- (CLLocationCoordinate2D)offsetCoordinate
{
  v2 = *&self->_anon_78[36];
  v3 = *&self->_anon_78[32];
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (void)setOffsetCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  *&self->_anon_78[32] = longitude;
  *&self->_anon_78[36] = latitude;
}

- (void)setSnap:(unint64_t)snap
{
  if (*&self->_structure.var9 != snap)
  {
    *&self->_structure.var9 = snap;
    [(NUNIScene *)self updateCamera];
  }
}

- (id)packIntoBlob
{
  v3 = self->_spheroids;
  v4 = [(NSMutableArray *)v3 count];
  v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:160 * v4 + 144];
  mutableBytes = [v5 mutableBytes];
  v7 = objc_msgSend_structure(self);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  *(mutableBytes + 32) = v7[2];
  *(mutableBytes + 48) = v10;
  *mutableBytes = v8;
  *(mutableBytes + 16) = v9;
  v11 = v7[4];
  v12 = v7[5];
  v13 = v7[7];
  *(mutableBytes + 96) = v7[6];
  *(mutableBytes + 112) = v13;
  *(mutableBytes + 64) = v11;
  *(mutableBytes + 80) = v12;
  *(mutableBytes + 128) = v4;
  if (v4)
  {
    v14 = 0;
    v15 = (mutableBytes + 144);
    do
    {
      v16 = [(NSMutableArray *)v3 objectAtIndex:v14];
      v17 = objc_msgSend_structure(v16);
      v18 = v17[1];
      *v15 = *v17;
      v15[1] = v18;
      v19 = v17[5];
      v21 = v17[2];
      v20 = v17[3];
      v15[4] = v17[4];
      v15[5] = v19;
      v15[2] = v21;
      v15[3] = v20;
      v22 = v17[9];
      v24 = v17[6];
      v23 = v17[7];
      v15[8] = v17[8];
      v15[9] = v22;
      v15[6] = v24;
      v15[7] = v23;

      ++v14;
      v15 += 10;
    }

    while (v4 != v14);
  }

  return v5;
}

- (void)unpackFromBlob:(id)blob
{
  blobCopy = blob;
  v4 = self->_spheroids;
  v5 = [(NSMutableArray *)v4 count];
  v6 = blobCopy;
  bytes = [blobCopy bytes];
  v8 = bytes[3];
  v10 = *bytes;
  v9 = bytes[1];
  *&self->_structure.var5 = bytes[2];
  *&self->_structure.var8.var0.var0 = v8;
  *&self->_structure.var0 = v10;
  *&self->_structure.var3 = v9;
  v11 = bytes[7];
  v13 = bytes[4];
  v12 = bytes[5];
  *&self->_anon_78[24] = bytes[6];
  *&self->_anon_78[40] = v11;
  *&self->_structure.var11 = v13;
  *&self->_anon_78[8] = v12;
  if (v5)
  {
    v14 = 0;
    v15 = bytes + 9;
    do
    {
      v16 = [(NSMutableArray *)v4 objectAtIndex:v14];
      v17 = objc_msgSend_structure(v16);
      v18 = v15[1];
      *v17 = *v15;
      v17[1] = v18;
      v19 = v15[5];
      v21 = v15[2];
      v20 = v15[3];
      v17[4] = v15[4];
      v17[5] = v19;
      v17[2] = v21;
      v17[3] = v20;
      v22 = v15[9];
      v24 = v15[6];
      v23 = v15[7];
      v17[8] = v15[8];
      v17[9] = v22;
      v17[6] = v24;
      v17[7] = v23;

      ++v14;
      v15 += 10;
    }

    while (v5 != v14);
  }
}

- (NUNISceneObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)setCamera:(os_log_t)log target:(__n128)a2 up:roll:.cold.1(os_log_t log, __n128 a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 134218496;
  v3 = a2.n128_f32[0];
  v4 = 2048;
  v5 = a2.n128_f32[1];
  v6 = 2048;
  v7 = a2.n128_f32[2];
  _os_log_debug_impl(&dword_25B6D4000, log, OS_LOG_TYPE_DEBUG, "Camera position %f, %f, %f", &v2, 0x20u);
}

@end