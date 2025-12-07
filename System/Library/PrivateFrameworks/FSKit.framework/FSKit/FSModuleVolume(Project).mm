@interface FSModuleVolume(Project)
@end

@implementation FSModuleVolume(Project)

- (void)listener:()Project shouldAcceptNewConnection:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FSModuleVolume(Project) listener:shouldAcceptNewConnection:]";
  OUTLINED_FUNCTION_9_1(&dword_24A929000, a1, a3, "%s: rejected, can't add new connection to volume (too many clients)", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end