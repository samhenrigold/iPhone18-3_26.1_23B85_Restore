@interface CATComputableWrapper
- (id)valueForComputedProperty:(id)property typeName:(id)name propName:(id)propName params:(id)params;
@end

@implementation CATComputableWrapper

- (id)valueForComputedProperty:(id)property typeName:(id)name propName:(id)propName params:(id)params
{
  v7 = sub_222D5292C();
  v9 = v8;
  v10 = sub_222D5292C();
  v12 = v11;
  v13 = sub_222D5292C();
  v15 = v14;
  paramsCopy = params;

  sub_222CE8D40(v7, v9, v10, v12, v13, v15, paramsCopy);

  v17 = v25;
  if (v25)
  {
    v18 = __swift_project_boxed_opaque_existential_1(v24, v25);
    v19 = *(v17 - 8);
    MEMORY[0x28223BE20](v18);
    v21 = v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21);
    v22 = sub_222D5304C();
    (*(v19 + 8))(v21, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end