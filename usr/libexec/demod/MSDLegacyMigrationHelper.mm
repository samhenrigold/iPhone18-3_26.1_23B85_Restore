@interface MSDLegacyMigrationHelper
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getLastMigrationVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSkyEquivalentVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSydneyEquivalentVersion;
- (BOOL)getDoMigrationForTargetRelease:(id *)release;
- (BOOL)isVersion:(id *)version lowerThan:(id *)than;
- (MSDLegacyMigrationHelper)init;
- (void)saveOSVerionAfterMigration;
- (void)setCurrentOSVersion:(id *)version;
- (void)setLastMigrationVersion:(id *)version;
- (void)setSkyEquivalentVersion:(id *)version;
- (void)setSydneyEquivalentVersion:(id *)version;
@end

@implementation MSDLegacyMigrationHelper

- (MSDLegacyMigrationHelper)init
{
  v19.receiver = self;
  v19.super_class = MSDLegacyMigrationHelper;
  v2 = [(MSDLegacyMigrationHelper *)&v19 init];
  v3 = v2;
  if (v2)
  {
    objc_msgSend_getSkyEquivalentVersion(v2);
    v15 = v17;
    v16 = v18;
    [(MSDLegacyMigrationHelper *)v3 setSkyEquivalentVersion:&v15];
    objc_msgSend_getSydneyEquivalentVersion(v3);
    v15 = v13;
    v16 = v14;
    [(MSDLegacyMigrationHelper *)v3 setSydneyEquivalentVersion:&v15];
    objc_msgSend_getLastMigrationVersion(v3);
    v15 = v11;
    v16 = v12;
    [(MSDLegacyMigrationHelper *)v3 setLastMigrationVersion:&v15];
    v4 = +[NSProcessInfo processInfo];
    v5 = v4;
    if (v4)
    {
      objc_msgSend_operatingSystemVersion(v4);
    }

    else
    {
      v9 = 0uLL;
      v10 = 0;
    }

    v15 = v9;
    v16 = v10;
    [(MSDLegacyMigrationHelper *)v3 setCurrentOSVersion:&v15];

    objc_msgSend_skyEquivalentVersion(v3);
    [(MSDLegacyMigrationHelper *)v3 setDoPreSkyMigration:[(MSDLegacyMigrationHelper *)v3 getDoMigrationForTargetRelease:&v15]];
    objc_msgSend_sydneyEquivalentVersion(v3);
    [(MSDLegacyMigrationHelper *)v3 setDoPreSydneyMigration:[(MSDLegacyMigrationHelper *)v3 getDoMigrationForTargetRelease:&v15]];
    objc_msgSend_currentOSVersion(v3);
    v6 = [(MSDLegacyMigrationHelper *)v3 stringFromNSOperatingSystemVersion:&v15];
    [(MSDLegacyMigrationHelper *)v3 setOsVersionStr:v6];

    v7 = v3;
  }

  return v3;
}

- (void)saveOSVerionAfterMigration
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    osVersionStr = [(MSDLegacyMigrationHelper *)self osVersionStr];
    v7 = 138543362;
    v8 = osVersionStr;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Saving last migration OS version: %{public}@", &v7, 0xCu);
  }

  v5 = +[MSDPreferencesFile sharedInstance];
  osVersionStr2 = [(MSDLegacyMigrationHelper *)self osVersionStr];
  [v5 setObject:osVersionStr2 forKey:@"LastMigrationVersion"];
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSkyEquivalentVersion
{
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 15;
  return self;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getSydneyEquivalentVersion
{
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 16;
  return self;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)getLastMigrationVersion
{
  retstr->var1 = -1;
  retstr->var2 = -1;
  retstr->var0 = -1;
  v4 = +[MSDPreferencesFile sharedInstance];
  v5 = [v4 objectForKey:@"LastMigrationVersion"];

  if (v5)
  {
    v7 = [v5 componentsSeparatedByString:@"."];
    v8 = v7;
    if (v7 && [v7 count]== 3)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      retstr->var0 = [v9 integerValue];

      v10 = [v8 objectAtIndexedSubscript:1];
      retstr->var1 = [v10 integerValue];

      v11 = [v8 objectAtIndexedSubscript:2];
      retstr->var2 = [v11 integerValue];
    }

    else
    {
      sub_1000E53C8(v5);
    }
  }

  else
  {
    v8 = sub_100063A54(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5470(v8);
    }
  }

  v13 = sub_100063A54(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Last migration OS version: %{public}@", &v15, 0xCu);
  }

  return result;
}

- (BOOL)getDoMigrationForTargetRelease:(id *)release
{
  buf = *release;
  v5 = [(MSDLegacyMigrationHelper *)self stringFromNSOperatingSystemVersion:&buf];
  MigrationVersion = objc_msgSend_lastMigrationVersion(self);
  if (v12[0] == -1)
  {
    v7 = 1;
  }

  else
  {
    objc_msgSend_lastMigrationVersion(self);
    v10 = *&release->var0;
    var2 = release->var2;
    MigrationVersion = [(MSDLegacyMigrationHelper *)self isVersion:&buf lowerThan:&v10];
    v7 = MigrationVersion;
  }

  v8 = sub_100063A54(MigrationVersion);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.var0) = 138543618;
    *(&buf.var0 + 4) = v5;
    WORD2(buf.var1) = 1026;
    *(&buf.var1 + 6) = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Need legacy migration for target OS release (%{public}@): %{public, BOOL}d", &buf, 0x12u);
  }

  return v7;
}

- (BOOL)isVersion:(id *)version lowerThan:(id *)than
{
  v4 = version->var0 < than->var0;
  if (version->var0 == than->var0)
  {
    var1 = version->var1;
    v6 = than->var1;
    v4 = var1 < v6;
    if (var1 == v6)
    {
      return version->var2 < than->var2;
    }
  }

  return v4;
}

- (void)setSkyEquivalentVersion:(id *)version
{
  v3 = *&version->var0;
  self->_skyEquivalentVersion.patchVersion = version->var2;
  *&self->_skyEquivalentVersion.majorVersion = v3;
}

- (void)setSydneyEquivalentVersion:(id *)version
{
  v3 = *&version->var0;
  self->_sydneyEquivalentVersion.patchVersion = version->var2;
  *&self->_sydneyEquivalentVersion.majorVersion = v3;
}

- (void)setLastMigrationVersion:(id *)version
{
  v3 = *&version->var0;
  self->_lastMigrationVersion.patchVersion = version->var2;
  *&self->_lastMigrationVersion.majorVersion = v3;
}

- (void)setCurrentOSVersion:(id *)version
{
  v3 = *&version->var0;
  self->_currentOSVersion.patchVersion = version->var2;
  *&self->_currentOSVersion.majorVersion = v3;
}

@end