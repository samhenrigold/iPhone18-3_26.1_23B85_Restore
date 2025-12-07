@interface MTLDebugLocation
- (MTLDebugLocation)inlinedAt;
- (id)formattedDescription:(unint64_t)description;
- (void)dealloc;
- (void)releaseInternal;
@end

@implementation MTLDebugLocation

- (MTLDebugLocation)inlinedAt
{
  if (self->_debugLoc->var3 == -1)
  {
    return 0;
  }

  else
  {
    return [(MTLDebugInstrumentationData *)self->_data debugLocationForID:?];
  }
}

- (id)formattedDescription:(unint64_t)description
{
  v12[9] = *MEMORY[0x1E69E9840];
  v5 = [@"\n" stringByPaddingToLength:description + 4 withString:@" " startingAtIndex:0];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%u", -[MTLDebugSubProgram filename](-[MTLDebugLocation scope](self, "scope"), "filename"), -[MTLDebugLocation line](self, "line")];
  if ([(MTLDebugLocation *)self inlinedAt])
  {
    v12[0] = v5;
    v12[1] = @"filename =";
    v12[2] = v6;
    v12[3] = @"function =";
    v12[4] = [(MTLDebugSubProgram *)[(MTLDebugLocation *)self scope] name];
    v12[5] = @"column =";
    v12[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTLDebugLocation column](self, "column")}];
    v12[7] = @"inlinedAt";
    v12[8] = [[(MTLDebugLocation *)self inlinedAt] formattedDescription:description + 4];
    v7 = MEMORY[0x1E695DEC8];
    v8 = v12;
    v9 = 9;
  }

  else
  {
    v11[0] = v5;
    v11[1] = @"filename =";
    v11[2] = v6;
    v11[3] = @"function =";
    v11[4] = [(MTLDebugSubProgram *)[(MTLDebugLocation *)self scope] name];
    v11[5] = @"column =";
    v11[6] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MTLDebugLocation column](self, "column")}];
    v7 = MEMORY[0x1E695DEC8];
    v8 = v11;
    v9 = 7;
  }

  return [objc_msgSend(v7 arrayWithObjects:v8 count:{v9), "componentsJoinedByString:", @" "}];
}

- (void)releaseInternal
{
  v2.receiver = self;
  v2.super_class = MTLDebugLocation;
  [(MTLDebugLocation *)&v2 release];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MTLDebugLocation;
  [(MTLDebugLocation *)&v2 dealloc];
}

@end