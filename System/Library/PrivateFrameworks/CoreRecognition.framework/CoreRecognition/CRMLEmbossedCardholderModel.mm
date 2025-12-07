@interface CRMLEmbossedCardholderModel
- (id)decodeActivations:(void *)activations;
@end

@implementation CRMLEmbossedCardholderModel

- (id)decodeActivations:(void *)activations
{
  v5 = decodeCreditCardholderActivations(activations, [(CRMLEmbossedCardholderModel *)self codeMap], [(CRMLEmbossedCardholderModel *)self classCount]);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v3;
}

@end