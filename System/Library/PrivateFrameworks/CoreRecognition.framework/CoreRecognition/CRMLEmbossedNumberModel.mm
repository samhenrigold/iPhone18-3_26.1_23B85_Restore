@interface CRMLEmbossedNumberModel
- (id)decodeActivations:(void *)activations;
@end

@implementation CRMLEmbossedNumberModel

- (id)decodeActivations:(void *)activations
{
  v5 = decodeCreditCardNumberActivations(activations, [(CRMLEmbossedNumberModel *)self codeMap], [(CRMLEmbossedNumberModel *)self classCount]);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v3;
}

@end