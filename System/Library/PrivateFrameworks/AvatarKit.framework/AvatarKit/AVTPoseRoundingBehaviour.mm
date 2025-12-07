@interface AVTPoseRoundingBehaviour
@end

@implementation AVTPoseRoundingBehaviour

uint64_t ___AVTPoseRoundingBehaviour_block_invoke()
{
  v0 = [MEMORY[0x1E696AB98] decimalNumberHandlerWithRoundingMode:? scale:? raiseOnExactness:? raiseOnOverflow:? raiseOnUnderflow:? raiseOnDivideByZero:?];
  v1 = _AVTPoseRoundingBehaviour_behavior;
  _AVTPoseRoundingBehaviour_behavior = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end