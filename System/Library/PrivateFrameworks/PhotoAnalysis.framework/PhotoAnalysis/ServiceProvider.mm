@interface ServiceProvider
- (void)notifyLibraryAvailableAtURL:(id)l;
@end

@implementation ServiceProvider

- (void)notifyLibraryAvailableAtURL:(id)l
{
  v3 = sub_22FCC65F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC65A4();

  sub_22FA9DBC8(v7);

  (*(v4 + 8))(v7, v3);
}

@end