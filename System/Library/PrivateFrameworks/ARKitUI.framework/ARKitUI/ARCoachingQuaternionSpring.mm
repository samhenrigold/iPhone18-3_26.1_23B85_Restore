@interface ARCoachingQuaternionSpring
- (ARCoachingQuaternionSpring)init;
- (void)setDampingRatio:(double)ratio;
- (void)setResponse:(double)response;
- (void)setTarget:(double *)target;
- (void)setValue:(double *)value;
- (void)setVelocity:(double *)velocity;
- (void)stepWithDeltaTime:(double)time;
- (void)target;
- (void)value;
- (void)velocity;
@end

@implementation ARCoachingQuaternionSpring

- (void)value
{
  v16 = [*(self + 8) objectAtIndexedSubscript:0];
  objc_msgSend_value(v16);
  v15 = v4;
  v5 = [*(self + 8) objectAtIndexedSubscript:1];
  objc_msgSend_value(v5);
  v14 = v6;
  v7 = [*(self + 8) objectAtIndexedSubscript:2];
  objc_msgSend_value(v7);
  v13 = v8;
  v9 = [*(self + 8) objectAtIndexedSubscript:3];
  objc_msgSend_value(v9);
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

- (void)setValue:(double *)value
{
  v5 = *value;
  v6 = [*(self + 8) objectAtIndexedSubscript:0];
  [v6 setValue:v5];

  v7 = value[1];
  v8 = [*(self + 8) objectAtIndexedSubscript:1];
  [v8 setValue:v7];

  v9 = value[2];
  v10 = [*(self + 8) objectAtIndexedSubscript:2];
  [v10 setValue:v9];

  v11 = value[3];
  v12 = [*(self + 8) objectAtIndexedSubscript:3];
  [v12 setValue:v11];
}

- (void)target
{
  v16 = [*(self + 8) objectAtIndexedSubscript:0];
  objc_msgSend_target(v16);
  v15 = v4;
  v5 = [*(self + 8) objectAtIndexedSubscript:1];
  objc_msgSend_target(v5);
  v14 = v6;
  v7 = [*(self + 8) objectAtIndexedSubscript:2];
  objc_msgSend_target(v7);
  v13 = v8;
  v9 = [*(self + 8) objectAtIndexedSubscript:3];
  objc_msgSend_target(v9);
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

- (void)setTarget:(double *)target
{
  v5 = *target;
  v6 = [*(self + 8) objectAtIndexedSubscript:0];
  [v6 setTarget:v5];

  v7 = target[1];
  v8 = [*(self + 8) objectAtIndexedSubscript:1];
  [v8 setTarget:v7];

  v9 = target[2];
  v10 = [*(self + 8) objectAtIndexedSubscript:2];
  [v10 setTarget:v9];

  v11 = target[3];
  v12 = [*(self + 8) objectAtIndexedSubscript:3];
  [v12 setTarget:v11];
}

- (void)velocity
{
  v16 = [*(self + 8) objectAtIndexedSubscript:0];
  [v16 velocity];
  v15 = v4;
  v5 = [*(self + 8) objectAtIndexedSubscript:1];
  [v5 velocity];
  v14 = v6;
  v7 = [*(self + 8) objectAtIndexedSubscript:2];
  [v7 velocity];
  v13 = v8;
  v9 = [*(self + 8) objectAtIndexedSubscript:3];
  [v9 velocity];
  *&v10 = v13;
  *(&v10 + 1) = v11;
  *&v12 = v15;
  *(&v12 + 1) = v14;
  *a2 = v12;
  a2[1] = v10;
}

- (void)setVelocity:(double *)velocity
{
  v5 = *velocity;
  v6 = [*(self + 8) objectAtIndexedSubscript:0];
  [v6 setVelocity:v5];

  v7 = velocity[1];
  v8 = [*(self + 8) objectAtIndexedSubscript:1];
  [v8 setVelocity:v7];

  v9 = velocity[2];
  v10 = [*(self + 8) objectAtIndexedSubscript:2];
  [v10 setVelocity:v9];

  v11 = velocity[3];
  v12 = [*(self + 8) objectAtIndexedSubscript:3];
  [v12 setVelocity:v11];
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

  v28 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v28 parameters];
  v29 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v29 parameters];
  v30 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v30 parameters];
  ARFLSpringParametersMake();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v39 setParameters:{v32, v34, v36, v38}];

  v51 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v51 parameters];
  v40 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v40 parameters];
  v41 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v41 parameters];
  ARFLSpringParametersMake();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v50 setParameters:{v43, v45, v47, v49}];
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

  v28 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v28 parameters];
  v29 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v29 parameters];
  v30 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v30 parameters];
  ARFLSpringParametersMake();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [(NSArray *)self->_springs objectAtIndexedSubscript:2];
  [v39 setParameters:{v32, v34, v36, v38}];

  v51 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v51 parameters];
  v40 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v40 parameters];
  v41 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v41 parameters];
  ARFLSpringParametersMake();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [(NSArray *)self->_springs objectAtIndexedSubscript:3];
  [v50 setParameters:{v43, v45, v47, v49}];
}

- (ARCoachingQuaternionSpring)init
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = ARCoachingQuaternionSpring;
  v2 = [(ARCoachingQuaternionSpring *)&v14 init];
  if (v2)
  {
    v3 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v15[0] = v3;
    v4 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v15[1] = v4;
    v5 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v15[2] = v5;
    v6 = [[ARCoachingStateSpring alloc] initWithValue:1.0];
    v15[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    springs = v2->_springs;
    v2->_springs = v7;

    *&v2->_response = xmmword_23D3DC5E0;
    if ([(NSArray *)v2->_springs count])
    {
      v9 = 0;
      do
      {
        v10 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v9];
        [v10 setTarget:1.0];

        v11 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v9];
        [v11 setValue:1.0];

        v12 = [(NSArray *)v2->_springs objectAtIndexedSubscript:v9];
        [v12 setVelocity:0.0];

        ++v9;
      }

      while ([(NSArray *)v2->_springs count]> v9);
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