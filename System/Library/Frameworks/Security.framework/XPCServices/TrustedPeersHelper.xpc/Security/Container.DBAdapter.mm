@interface Container.DBAdapter
- (id)policyWithVersion:(unint64_t)version error:(id *)error;
@end

@implementation Container.DBAdapter

- (id)policyWithVersion:(unint64_t)version error:(id *)error
{

  v7 = sub_100112BF4(version, error);
  self, v8, v9, v10, v11, v12, v13, v14;

  return v7;
}

@end