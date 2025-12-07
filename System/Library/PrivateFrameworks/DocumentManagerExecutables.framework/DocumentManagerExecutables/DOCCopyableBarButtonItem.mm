@interface DOCCopyableBarButtonItem
- (_TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem)init;
- (id)copyWithZone:(void *)zone;
@end

@implementation DOCCopyableBarButtonItem

- (id)copyWithZone:(void *)zone
{
  v3 = (self + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  v4 = *(self + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  if (v4)
  {
    v5 = v3[1];
    selfCopy = self;
    v7 = outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4, v5);
    v8 = v4(v7);
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v4, v5);
    v9 = *v3;
    v10 = v3[1];
    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v3, v10);

    v11 = &v8[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator];
    v12 = *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator];
    v13 = *&v8[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator + 8];
    *v11 = v9;
    v11[1] = v10;
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v12, v13);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (_TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem)init
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCCopyableBarButtonItem_creator);
  v4 = type metadata accessor for DOCCopyableBarButtonItem();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(DOCBarButtonItem *)&v6 init];
}

@end