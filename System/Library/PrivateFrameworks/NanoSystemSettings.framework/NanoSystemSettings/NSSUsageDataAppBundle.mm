@interface NSSUsageDataAppBundle
- (NSSUsageDataAppBundle)initWithName:(id)name bundleIdentifier:(id)identifier bundleVersion:(id)version vendor:(id)vendor size:(id)size supportsPurge:(BOOL)purge;
- (id)mergeWith:(id)with;
- (id)withSize:(id)size purge:(BOOL)purge;
@end

@implementation NSSUsageDataAppBundle

- (NSSUsageDataAppBundle)initWithName:(id)name bundleIdentifier:(id)identifier bundleVersion:(id)version vendor:(id)vendor size:(id)size supportsPurge:(BOOL)purge
{
  nameCopy = name;
  identifierCopy = identifier;
  versionCopy = version;
  vendorCopy = vendor;
  sizeCopy = size;
  v23.receiver = self;
  v23.super_class = NSSUsageDataAppBundle;
  v18 = [(NSSUsageDataAppBundle *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_name, name);
    objc_storeStrong(&v19->_bundleIdentifier, identifier);
    objc_storeStrong(&v19->_bundleVersion, version);
    objc_storeStrong(&v19->_vendor, vendor);
    objc_storeStrong(&v19->_size, size);
    v19->_supportsManualPurge = purge;
  }

  return v19;
}

- (id)withSize:(id)size purge:(BOOL)purge
{
  purgeCopy = purge;
  sizeCopy = size;
  v7 = [[NSSUsageDataAppBundle alloc] initWithName:self->_name bundleIdentifier:self->_bundleIdentifier bundleVersion:self->_bundleVersion vendor:self->_vendor size:sizeCopy supportsPurge:purgeCopy];

  return v7;
}

- (id)mergeWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    v5 = [(NSSUsageDataAppBundle *)self size];
    v6 = [withCopy size];
    v7 = [v5 plus:v6];
    if ([(NSSUsageDataAppBundle *)self supportsManualPurge])
    {
      supportsManualPurge = 1;
    }

    else
    {
      supportsManualPurge = [withCopy supportsManualPurge];
    }

    selfCopy = [(NSSUsageDataAppBundle *)self withSize:v7 purge:supportsManualPurge];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

@end