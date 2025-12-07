@interface VOTUINemethViewFactory
+ (id)createSwiftUIViewWithDismissAction:(id)action setBrailleUnicodeTable:(id)table unsetBrailleUnicodeTable:(id)unicodeTable;
- (VOTUINemethViewFactory)init;
@end

@implementation VOTUINemethViewFactory

+ (id)createSwiftUIViewWithDismissAction:(id)action setBrailleUnicodeTable:(id)table unsetBrailleUnicodeTable:(id)unicodeTable
{
  v8 = type metadata accessor for VOTUINemethView(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(action);
  v12 = _Block_copy(table);
  v13 = _Block_copy(unicodeTable);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = objc_allocWithZone(type metadata accessor for VOTUINemethVC(0));

  sub_18444(sub_21D4C, v14, sub_21D4C, v15, sub_21D4C, v16, v10);
  v18 = sub_25F1C();

  return v18;
}

- (VOTUINemethViewFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VOTUINemethViewFactory();
  return [(VOTUINemethViewFactory *)&v3 init];
}

@end