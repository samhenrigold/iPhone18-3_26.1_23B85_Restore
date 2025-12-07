@interface IMDSyncedSettingsServiceManager
+ (IMDSyncedSettingsServiceManager)sharedManager;
- (BOOL)settingExplicitlySetForKey:(int64_t)key;
- (IMDSyncedSettingsServiceManager)initWithLocalDomain:(id)domain remoteDomain:(id)remoteDomain localStorageDelegate:(id)delegate remoteStorageDelegate:(id)storageDelegate watchSyncDelegate:(id)syncDelegate syncConfigurationDelegate:(id)configurationDelegate;
- (id)settingValueForKey:(int64_t)key;
- (unint64_t)npsDefaultsChanged;
- (void)migrateNotificationSettingsV1toV2IfNecessary;
- (void)setSettingValue:(id)value forKey:(int64_t)key;
@end

@implementation IMDSyncedSettingsServiceManager

+ (IMDSyncedSettingsServiceManager)sharedManager
{
  if (qword_28141F078 != -1)
  {
    swift_once();
  }

  v3 = qword_28141F088;

  return v3;
}

- (IMDSyncedSettingsServiceManager)initWithLocalDomain:(id)domain remoteDomain:(id)remoteDomain localStorageDelegate:(id)delegate remoteStorageDelegate:(id)storageDelegate watchSyncDelegate:(id)syncDelegate syncConfigurationDelegate:(id)configurationDelegate
{
  v12 = sub_22B7DB6A8();
  v14 = v13;
  v15 = sub_22B7DB6A8();
  v17 = v16;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_22B743280(v12, v14, v15, v17, delegate, storageDelegate, syncDelegate, configurationDelegate);
}

- (void)migrateNotificationSettingsV1toV2IfNecessary
{
  selfCopy = self;
  sub_22B7437F0(v2);
}

- (id)settingValueForKey:(int64_t)key
{
  selfCopy = self;
  sub_22B744130(key, v12);

  v5 = v13;
  if (v13)
  {
    v6 = sub_22B4D2BCC(v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_22B7DC508();
    (*(v7 + 8))(v9, v5);
    sub_22B4CFB78(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)settingExplicitlySetForKey:(int64_t)key
{
  selfCopy = self;
  LOBYTE(key) = sub_22B744638(key);

  return key & 1;
}

- (void)setSettingValue:(id)value forKey:(int64_t)key
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_22B7DC118();
  swift_unknownObjectRelease();
  sub_22B7448FC(v7, key);

  sub_22B4CFB78(v7);
}

- (unint64_t)npsDefaultsChanged
{
  v7 = sub_22B7DBE38();
  v8 = *v7->messageStore;
  if (v8)
  {
    v60 = 0x800000022B80FB60;
    v63 = objc_opt_self();
    sub_22B6F0AD4(&unk_27D8CDBE0, &qword_22B7FD3E0);
    v9 = 32;
    v10 = MEMORY[0x277D837D0];
    while (1)
    {
      defaultCenter = [v63 defaultCenter];
      v12 = sub_22B7DBE28();
      *&v64[0] = 0x6E6F73616572;
      *(&v64[0] + 1) = 0xE600000000000000;
      sub_22B7DC248();
      v67[8] = v10;
      v67[5] = 0xD000000000000012;
      v67[6] = 0x800000022B80FB60;
      v13 = sub_22B7DC488();
      sub_22B7476D8(v67, v64);
      result = sub_22B4D7EC0(v64);
      if (v15)
      {
        break;
      }

      v13[(result >> 6) + 8] |= 1 << result;
      v16 = v13[6] + 40 * result;
      v17 = v64[0];
      v18 = v64[1];
      *(v16 + 32) = v65;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_22B4D7F04(&v66, (v13[7] + 32 * result));
      v19 = v13[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_17;
      }

      v13[2] = v21;
      sub_22B4D0D64(v67, &unk_27D8CD7D0, &qword_22B7FA3F0);
      v22 = sub_22B7DB568();

      [defaultCenter postNotificationName:v12 object:0 userInfo:v22];

      v9 += 8;
      if (!--v8)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_6:
    v7, v0, v1, v2, v3, v4, v5, v6, v57, v60;
    result = [objc_opt_self() sharedProvider];
    if (result)
    {
      broadcasterForSyncedSettingsListeners = [result broadcasterForSyncedSettingsListeners];
      swift_unknownObjectRelease();
      v24 = sub_22B7DBE38();
      v32 = v24;
      v33 = *v24->messageStore;
      if (v33)
      {
        *&v64[0] = MEMORY[0x277D84F90];
        sub_22B7AB6B4(0, v33, 0);
        v34 = 32;
        v35 = *&v64[0];
        do
        {
          v36 = sub_22B7DBDF8();
          *&v64[0] = v35;
          v45 = *v35->messageStore;
          v44 = *v35->chatRegistry;
          if (v45 >= v44 >> 1)
          {
            v47 = v36;
            v48 = v37;
            sub_22B7AB6B4((v44 > 1), v45 + 1, 1);
            v37 = v48;
            v36 = v47;
            v35 = *&v64[0];
          }

          *v35->messageStore = v45 + 1;
          v46 = v35 + 16 * v45;
          *(v46 + 4) = v36;
          *(v46 + 5) = v37;
          v34 += 8;
          --v33;
        }

        while (v33);
        v32, v37, v38, v39, v40, v41, v42, v43, v58, v61;
      }

      else
      {
        v24, v25, v26, v27, v28, v29, v30, v31, v58, v61;
        v35 = MEMORY[0x277D84F90];
      }

      v49 = sub_22B7DB8F8();
      v35, v50, v51, v52, v53, v54, v55, v56, v59, v62;
      [broadcasterForSyncedSettingsListeners didUpdateSettingsKeys_];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

@end