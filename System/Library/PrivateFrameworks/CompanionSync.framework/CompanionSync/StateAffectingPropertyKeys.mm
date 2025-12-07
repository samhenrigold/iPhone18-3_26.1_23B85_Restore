@interface StateAffectingPropertyKeys
@end

@implementation StateAffectingPropertyKeys

void ___StateAffectingPropertyKeys_block_invoke()
{
  v5[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v1 = *MEMORY[0x1E69B35D0];
  v5[0] = *MEMORY[0x1E69B35F8];
  v5[1] = v1;
  v5[2] = *MEMORY[0x1E69B35E8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = _StateAffectingPropertyKeys___set;
  _StateAffectingPropertyKeys___set = v3;
}

@end