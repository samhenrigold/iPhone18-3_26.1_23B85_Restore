@interface PBCodable(WFPBCodable)
- (uint64_t)readFrom:()WFPBCodable error:;
- (uint64_t)writeTo:()WFPBCodable error:;
@end

@implementation PBCodable(WFPBCodable)

- (uint64_t)readFrom:()WFPBCodable error:
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [self readFrom:v6];
  v8 = v7;
  if (a4 && (v7 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read protobuf message from %lu of %lu bytes", objc_msgSend(v6, "position"), objc_msgSend(v6, "length")];
    v10 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E696A578];
    v14[0] = v9;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a4 = [v10 errorWithDomain:@"PBRequesterErrorDomain" code:6005 userInfo:v11];
  }

  return v8;
}

- (uint64_t)writeTo:()WFPBCodable error:
{
  [self writeTo:a3];
  if (a4)
  {
    *a4 = 0;
  }

  return 1;
}

@end