@interface JSStackManager
- (void)didReceiveMemoryWarning:(id)warning;
@end

@implementation JSStackManager

- (void)didReceiveMemoryWarning:(id)warning
{
  v3 = sub_22273707C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273706C();

  sub_2226D7F64();

  (*(v4 + 8))(v6, v3);
}

@end