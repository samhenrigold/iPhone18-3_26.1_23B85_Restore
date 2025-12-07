@interface SearchQueryDelegate
- (_TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate)init;
- (void)queryDidUpdateResult:(id)result;
@end

@implementation SearchQueryDelegate

- (void)queryDidUpdateResult:(id)result
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = *(&self->super.isa + OBJC_IVAR____TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate_searchResultsBlock);
    if (v6)
    {
      v7 = *&self->searchResultsBlock[OBJC_IVAR____TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate_searchResultsBlock];
      v8 = v5;
      resultCopy = result;
      selfCopy = self;
      outlined copy of (@escaping @callee_guaranteed @async (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v6, v7);
      foundItems = [v8 foundItems];
      type metadata accessor for CHSearchQueryItem();
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v6(v11, selfCopy);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed [PKStroke], @guaranteed [PKStroke]) -> ())?(v6, v7);
    }
  }
}

- (_TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC9PencilKitP33_0537958B5BACCEE51E097AACDDA82C0419SearchQueryDelegate_searchResultsBlock);
  Delegate = type metadata accessor for SearchQueryDelegate();
  *v3 = 0;
  v3[1] = 0;
  v6.receiver = self;
  v6.super_class = Delegate;
  return [(SearchQueryDelegate *)&v6 init];
}

@end