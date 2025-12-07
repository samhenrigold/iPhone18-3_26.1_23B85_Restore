@interface CKContainer
+ (id)MSDCloudKitContainer;
+ (id)MSDPublicCloudKitContainer;
- (void)acceptShareWithShareMetadata:(id)metadata completion:(id)completion;
- (void)fetchShareMetadataForShareURL:(id)l withShareToken:(id)token completion:(id)completion;
@end

@implementation CKContainer

+ (id)MSDCloudKitContainer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023B20;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059AB0 != -1)
  {
    dispatch_once(&qword_100059AB0, block);
  }

  v2 = qword_100059AA8;

  return v2;
}

+ (id)MSDPublicCloudKitContainer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100023C8C;
  block[3] = &unk_1000508C0;
  block[4] = self;
  if (qword_100059AC0 != -1)
  {
    dispatch_once(&qword_100059AC0, block);
  }

  v2 = qword_100059AB8;

  return v2;
}

- (void)acceptShareWithShareMetadata:(id)metadata completion:(id)completion
{
  metadataCopy = metadata;
  completionCopy = completion;
  v8 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315395;
    v23 = "[CKContainer(MSDCloudDataContainer) acceptShareWithShareMetadata:completion:]";
    v24 = 2113;
    v25 = metadataCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s shareMetaData %{private}@", buf, 0x16u);
  }

  if (metadataCopy)
  {
    v9 = [CKAcceptSharesOperation alloc];
    v19 = metadataCopy;
    v10 = [NSArray arrayWithObjects:&v19 count:1];
    v11 = [v9 initWithShareMetadatas:v10];

    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100023F68;
    v17 = &unk_100051F08;
    v18 = completionCopy;
    [v11 setPerShareCompletionBlock:&v14];
    [v11 setQualityOfService:{17, v14, v15, v16, v17}];
    [(CKContainer *)self addOperation:v11];
    v12 = v18;
LABEL_7:

    goto LABEL_8;
  }

  if (completionCopy)
  {
    v13 = MSErrorDomain;
    v20 = MSUserInfoErrorStringKey;
    v21 = @"Failed to accept share for Nil ShareMetaData";
    v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v12 = [NSError errorWithDomain:v13 code:1 userInfo:v11];
    (*(completionCopy + 2))(completionCopy, 0, v12);
    goto LABEL_7;
  }

LABEL_8:
}

- (void)fetchShareMetadataForShareURL:(id)l withShareToken:(id)token completion:(id)completion
{
  lCopy = l;
  tokenCopy = token;
  completionCopy = completion;
  v11 = sub_100030FE4(completionCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315651;
    v29 = "[CKContainer(MSDCloudDataContainer) fetchShareMetadataForShareURL:withShareToken:completion:]";
    v30 = 2113;
    v31 = lCopy;
    v32 = 2113;
    v33 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s URL %{private}@ shareToken  %{private}@", buf, 0x20u);
  }

  if (lCopy)
  {
    v13 = [CKFetchShareMetadataOperation alloc];
    if (tokenCopy)
    {
      v25 = lCopy;
      v14 = [NSArray arrayWithObjects:&v25 count:1];
      v23 = lCopy;
      v24 = tokenCopy;
      v15 = [NSDictionary dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      v16 = [v13 initWithShareURLs:v14 invitationTokensByShareURL:v15];
    }

    else
    {
      v22 = lCopy;
      v14 = [NSArray arrayWithObjects:&v22 count:1];
      v16 = [v13 initWithShareURLs:v14];
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000242FC;
    v20[3] = &unk_100051F30;
    v21 = completionCopy;
    [v16 setPerShareMetadataBlock:v20];
    [v16 setFetchShareMetadataCompletionBlock:&stru_100051F50];
    [v16 setQualityOfService:17];
    [(CKContainer *)self addOperation:v16];
    v19 = v21;
    goto LABEL_12;
  }

  v17 = sub_100030FE4(v12);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1000244C8(v17);
  }

  if (completionCopy)
  {
    v18 = MSErrorDomain;
    v26 = MSUserInfoErrorStringKey;
    v27 = @"Failed to fetchShareMetadata for Nil Share URL";
    v16 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v19 = [NSError errorWithDomain:v18 code:1 userInfo:v16];
    (*(completionCopy + 2))(completionCopy, 0, v19);
LABEL_12:
  }
}

@end