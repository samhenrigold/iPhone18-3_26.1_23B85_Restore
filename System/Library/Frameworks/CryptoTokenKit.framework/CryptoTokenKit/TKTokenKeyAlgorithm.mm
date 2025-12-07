@interface TKTokenKeyAlgorithm
- (BOOL)isAlgorithm:(SecKeyAlgorithm)algorithm;
- (TKTokenKeyAlgorithm)initWithAlgorithmsArray:(id)array;
@end

@implementation TKTokenKeyAlgorithm

- (TKTokenKeyAlgorithm)initWithAlgorithmsArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = TKTokenKeyAlgorithm;
  v6 = [(TKTokenKeyAlgorithm *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_algorithms, array);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![(NSArray *)v7->_algorithms count])
    {

      v7 = 0;
    }
  }

  return v7;
}

- (BOOL)isAlgorithm:(SecKeyAlgorithm)algorithm
{
  lastObject = [(NSArray *)self->_algorithms lastObject];
  LOBYTE(algorithm) = [lastObject isEqual:algorithm];

  return algorithm;
}

@end