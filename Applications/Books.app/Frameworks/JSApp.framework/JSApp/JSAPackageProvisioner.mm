@interface JSAPackageProvisioner
- (JSAPackageProvisioner)init;
- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching;
- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching onQueue:(id)queue;
- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching processVariant:(int64_t)variant overridePackageURLCachePath:(id)path on:(id)on;
- (void)provisionWithCompletionHandler:(id)handler;
@end

@implementation JSAPackageProvisioner

- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching
{
  launchingCopy = launching;
  if (qword_CA458 != -1)
  {
    swift_once();
  }

  v5 = *(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant);
  v6 = sub_83E4C();
  v7 = [(JSAPackageProvisioner *)self initWithLaunching:launchingCopy processVariant:v5 overridePackageURLCachePath:0 on:v6];

  return v7;
}

- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching onQueue:(id)queue
{
  launchingCopy = launching;
  v6 = qword_CA458;
  queueCopy = queue;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = [(JSAPackageProvisioner *)self initWithLaunching:launchingCopy processVariant:*(qword_CB010 + OBJC_IVAR___JSAProcessEnvironment__variant) overridePackageURLCachePath:0 on:queueCopy];

  return v8;
}

- (JSAPackageProvisioner)initWithLaunching:(BOOL)launching processVariant:(int64_t)variant overridePackageURLCachePath:(id)path on:(id)on
{
  if (path)
  {
    sub_843AC();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  onCopy = on;
  return PackageProvisioner.init(launching:processVariant:overridePackageURLCachePath:on:)(launching, variant, v12, v10, onCopy);
}

- (void)provisionWithCompletionHandler:(id)handler
{
  v3 = _Block_copy(handler);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  PackageProvisioner.provision(completionHandler:)(sub_36FF8, v4);
}

- (JSAPackageProvisioner)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end