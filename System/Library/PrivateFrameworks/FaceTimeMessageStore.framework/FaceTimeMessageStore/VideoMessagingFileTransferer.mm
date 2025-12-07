@interface VideoMessagingFileTransferer
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account pendingResourceWithMetadata:(id)metadata fromID:(id)d acknowledgementBlock:(id)block context:(id)context;
@end

@implementation VideoMessagingFileTransferer

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24 - v16;
  if (l)
  {
    sub_1BC8F6FB4();
    v18 = sub_1BC8F7014();
    v19 = 0;
  }

  else
  {
    v18 = sub_1BC8F7014();
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v19, 1, v18);
  if (metadata)
  {
    sub_1BC8F7AA4();
  }

  if (d)
  {
    sub_1BC8F7C24();
  }

  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1BC846AD4();

  sub_1BC7C1744(v17, &qword_1EBCF5A20, &qword_1BC901BF0);
}

- (void)service:(id)service account:(id)account pendingResourceWithMetadata:(id)metadata fromID:(id)d acknowledgementBlock:(id)block context:(id)context
{
  v14 = _Block_copy(block);
  if (metadata)
  {
    sub_1BC8F7AA4();
  }

  if (d)
  {
    sub_1BC8F7C24();
    if (v14)
    {
LABEL_5:
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      v14 = sub_1BC849AD0;
      goto LABEL_8;
    }
  }

  else if (v14)
  {
    goto LABEL_5;
  }

  v15 = 0;
LABEL_8:
  serviceCopy = service;
  accountCopy = account;
  contextCopy = context;
  selfCopy = self;
  sub_1BC84809C();
  sub_1BC7BE108(v14, v15);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  if (identifier)
  {
    sub_1BC8F7C24();
  }

  serviceCopy = service;
  accountCopy = account;
  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  sub_1BC848B1C();
}

@end