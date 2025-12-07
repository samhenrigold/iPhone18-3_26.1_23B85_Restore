@interface NSURL(Mutable)
- (id)pf_URLByAppendingQueryParameterKey:()Mutable value:;
- (id)pf_URLByAppendingQueryParameters:()Mutable;
- (id)pf_URLByRemovingQueryParameters:()Mutable;
- (id)pf_queryAsDictionary;
@end

@implementation NSURL(Mutable)

- (id)pf_queryAsDictionary
{
  query = [self query];
  v2 = [NSURLUtil queryStringToQueryDictionary:query];

  return v2;
}

- (id)pf_URLByAppendingQueryParameters:()Mutable
{
  v4 = a3;
  pf_components = [self pf_components];
  query = [pf_components query];
  v7 = [NSURLUtil queryStringToQueryDictionary:query];

  [v7 addEntriesFromDictionary:v4];
  v8 = [NSURLUtil dictionaryToQueryString:v7];
  [pf_components setQuery:v8];

  v9 = [pf_components URL];

  return v9;
}

- (id)pf_URLByRemovingQueryParameters:()Mutable
{
  v4 = a3;
  pf_components = [self pf_components];
  query = [pf_components query];
  v7 = [NSURLUtil queryStringToQueryDictionary:query];

  [v7 removeObjectsForKeys:v4];
  v8 = [NSURLUtil dictionaryToQueryString:v7];
  [pf_components setQuery:v8];

  v9 = [pf_components URL];

  return v9;
}

- (id)pf_URLByAppendingQueryParameterKey:()Mutable value:
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13[0] = a4;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [self pf_URLByAppendingQueryParameters:v9];

  return v10;
}

@end