@interface _MLCANENeuronParameters
+ (id)neuronUnitParametersWith:(id)with neuronType:(int)type;
- (_MLCANENeuronParameters)initWithNeuronParams:(id)params neuronType:(int)type;
@end

@implementation _MLCANENeuronParameters

+ (id)neuronUnitParametersWith:(id)with neuronType:(int)type
{
  v4 = *&type;
  withCopy = with;
  v7 = [[self alloc] initWithNeuronParams:withCopy neuronType:v4];

  return v7;
}

- (_MLCANENeuronParameters)initWithNeuronParams:(id)params neuronType:(int)type
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = _MLCANENeuronParameters;
  v8 = [(_MLCANENeuronParameters *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_neuronParams, params);
    v9->_type = type;
  }

  return v9;
}

@end