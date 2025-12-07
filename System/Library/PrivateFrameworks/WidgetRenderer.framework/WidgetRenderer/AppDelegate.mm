@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (double)applicationDidReceiveMemoryWarning:;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
@end

@implementation AppDelegate

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  applicationCopy = application;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  v12 = sub_1DAD66DBC(sessionCopy);

  return v12;
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (options)
  {
    type metadata accessor for LaunchOptionsKey(0);
    sub_1DAD66C2C(&qword_1ECC07EE8, type metadata accessor for LaunchOptionsKey, &unk_1DAED61AC);
    sub_1DAED1C1C();
  }

  applicationCopy = application;
  selfCopy = self;
  v8 = sub_1DAD94560();

  return v8 & 1;
}

- (double)applicationDidReceiveMemoryWarning:
{
  v0 = sub_1DAECED2C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAED21BC();
  if (qword_1EE00A848 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    sub_1DAECED1C();
    sub_1DAECECFC();
    (*(v1 + 8))(v3, v0);
    sharedApplication = [objc_opt_self() sharedApplication];
    connectedScenes = [sharedApplication connectedScenes];

    v0 = sub_1DAD674D4(0, qword_1EE00A898, 0x1E69DCE70);
    v3 = sub_1DAD8D6A4(&qword_1EE00A890, qword_1EE00A898, 0x1E69DCE70, MEMORY[0x1E69E81B8]);
    v6 = sub_1DAED1F6C();

    v22[2] = v0;
    if ((v6 & 0xC000000000000001) != 0)
    {
      sub_1DAED242C();
      sub_1DAED1F9C();
      v6 = v24;
      v7 = v25;
      v8 = v26;
      v1 = v27;
      v9 = v28;
    }

    else
    {
      v1 = 0;
      v10 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v8 = ~v10;
      v11 = -v10;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      else
      {
        v12 = -1;
      }

      v9 = v12 & *(v6 + 56);
    }

    v22[1] = v8;
    v13 = (v8 + 64) >> 6;
    while (v6 < 0)
    {
      v3 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v18 = sub_1DAED24BC();
      if (!v18)
      {
        return sub_1DAD70B20(v6);
      }

      v22[3] = v18;
      swift_dynamicCast();
      v17 = v23;
      v16 = v1;
      v0 = v9;
      if (!v23)
      {
        return sub_1DAD70B20(v6);
      }

LABEL_17:
      if ([v17 delegate])
      {
        type metadata accessor for WidgetSceneDelegate();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          v3 = v19;
          sub_1DADE1F7C(v19);
LABEL_24:
          swift_unknownObjectRelease();
          goto LABEL_25;
        }

        swift_unknownObjectRelease();
      }

      if ([v17 delegate])
      {
        type metadata accessor for ActivitySceneDelegateBase(0);
        v20 = swift_dynamicCastClass();
        if (!v20)
        {

          swift_unknownObjectRelease();
          goto LABEL_26;
        }

        v3 = v20;
        sub_1DAE76B2C();
        goto LABEL_24;
      }

LABEL_25:

LABEL_26:
      v1 = v16;
      v9 = v0;
    }

    v14 = v1;
    v15 = v9;
    v16 = v1;
    if (v9)
    {
      break;
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        return sub_1DAD70B20(v6);
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

LABEL_13:
  v0 = (v15 - 1) & v15;
  v17 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
  if (v17)
  {
    goto LABEL_17;
  }

  return sub_1DAD70B20(v6);
}

@end