@interface LiveLookupStoreProxy
- (BOOL)enabledForExtensionWith:(id)with;
- (BOOL)llExtension:(id)extension containedIn:(id)in;
- (BOOL)shouldBlockWith:(id)with;
- (NSString)imagePath;
- (_TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy)init;
- (id)activeExtensions;
- (id)extensionIdentifierFor:(id)for;
- (id)extensionIdentifierForBlockingInfo:(id)info;
- (id)extensionIdentifierForIdentityInfo:(id)info;
- (id)extensionIdentifierFrom:(id)from;
- (id)extensionUpdateFor:(id)for isAppStorVendable:(BOOL)vendable;
- (id)fetchIdentityInfoFor:(id)for from:(id)from;
- (id)firstEnabledBlockedExtensionIdentifierFor:(id)for;
- (id)getBlockingInfoFor:(id)for;
- (id)getBlockingInfoFor:(id)for with:(id)with;
- (id)iconURLFor:(id)for;
- (id)nameFor:(id)for;
- (int64_t)identityTypeFor:(id)for;
- (void)cleanup;
- (void)resetForExtensionWith:(id)with;
- (void)setEnabled:(BOOL)enabled forExtensionWith:(NSString *)with completionHandler:(id)handler;
- (void)setImagePath:(id)path;
- (void)updateBlockingInfoFor:(id)for with:(id)with shouldBlock:(BOOL)block;
- (void)updateExtensionsWith:(id)with;
- (void)updateIdentityInfoFor:(id)for with:(id)with name:(id)name iconURL:(id)l type:(int64_t)type ttlMinutes:(unsigned int)minutes;
@end

@implementation LiveLookupStoreProxy

- (id)activeExtensions
{
  selfCopy = self;
  LiveLookupStoreProxy.activeExtensions()();

  sub_1000236C4();
  v3.super.isa = sub_1000239F4().super.isa;

  return v3.super.isa;
}

