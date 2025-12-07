@interface AAKPriMLTaskProvider
- (_TtC14AAKPriMLPlugin20AAKPriMLTaskProvider)init;
- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error;
- (id)namespaceIdentifierForRecipe:(id)recipe;
- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error;
- (id)recipeIdentifiers;
@end

@implementation AAKPriMLTaskProvider

- (id)recipeIdentifiers
{
  sub_100002124(&unk_10000C560, &unk_100005970);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100005930;
  selfCopy = self;
  *(v3 + 32) = sub_100005140();
  *(v3 + 40) = v5;

  v6.super.isa = sub_100005220().super.isa;

  return v6.super.isa;
}

- (id)recipeDictionaryForRecipe:(id)recipe error:(id *)error
{
  selfCopy = self;
  sub_100005130();

  v5.super.isa = sub_100005170().super.isa;

  return v5.super.isa;
}

- (id)assetURLForRecipe:(id)recipe forKey:(id)key error:(id *)error
{
  v7 = sub_100005010();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000051B0();
  selfCopy = self;
  sub_100005120();
  v13 = v12;

  if (v13)
  {
    sub_100004FC0();

    sub_100004FE0(v14);
    v16 = v15;
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_1000021C8();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();

    if (error)
    {
      v18 = sub_100004F90();

      v19 = v18;
      v16 = 0;
      *error = v18;
    }

    else
    {

      v16 = 0;
    }
  }

  return v16;
}

- (id)namespaceIdentifierForRecipe:(id)recipe
{
  v3 = sub_1000051A0();

  return v3;
}

- (_TtC14AAKPriMLPlugin20AAKPriMLTaskProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end