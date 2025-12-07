@interface IXRemoteInstallConfiguration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForAppWithBundleID:(id)d localizedName:(id)name installMode:(unsigned __int8)mode;
- (unint64_t)hash;
- (void)setIconData:(id)data containingImageOfType:(unsigned __int8)type;
@end

@implementation IXRemoteInstallConfiguration

- (id)initForAppWithBundleID:(id)d localizedName:(id)name installMode:(unsigned __int8)mode
{
  dCopy = d;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = IXRemoteInstallConfiguration;
  v11 = [(IXRemoteInstallConfiguration *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_bundleID, d);
    objc_storeStrong(&v12->_localizedName, name);
    v12->_installMode = mode;
  }

  return v12;
}

- (void)setIconData:(id)data containingImageOfType:(unsigned __int8)type
{
  v6 = [data copy];
  iconData = self->_iconData;
  self->_iconData = v6;

  self->_iconType = type;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  bundleID = [(IXRemoteInstallConfiguration *)self bundleID];
  localizedName = [(IXRemoteInstallConfiguration *)self localizedName];
  v8 = [v5 initForAppWithBundleID:bundleID localizedName:localizedName installMode:{-[IXRemoteInstallConfiguration installMode](self, "installMode")}];

  [v8 setImportance:{-[IXRemoteInstallConfiguration importance](self, "importance")}];
  iconData = [(IXRemoteInstallConfiguration *)self iconData];
  [v8 setIconData:iconData containingImageOfType:{-[IXRemoteInstallConfiguration iconType](self, "iconType")}];

  [v8 setStashMode:{-[IXRemoteInstallConfiguration stashMode](self, "stashMode")}];
  deltaDirectoryURL = [(IXRemoteInstallConfiguration *)self deltaDirectoryURL];
  v11 = [deltaDirectoryURL copyWithZone:zone];
  [v8 setDeltaDirectoryURL:v11];

  [v8 setPairedAutoInstallOverride:{-[IXRemoteInstallConfiguration pairedAutoInstallOverride](self, "pairedAutoInstallOverride")}];
  storeMetadata = [(IXRemoteInstallConfiguration *)self storeMetadata];
  v13 = [storeMetadata copyWithZone:zone];
  [v8 setStoreMetadata:v13];

  sinfData = [(IXRemoteInstallConfiguration *)self sinfData];
  v15 = [sinfData copyWithZone:zone];
  [v8 setSinfData:v15];

  provisioningProfileDatas = [(IXRemoteInstallConfiguration *)self provisioningProfileDatas];
  v17 = [provisioningProfileDatas copyWithZone:zone];
  [v8 setProvisioningProfileDatas:v17];

  [v8 setProvisioningProfileInstallFailureIsFatal:{-[IXRemoteInstallConfiguration provisioningProfileInstallFailureIsFatal](self, "provisioningProfileInstallFailureIsFatal")}];
  remoteInstallTargetURL = [(IXRemoteInstallConfiguration *)self remoteInstallTargetURL];
  v19 = [remoteInstallTargetURL copyWithZone:zone];
  [v8 setRemoteInstallTargetURL:v19];

  remoteInstallTargetDirectoryURL = [(IXRemoteInstallConfiguration *)self remoteInstallTargetDirectoryURL];
  v21 = [remoteInstallTargetDirectoryURL copyWithZone:zone];
  [v8 setRemoteInstallTargetDirectoryURL:v21];

  remoteInstallTargetBundleName = [(IXRemoteInstallConfiguration *)self remoteInstallTargetBundleName];
  v23 = [remoteInstallTargetBundleName copyWithZone:zone];
  [v8 setRemoteInstallTargetBundleName:v23];

  [v8 setInstallableType:{-[IXRemoteInstallConfiguration installableType](self, "installableType")}];
  targetLastPathComponent = [(IXRemoteInstallConfiguration *)self targetLastPathComponent];
  v25 = [targetLastPathComponent copyWithZone:zone];
  [v8 setTargetLastPathComponent:v25];

  bundleVersion = [(IXRemoteInstallConfiguration *)self bundleVersion];
  v27 = [bundleVersion copyWithZone:zone];
  [v8 setBundleVersion:v27];

  geoJSONData = [(IXRemoteInstallConfiguration *)self geoJSONData];
  v29 = [geoJSONData copyWithZone:zone];
  [v8 setGeoJSONData:v29];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v5 = equalCopy;
  bundleID = [(IXRemoteInstallConfiguration *)self bundleID];
  bundleID2 = [(IXRemoteInstallConfiguration *)v5 bundleID];
  geoJSONData = bundleID;
  v9 = bundleID2;
  geoJSONData2 = v9;
  if ((geoJSONData != 0) != (v9 != 0) || geoJSONData && v9 && ![geoJSONData isEqual:v9] || (geoJSONData2, geoJSONData, geoJSONData2, geoJSONData, -[IXRemoteInstallConfiguration localizedName](self, "localizedName"), v11 = objc_claimAutoreleasedReturnValue(), -[IXRemoteInstallConfiguration localizedName](v5, "localizedName"), v12 = objc_claimAutoreleasedReturnValue(), geoJSONData = v11, v13 = v12, geoJSONData2 = v13, (geoJSONData != 0) ^ (v13 != 0)) || geoJSONData && v13 && !objc_msgSend(geoJSONData, "isEqual:", v13))
  {

    v14 = 0;
  }

  else
  {

    installMode = [(IXRemoteInstallConfiguration *)self installMode];
    if (installMode != [(IXRemoteInstallConfiguration *)v5 installMode]
      || (v17 = [(IXRemoteInstallConfiguration *)self importance], v17 != [(IXRemoteInstallConfiguration *)v5 importance])
      || ([(IXRemoteInstallConfiguration *)self iconData], v18 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 iconData], v19 = objc_claimAutoreleasedReturnValue(), v20 = sub_100006E08(v18, v19), v19, v18, !v20)
      || (v21 = [(IXRemoteInstallConfiguration *)self iconType], v21 != [(IXRemoteInstallConfiguration *)v5 iconType])
      || (v22 = [(IXRemoteInstallConfiguration *)self stashMode], v22 != [(IXRemoteInstallConfiguration *)v5 stashMode])
      || ([(IXRemoteInstallConfiguration *)self deltaDirectoryURL], v23 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 deltaDirectoryURL], v24 = objc_claimAutoreleasedReturnValue(), v25 = sub_100006E08(v23, v24), v24, v23, !v25)
      || (v26 = [(IXRemoteInstallConfiguration *)self pairedAutoInstallOverride], v26 != [(IXRemoteInstallConfiguration *)v5 pairedAutoInstallOverride])
      || ([(IXRemoteInstallConfiguration *)self storeMetadata], v27 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 storeMetadata], v28 = objc_claimAutoreleasedReturnValue(), v29 = sub_100006E08(v27, v28), v28, v27, !v29)
      || ([(IXRemoteInstallConfiguration *)self sinfData], v30 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 sinfData], v31 = objc_claimAutoreleasedReturnValue(), v32 = sub_100006E08(v30, v31), v31, v30, !v32)
      || ([(IXRemoteInstallConfiguration *)self provisioningProfileDatas], v33 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 provisioningProfileDatas], v34 = objc_claimAutoreleasedReturnValue(), v35 = sub_100006E08(v33, v34), v34, v33, !v35)
      || (v36 = [(IXRemoteInstallConfiguration *)self provisioningProfileInstallFailureIsFatal], v36 != [(IXRemoteInstallConfiguration *)v5 provisioningProfileInstallFailureIsFatal])
      || ([(IXRemoteInstallConfiguration *)self remoteInstallTargetURL], v37 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 remoteInstallTargetURL], v38 = objc_claimAutoreleasedReturnValue(), v39 = sub_100006E08(v37, v38), v38, v37, !v39)
      || ([(IXRemoteInstallConfiguration *)self remoteInstallTargetDirectoryURL], v40 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 remoteInstallTargetDirectoryURL], v41 = objc_claimAutoreleasedReturnValue(), v42 = sub_100006E08(v40, v41), v41, v40, !v42)
      || ([(IXRemoteInstallConfiguration *)self remoteInstallTargetBundleName], v43 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 remoteInstallTargetBundleName], v44 = objc_claimAutoreleasedReturnValue(), v45 = sub_100006E08(v43, v44), v44, v43, !v45)
      || (v46 = [(IXRemoteInstallConfiguration *)self installableType], v46 != [(IXRemoteInstallConfiguration *)v5 installableType])
      || ([(IXRemoteInstallConfiguration *)self targetLastPathComponent], v47 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 targetLastPathComponent], v48 = objc_claimAutoreleasedReturnValue(), v49 = sub_100006E08(v47, v48), v48, v47, !v49)
      || ([(IXRemoteInstallConfiguration *)self bundleVersion], v50 = objc_claimAutoreleasedReturnValue(), [(IXRemoteInstallConfiguration *)v5 bundleVersion], v51 = objc_claimAutoreleasedReturnValue(), v52 = sub_100006E08(v50, v51), v51, v50, !v52))
    {
      v14 = 0;
      goto LABEL_10;
    }

    geoJSONData = [(IXRemoteInstallConfiguration *)self geoJSONData];
    geoJSONData2 = [(IXRemoteInstallConfiguration *)v5 geoJSONData];
    v14 = sub_100006E08(geoJSONData, geoJSONData2);
  }