- (_TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy)init
{
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(type metadata accessor for CoreAnalyticsReporter()) init];
  sub_1000237D4();
  v4 = sub_1000237C4();
  v5 = sub_100020444(v3, v4, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (NSString)imagePath
{
  swift_beginAccess();

  v2 = sub_100023974();

  return v2;
}

- (void)setImagePath:(id)path
{
  v4 = sub_100023984();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_imagePath);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (id)extensionIdentifierFor:(id)for
{
  identifier = [for identifier];

  return identifier;
}

- (id)extensionIdentifierFrom:(id)from
{
  fromCopy = from;
  result = [fromCopy dbExtension];
  if (result)
  {
    v5 = result;
    identifier = [result identifier];

    return identifier;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)extensionIdentifierForIdentityInfo:(id)info
{
  infoCopy = info;
  dbExtension = [infoCopy dbExtension];
  if (dbExtension)
  {
    v5 = dbExtension;
    identifier = [dbExtension identifier];

    sub_100023984();
    v7 = sub_100023974();
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (int64_t)identityTypeFor:(id)for
{
  type = [for type];
  if (type == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 2);
  }
}

- (id)extensionIdentifierForBlockingInfo:(id)info
{
  selfCopy = self;
  infoCopy = info;
  _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC19extensionIdentifier3forSSSg08IdentityG012BlockingInfoCSg_tF_0(info);
  v7 = v6;

  if (v7)
  {
    v8 = sub_100023974();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getBlockingInfoFor:(id)for
{
  sub_100023984();
  sub_1000021D0((self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  selfCopy = self;
  sub_100023744();

  sub_1000237F4();
  v5.super.isa = sub_1000239F4().super.isa;

  return v5.super.isa;
}

- (BOOL)llExtension:(id)extension containedIn:(id)in
{
  sub_1000237F4();
  v6 = sub_100023A04();
  extensionCopy = extension;
  selfCopy = self;
  v9 = _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC11llExtension_11containedInSb08IdentityG00fG11DBExtensionC_SayAF12BlockingInfoCGtF_0(extensionCopy, v6);

  return v9 & 1;
}

- (id)firstEnabledBlockedExtensionIdentifierFor:(id)for
{
  sub_1000237F4();
  v4 = sub_100023A04();
  selfCopy = self;
  _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC38firstEnabledBlockedExtensionIdentifier3forSSSgSay08IdentityG012BlockingInfoCG_tF_0(v4);
  v7 = v6;

  if (v7)
  {
    v8 = sub_100023974();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getBlockingInfoFor:(id)for with:(id)with
{
  v6 = sub_100023984();
  v8 = v7;
  withCopy = with;
  selfCopy = self;
  v11 = LiveLookupStoreProxy.getBlockingInfo(for:with:)(v6, v8, withCopy);

  return v11;
}

- (BOOL)enabledForExtensionWith:(id)with
{
  v4 = sub_100023984();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = LiveLookupStoreProxy.enabled(forExtensionWith:)(v8);

  return v4 & 1;
}

- (void)setEnabled:(BOOL)enabled forExtensionWith:(NSString *)with completionHandler:(id)handler
{
  v9 = sub_100014320(&qword_10003C700, &qword_100028730);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = enabled;
  *(v13 + 24) = with;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_100023A74();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100028740;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100028590;
  v16[5] = v15;
  withCopy = with;
  selfCopy = self;
  sub_100020148(0, 0, v11, &unk_100028760, v16);
}

- (void)cleanup
{
  selfCopy = self;
  LiveLookupStoreProxy.cleanup()();
}

- (void)resetForExtensionWith:(id)with
{
  sub_100023984();
  sub_1000021D0((self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  selfCopy = self;
  sub_100023714();
}

- (BOOL)shouldBlockWith:(id)with
{
  sub_1000237F4();
  v4 = sub_100023A04();
  selfCopy = self;
  v6 = _s018com_apple_CallKit_C9Directory20LiveLookupStoreProxyC11shouldBlock4withSbSay08IdentityG012BlockingInfoCG_tF_0(v4);

  return v6;
}

- (void)updateBlockingInfoFor:(id)for with:(id)with shouldBlock:(BOOL)block
{
  v8 = sub_100023984();
  v10 = v9;
  withCopy = with;
  selfCopy = self;
  LiveLookupStoreProxy.updateBlockingInfo(for:with:shouldBlock:)(v8, v10, withCopy, block);
}

- (void)updateIdentityInfoFor:(id)for with:(id)with name:(id)name iconURL:(id)l type:(int64_t)type ttlMinutes:(unsigned int)minutes
{
  v14 = sub_100014320(&qword_10003C6D0, &qword_100028670);
  __chkstk_darwin(v14 - 8);
  v16 = &v26 - v15;
  v17 = sub_100023984();
  v19 = v18;
  if (!name)
  {
    v20 = 0;
    if (l)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = sub_100023614();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    goto LABEL_6;
  }

  v20 = sub_100023984();
  name = v21;
  if (!l)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000235F4();
  v22 = sub_100023614();
  (*(*(v22 - 8) + 56))(v16, 0, 1, v22);
LABEL_6:
  withCopy = with;
  selfCopy = self;
  LiveLookupStoreProxy.updateIdentityInfo(for:with:name:iconURL:type:ttlMinutes:)(v17, v19, withCopy, v20, name, v16, type, minutes);

  sub_100019928(v16, &qword_10003C6D0, &qword_100028670);
}

- (id)nameFor:(id)for
{
  forCopy = for;
  name = [forCopy name];
  if (name)
  {
    v5 = name;
    sub_100023984();

    v6 = sub_100023974();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (id)iconURLFor:(id)for
{
  v4 = sub_100014320(&qword_10003C6D0, &qword_100028670);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  forCopy = for;
  iconURL = [forCopy iconURL];
  if (iconURL)
  {
    v9 = iconURL;
    sub_100023984();

    sub_100023604();

    v10 = sub_100023614();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v6, 1, v10);
    v13 = 0;
    if (v12 != 1)
    {
      sub_1000235D4(v12);
      v15 = v14;
      (*(v11 + 8))(v6, v10);
      v13 = v15;
    }
  }

  else
  {

    v16 = sub_100023614();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
    v13 = 0;
  }

  return v13;
}

- (id)fetchIdentityInfoFor:(id)for from:(id)from
{
  sub_100023984();
  sub_1000021D0((self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore), *(self + OBJC_IVAR____TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy_liveLookupStore + 24));
  fromCopy = from;
  selfCopy = self;
  v8 = sub_100023794();

  return v8;
}

- (id)extensionUpdateFor:(id)for isAppStorVendable:(BOOL)vendable
{
  sub_100023984();
  v4 = objc_allocWithZone(sub_100023814());
  v5 = sub_100023804();

  return v5;
}

- (void)updateExtensionsWith:(id)with
{
  sub_100023814();
  v4 = sub_100023A04();
  selfCopy = self;
  LiveLookupStoreProxy.updateExtensions(with:)(v4);
}

@end