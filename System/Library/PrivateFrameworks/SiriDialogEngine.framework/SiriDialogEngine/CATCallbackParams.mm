@interface CATCallbackParams
- (id)valueForKey:(id)key;
@end

@implementation CATCallbackParams

- (id)valueForKey:(id)key
{
  sub_222D5292C();
  selfCopy = self;
  sub_222D41E38(&v12);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_222D5304C();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(&v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end