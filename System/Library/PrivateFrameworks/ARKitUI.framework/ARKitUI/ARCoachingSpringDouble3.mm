@interface ARCoachingSpringDouble3
- (ARCoachingSpringDouble3)init;
- (__n128)floatValue;
- (__n128)target;
- (__n128)value;
- (__n128)velocity;
- (void)setDampingRatio:(double)ratio;
- (void)setFloatValue:(ARCoachingSpringDouble3 *)self;
- (void)setResponse:(double)response;
- (void)setTarget:(ARCoachingSpringDouble3 *)self;
- (void)setValue:(ARCoachingSpringDouble3 *)self;
- (void)setVelocity:(ARCoachingSpringDouble3 *)self;
- (void)stepWithDeltaTime:(double)time;
@end

@implementation ARCoachingSpringDouble3

- (__n128)value
{
  v4 = [*(self + 8) objectAtIndexedSubscript:0];
  objc_msgSend_value(v4);
  v13 = v5;
  v6 = [*(self + 8) objectAtIndexedSubscript:1];
  objc_msgSend_value(v6);
  v12 = v7;
  v8 = [*(self + 8) objectAtIndexedSubscript:2];
  objc_msgSend_value(v8);
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

- (void)setValue:(ARCoachingSpringDouble3 *)self
{
  *v7 = *v2;
  v4 = *(v2 + 16);
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setValue:*v7];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setValue:*&v7[1]];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setValue:v4];
}

- (__n128)floatValue
{
  v2 = [*(self + 8) objectAtIndexedSubscript:0];
  objc_msgSend_value(v2);
  v11 = v3;
  v4 = [*(self + 8) objectAtIndexedSubscript:1];
  objc_msgSend_value(v4);
  v5.f64[0] = v11;
  v5.f64[1] = v6;
  v12 = vcvt_f32_f64(v5);
  v7 = [*(self + 8) objectAtIndexedSubscript:2];
  objc_msgSend_value(v7);
  *&v8 = v8;
  v10 = LODWORD(v8);

  result.n128_u64[0] = v12;
  result.n128_u32[2] = v10;
  return result;
}

- (void)setFloatValue:(ARCoachingSpringDouble3 *)self
{
  *v7 = v2;
  v4 = *&v2;
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setValue:v4];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setValue:*(v7 + 1)];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setValue:*&v7[1]];
}

- (__n128)target
{
  v4 = [*(self + 8) objectAtIndexedSubscript:0];
  objc_msgSend_target(v4);
  v13 = v5;
  v6 = [*(self + 8) objectAtIndexedSubscript:1];
  objc_msgSend_target(v6);
  v12 = v7;
  v8 = [*(self + 8) objectAtIndexedSubscript:2];
  objc_msgSend_target(v8);
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

- (void)setTarget:(ARCoachingSpringDouble3 *)self
{
  *v7 = *v2;
  v4 = *(v2 + 16);
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setTarget:*v7];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setTarget:*&v7[1]];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setTarget:v4];
}

- (__n128)velocity
{
  v4 = [*(self + 8) objectAtIndexedSubscript:0];
  [v4 velocity];
  v13 = v5;
  v6 = [*(self + 8) objectAtIndexedSubscript:1];
  [v6 velocity];
  v12 = v7;
  v8 = [*(self + 8) objectAtIndexedSubscript:2];
  [v8 velocity];
  v11 = v9;
  v9.n128_u64[0] = v13;
  v9.n128_u64[1] = v12;
  v14 = v9;

  result = v14;
  *a2 = v14;
  a2[1] = v11;
  return result;
}

- (void)setVelocity:(ARCoachingSpringDouble3 *)self
{
  *v7 = *v2;
  v4 = *(v2 + 16);
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 setVelocity:*v7];

  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v6 setVelocity:*&v7[1]];

  v8 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v8 setVelocity:v4];
}

- (void)setResponse:(double)response
{
  v4 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v4 parameters];
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 parameters];
  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v6 parameters];
  ARFLSpringParametersMake();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v15 setParameters:{v8, v10, v12, v14}];

  v16 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v16 parameters];
  v17 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v17 parameters];
  v18 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v18 parameters];
  ARFLSpringParametersMake();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v27 setParameters:{v20, v22, v24, v26}];

  v39 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v39 parameters];
  v28 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v28 parameters];
  v29 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v29 parameters];
  ARFLSpringParametersMake();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v38 setParameters:{v31, v33, v35, v37}];
}

- (void)setDampingRatio:(double)ratio
{
  v4 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v4 parameters];
  v5 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v5 parameters];
  v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v6 parameters];
  ARFLSpringParametersMake();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(NSArray *)self->_springs objectAtIndexedSubscript:0];
  [v15 setParameters:{v8, v10, v12, v14}];

  v16 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v16 parameters];
  v17 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v17 parameters];
  v18 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v18 parameters];
  ARFLSpringParametersMake();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = [(NSArray *)self->_springs objectAtIndexedSubscript:1];
  [v27 setParameters:{v20, v22, v24, v26}];

  v39 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v39 parameters];
  v28 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v28 parameters];
  v29 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v29 parameters];
  ARFLSpringParametersMake();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v38 setParameters:{v31, v33, v35, v37}];
}

- (ARCoachingSpringDouble3)init
{
  v14[3] = *MEMORY[0x277D85DE8];
  v13.receiver = self;
  v13.super_class = ARCoachingSpringDouble3;
  v2 = [(ARCoachingSpringDouble3 *)&v13 init];
  if (v2)
  {
    v3 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v14[0] = v3;
    v4 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v14[1] = v4;
    v5 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v14[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    springs = v2->_springs;
    v2->_springs = v6;

    *&v2->_response = xmmword_23D3DC5E0;
    if ([(NSArray *)v2->_springs count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v8];
        [v9 setTarget:1.0];

        v10 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v8];
        [v10 setValue:1.0];

        v11 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v8];
        [v11 setVelocity:0.0];

        ++v8;
      }

      while ([(NSArray *)v2->_springs count]> v8);
    }
  }

  return v2;
}

- (void)stepWithDeltaTime:(double)time
{
  if ([(NSArray *)self->_springs count])
  {
    v5 = 0;
    do
    {
      v6 = [(NSArray *)self->_springs objectAtIndexedSubscript:v5];
      [v6 step:time];

      ++v5;
    }

    while ([(NSArray *)self->_springs count]> v5);
  }
}

@end