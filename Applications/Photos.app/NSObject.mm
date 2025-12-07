@interface NSObject
- (void)ppt_startIterationWithBlock:(id)block completion:(id)completion;
@end

@implementation NSObject

- (void)ppt_startIterationWithBlock:(id)block completion:(id)completion
{
  blockCopy = block;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_10001F208;
  v26 = sub_10001F234;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10001F208;
  v20 = sub_10001F234;
  v21 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100038090;
  v12[3] = &unk_10005BFD8;
  v14 = &v22;
  v15 = &v16;
  completionCopy = completion;
  v13 = completionCopy;
  v7 = objc_retainBlock(v12);
  v8 = [blockCopy copy];
  v9 = v23[5];
  v23[5] = v8;

  v10 = [v7 copy];
  v11 = v17[5];
  v17[5] = v10;

  (*(v23[5] + 16))();
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v22, 8);
}

@end