LABEL_10:
LABEL_13:

  return v14;
}

- (unint64_t)hash
{
  bundleID = [(IXRemoteInstallConfiguration *)self bundleID];
  v4 = [bundleID hash];

  localizedName = [(IXRemoteInstallConfiguration *)self localizedName];
  v6 = [localizedName hash] ^ v4;

  v7 = v6 ^ [(IXRemoteInstallConfiguration *)self installMode];
  importance = [(IXRemoteInstallConfiguration *)self importance];
  iconData = [(IXRemoteInstallConfiguration *)self iconData];
  v10 = v7 ^ importance ^ [iconData hash];

  iconType = [(IXRemoteInstallConfiguration *)self iconType];
  v12 = iconType ^ [(IXRemoteInstallConfiguration *)self stashMode];
  deltaDirectoryURL = [(IXRemoteInstallConfiguration *)self deltaDirectoryURL];
  v14 = v10 ^ v12 ^ [deltaDirectoryURL hash];

  pairedAutoInstallOverride = [(IXRemoteInstallConfiguration *)self pairedAutoInstallOverride];
  storeMetadata = [(IXRemoteInstallConfiguration *)self storeMetadata];
  v17 = pairedAutoInstallOverride ^ [storeMetadata hash];

  sinfData = [(IXRemoteInstallConfiguration *)self sinfData];
  v19 = v17 ^ [sinfData hash];

  provisioningProfileDatas = [(IXRemoteInstallConfiguration *)self provisioningProfileDatas];
  v21 = v14 ^ v19 ^ [provisioningProfileDatas hash];

  provisioningProfileInstallFailureIsFatal = [(IXRemoteInstallConfiguration *)self provisioningProfileInstallFailureIsFatal];
  remoteInstallTargetURL = [(IXRemoteInstallConfiguration *)self remoteInstallTargetURL];
  v24 = provisioningProfileInstallFailureIsFatal ^ [remoteInstallTargetURL hash];

  remoteInstallTargetDirectoryURL = [(IXRemoteInstallConfiguration *)self remoteInstallTargetDirectoryURL];
  v26 = v24 ^ [remoteInstallTargetDirectoryURL hash];

  remoteInstallTargetBundleName = [(IXRemoteInstallConfiguration *)self remoteInstallTargetBundleName];
  v28 = v26 ^ [remoteInstallTargetBundleName hash];

  v29 = v21 ^ v28 ^ [(IXRemoteInstallConfiguration *)self installableType];
  targetLastPathComponent = [(IXRemoteInstallConfiguration *)self targetLastPathComponent];
  v31 = [targetLastPathComponent hash];

  bundleVersion = [(IXRemoteInstallConfiguration *)self bundleVersion];
  v33 = v31 ^ [bundleVersion hash];

  geoJSONData = [(IXRemoteInstallConfiguration *)self geoJSONData];
  v35 = v33 ^ [geoJSONData hash];

  return v29 ^ v35;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  bundleID = [(IXRemoteInstallConfiguration *)self bundleID];
  localizedName = [(IXRemoteInstallConfiguration *)self localizedName];
  installMode = [(IXRemoteInstallConfiguration *)self installMode];
  deltaScheme = [(IXRemoteInstallConfiguration *)self deltaScheme];
  deltaDirectoryURL = [(IXRemoteInstallConfiguration *)self deltaDirectoryURL];
  path = [deltaDirectoryURL path];
  v11 = [NSString stringWithFormat:@"<%@ 0x%p: bundleID=%@ localizedName=%@ installMode=%hhu deltaScheme=%lu deltaDirectory=%@>", v4, self, bundleID, localizedName, installMode, deltaScheme, path];

  return v11;
}

@end