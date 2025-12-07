@interface ASCredentialRequestPaneHeaderConfiguration
+ (id)credentialProviderHeaderWithApplicationBundleID:(id)d title:(id)title subtitle:(id)subtitle;
+ (id)noCredentialsErrorWithServiceName:(id)name;
+ (id)passwordManagerHeaderWithTitle:(id)title subtitle:(id)subtitle;
+ (id)securityKeyHeaderWithIcon:(int64_t)icon title:(id)title subtitle:(id)subtitle;
+ (id)signInFailedErrorWithSubtitle:(id)subtitle;
- (ASCredentialRequestPaneHeaderConfiguration)initWithTitle:(id)title subtitle:(id)subtitle;
- (BOOL)isEqual:(id)equal;
- (NSString)subtitle;
- (NSString)title;
- (int64_t)hash;
@end

@implementation ASCredentialRequestPaneHeaderConfiguration

- (NSString)title
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  selfCopy = self;
  sub_1B1D7B6DC();

  v5 = *(v3 + 24);

  if (v5)
  {
    v6 = sub_1B1D7BE1C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)subtitle
{
  v3 = *(&self->super.isa + OBJC_IVAR___ASCredentialRequestPaneHeaderConfiguration_rawConfiguration);
  swift_getKeyPath();
  sub_1B1CE4298(&qword_1EB774DA8, &unk_1B1D85A18);
  selfCopy = self;
  sub_1B1D7B6DC();

  v5 = *(v3 + 40);

  if (v5)
  {
    v6 = sub_1B1D7BE1C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ASCredentialRequestPaneHeaderConfiguration)initWithTitle:(id)title subtitle:(id)subtitle
{
  if (!title)
  {
    v5 = 0;
    v7 = 0;
    if (subtitle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return ASCredentialRequestPaneHeaderConfiguration.init(__title:subtitle:)(v5, v7, v8, v10);
  }

  v5 = sub_1B1D7BE4C();
  v7 = v6;
  if (!subtitle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1B1D7BE4C();
  v10 = v9;
  return ASCredentialRequestPaneHeaderConfiguration.init(__title:subtitle:)(v5, v7, v8, v10);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B1D7C1AC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = ASCredentialRequestPaneHeaderConfiguration.isEqual(_:)(v8);

  sub_1B1CE378C(v8);
  return v6;
}

- (int64_t)hash
{
  sub_1B1D7C5CC();
  selfCopy = self;
  sub_1B1CE1A50(v6);
  v4 = sub_1B1D7C61C();

  return v4;
}

+ (id)noCredentialsErrorWithServiceName:(id)name
{
  v3 = sub_1B1D7BE4C();
  v5 = _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE18noCredentialsError15withServiceNameABSS_tFZ_0(v3, v4);

  return v5;
}

+ (id)signInFailedErrorWithSubtitle:(id)subtitle
{
  if (subtitle)
  {
    v3 = sub_1B1D7BE4C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE17signInFailedError12withSubtitleABSSSg_tFZ_0(v3, v5);

  return v6;
}

+ (id)passwordManagerHeaderWithTitle:(id)title subtitle:(id)subtitle
{
  if (title)
  {
    sub_1B1D7BE4C();
    v6 = v5;
    if (subtitle)
    {
LABEL_3:
      sub_1B1D7BE4C();
      v8 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (subtitle)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  memset(v11, 0, sizeof(v11));
  v12 = 98;
  v9 = ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(v6, v8, v11, 0x62);

  return v9;
}

+ (id)credentialProviderHeaderWithApplicationBundleID:(id)d title:(id)title subtitle:(id)subtitle
{
  v7 = sub_1B1D7BE4C();
  v9 = v8;
  if (title)
  {
    sub_1B1D7BE4C();
    v11 = v10;
    if (subtitle)
    {
LABEL_3:
      sub_1B1D7BE4C();
      v13 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (subtitle)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  type metadata accessor for ASCredentialRequestPaneHeaderConfiguration();
  v16[0] = v7;
  v16[1] = v9;
  v16[2] = 0;
  v17 = 96;
  v14 = ASCredentialRequestPaneHeaderConfiguration.init(title:subtitle:icon:)(v11, v13, v16, 0x60);

  return v14;
}

+ (id)securityKeyHeaderWithIcon:(int64_t)icon title:(id)title subtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (title)
  {
    v7 = sub_1B1D7BE4C();
    v9 = v8;
    if (subtitleCopy)
    {
LABEL_3:
      v10 = sub_1B1D7BE4C();
      subtitleCopy = v11;
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    v9 = 0;
    if (subtitle)
    {
      goto LABEL_3;
    }
  }

  v10 = 0;
LABEL_6:
  v12 = _sSo42ASCredentialRequestPaneHeaderConfigurationC22AuthenticationServicesE011securityKeyD04with5title8subtitleABSo0ab8SecurityI13PreferredIconV_SSSgAJtFZ_0(icon, v7, v9, v10, subtitleCopy);

  return v12;
}

@end