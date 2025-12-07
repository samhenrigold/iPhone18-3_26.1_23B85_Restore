@interface PasteHelper.ConfigurationSupport
- (BOOL)canPasteItemProviders:(id)providers;
- (_TtCV7SwiftUI11PasteHelper20ConfigurationSupport)init;
- (void)pasteItemProviders:(id)providers;
- (void)setPasteConfiguration:(id)configuration;
@end

@implementation PasteHelper.ConfigurationSupport

- (void)setPasteConfiguration:(id)configuration
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration);
  *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration) = configuration;
  configurationCopy = configuration;
}

- (BOOL)canPasteItemProviders:(id)providers
{
  type metadata accessor for NSItemProvider();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper;
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  if (v6)
  {
    v7 = v4;
    v9 = *(v5 + 1);
    v8 = *(v5 + 2);
    selfCopy = self;
    outlined copy of PasteHelper?(v6, v9, v8);
    v12.value._rawValue = v7;
    v12.is_nil = v6;
    LOBYTE(v9) = PasteHelper.canPaste(_:)(v12);

    LOBYTE(v4) = v9 & 1;
  }

  else
  {
    __break(1u);
  }

  return v4;
}

- (void)pasteItemProviders:(id)providers
{
  type metadata accessor for NSItemProvider();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper))
  {
    v5 = v4;
    v6 = *(&self->pasteConfiguration + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
    selfCopy = self;

    v7 = v6(v5);
    v9 = v8;

    if (v7)
    {
      v7(v10);

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7, v9);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }
}

- (_TtCV7SwiftUI11PasteHelper20ConfigurationSupport)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteConfiguration) = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCV7SwiftUI11PasteHelper20ConfigurationSupport_pasteHelper);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(PasteHelper.ConfigurationSupport *)&v6 init];
}

@end