@interface _BlastDoorLPSpecializationMetadata
+ (id)keyPathsForValuesAffecting_dummyPropertyForObservation;
- (_BlastDoorLPSpecializationMetadata)initWithCoder:(id)coder;
@end

@implementation _BlastDoorLPSpecializationMetadata

- (_BlastDoorLPSpecializationMetadata)initWithCoder:(id)coder
{
  v5 = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = _BlastDoorLPSpecializationMetadata;
  return [(_BlastDoorLPSpecializationMetadata *)&v4 init];
}

+ (id)keyPathsForValuesAffecting_dummyPropertyForObservation
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB98]);

  return v2;
}

@end