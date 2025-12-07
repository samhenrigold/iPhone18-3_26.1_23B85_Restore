@interface SUUIPassbookPassDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SUUIPassbookPassDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  v8 = SUUIPassKitCoreFramework(dataCopy, v7);
  v12 = 0;
  v9 = [objc_alloc(SUUIWeakLinkedClassForString(&cfstr_Pkpass.isa v8))];

  v10 = v12;
  if (error && !v9)
  {
    v10 = v10;
    *error = v10;
  }

  return v9;
}

@end