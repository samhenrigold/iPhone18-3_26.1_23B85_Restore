@interface PFDeviceMotionUtilities
+ (__n128)rotationFromSerializedRepresentation:(void *)representation@<X2>;
+ (id)serializedRepresentationFromRotation:(uint64_t)rotation;
@end

@implementation PFDeviceMotionUtilities

+ (id)serializedRepresentationFromRotation:(uint64_t)rotation
{
  v12 = *(rotation + 16);
  v3 = *(rotation + 24);
  v4 = *(rotation + 8);
  v5 = MEMORY[0x1E695DEC8];
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v4];
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*&v12];
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v3];
  v10 = [v5 arrayWithObjects:{v6, v7, v8, v9, 0}];

  return v10;
}

+ (__n128)rotationFromSerializedRepresentation:(void *)representation@<X2>
{
  representationCopy = representation;
  v4 = [representationCopy objectAtIndexedSubscript:0];
  [v4 doubleValue];
  v17 = v5;
  v6 = [representationCopy objectAtIndexedSubscript:1];
  [v6 doubleValue];
  v14 = v7;
  v8 = [representationCopy objectAtIndexedSubscript:2];
  [v8 doubleValue];
  v15 = v9;
  v10 = [representationCopy objectAtIndexedSubscript:3];

  [v10 doubleValue];
  v11.n128_u64[0] = v17;
  v11.n128_u64[1] = v14;
  v18 = v11;
  v11.n128_u64[0] = v15;
  v11.n128_u64[1] = v12;
  v16 = v11;

  result = v18;
  *a2 = v18;
  a2[1] = v16;
  return result;
}

@end