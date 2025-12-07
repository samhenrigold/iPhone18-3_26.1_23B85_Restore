@interface SKANEnvironmentHelper
+ (BOOL)shouldUseDevelopmentSettingsForEnvironment:(id)environment;
+ (id)environmentForParams:(id)params;
+ (id)pingbackDelayOverrideForEnvironment:(id)environment;
+ (id)shouldUseProxyOverrideForEnvironment:(id)environment;
+ (id)windowDurationOverrideForEnvironment:(id)environment;
- (_TtC9appstored21SKANEnvironmentHelper)init;
@end

@implementation SKANEnvironmentHelper

+ (id)environmentForParams:(id)params
{
  paramsCopy = params;
  v4 = sub_100162408(paramsCopy);

  return v4;
}

+ (BOOL)shouldUseDevelopmentSettingsForEnvironment:(id)environment
{
  environmentCopy = environment;
  environmentCopy2 = environment;
  LOBYTE(environmentCopy) = sub_10016268C(environmentCopy, v5);

  return environmentCopy & 1;
}

+ (id)pingbackDelayOverrideForEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = sub_1001628D8(environment, sub_1003D5E54);

  return v5;
}

+ (id)windowDurationOverrideForEnvironment:(id)environment
{
  environmentCopy = environment;
  sub_100162794(environment, v5);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)shouldUseProxyOverrideForEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = sub_1001628D8(environment, sub_1003D5ECC);

  return v5;
}

- (_TtC9appstored21SKANEnvironmentHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SKANEnvironmentHelper();
  return [(SKANEnvironmentHelper *)&v3 init];
}

@end