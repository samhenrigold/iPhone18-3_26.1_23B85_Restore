@interface HMIInputFeatureProvider
- (HMIInputFeatureProvider)initWithPixelBuffer:(__CVBuffer *)buffer inputName:(id)name;
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
- (void)dealloc;
@end

@implementation HMIInputFeatureProvider

- (HMIInputFeatureProvider)initWithPixelBuffer:(__CVBuffer *)buffer inputName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = HMIInputFeatureProvider;
  v8 = [(HMIInputFeatureProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_pixelBuffer = buffer;
    objc_storeStrong(&v8->_inputName, name);
    CVPixelBufferRetain(buffer);
  }

  return v9;
}

- (void)dealloc
{
  CVPixelBufferRelease([(HMIInputFeatureProvider *)self pixelBuffer]);
  v3.receiver = self;
  v3.super_class = HMIInputFeatureProvider;
  [(HMIInputFeatureProvider *)&v3 dealloc];
}

- (NSSet)featureNames
{
  v2 = MEMORY[0x277CBEB98];
  inputName = [(HMIInputFeatureProvider *)self inputName];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:inputName count:?];
  v5 = [v2 setWithArray:?];

  return v5;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  inputName = [(HMIInputFeatureProvider *)self inputName];
  v6 = [nameCopy isEqualToString:?];

  if (v6)
  {
    v7 = MEMORY[0x277CBFEF8];
    [(HMIInputFeatureProvider *)self pixelBuffer];
    v8 = [v7 featureValueWithPixelBuffer:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end