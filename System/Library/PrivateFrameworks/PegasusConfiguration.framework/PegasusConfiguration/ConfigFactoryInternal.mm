@interface ConfigFactoryInternal
- (id)loadWithData:(id)data userAgent:(id)agent userDefaults:(id)defaults;
- (id)loadWithUrl:(id)url userAgent:(id)agent userDefaults:(id)defaults;
@end

@implementation ConfigFactoryInternal

- (id)loadWithUrl:(id)url userAgent:(id)agent userDefaults:(id)defaults
{
  v8 = sub_1D8CD7554();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CD74E4();
  if (agent)
  {
    v12 = sub_1D8CD7B04();
    agent = v13;
  }

  else
  {
    v12 = 0;
  }

  defaultsCopy = defaults;
  selfCopy = self;
  v16 = ConfigFactoryInternal.load(url:userAgent:userDefaults:)(v11, v12, agent, defaults);

  (*(v9 + 8))(v11, v8);

  return v16;
}

- (id)loadWithData:(id)data userAgent:(id)agent userDefaults:(id)defaults
{
  dataCopy = data;
  selfCopy = self;
  agentCopy = agent;
  defaultsCopy = defaults;
  v12 = sub_1D8CD7594();
  v14 = v13;

  if (agentCopy)
  {
    v15 = sub_1D8CD7B04();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v18 = ConfigFactoryInternal.load(data:userAgent:userDefaults:)(v12, v14, v15, v17, defaultsCopy);

  sub_1D8CADC38(v12, v14);

  return v18;
}

@end