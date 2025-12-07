@interface SCNMTLBuffer
- (int64_t)decrementUsedCount;
- (void)contents;
- (void)dealloc;
- (void)incrementUsedCount;
@end

@implementation SCNMTLBuffer

- (void)contents
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_buffer";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SCNMTLBuffer;
  [(SCNMTLBuffer *)&v3 dealloc];
}

- (void)incrementUsedCount
{
  v3 = [(SCNMTLBuffer *)self usedCount]+ 1;

  [(SCNMTLBuffer *)self setUsedCount:v3];
}

- (int64_t)decrementUsedCount
{
  [(SCNMTLBuffer *)self setUsedCount:[(SCNMTLBuffer *)self usedCount]- 1];

  return [(SCNMTLBuffer *)self usedCount];
}

@end