@interface _PSMLArrayProvider
- (_PSMLArrayProvider)initWithProvider:(id)provider clusteringCount:(int)count recencyCount:(int)recencyCount;
@end

@implementation _PSMLArrayProvider

- (_PSMLArrayProvider)initWithProvider:(id)provider clusteringCount:(int)count recencyCount:(int)recencyCount
{
  v5 = *&recencyCount;
  v6 = *&count;
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = _PSMLArrayProvider;
  v10 = [(_PSMLArrayProvider *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_MLArrayProvider, provider);
    [(_PSMLArrayProvider *)v11 setClusteringCount:v6];
    [(_PSMLArrayProvider *)v11 setRecencyCount:v5];
  }

  return v11;
}

@end