@interface BICCacheStats
+ (id)operationToLogString:(id)string;
+ (void)addToCounter:(id)counter amount:(unint64_t)amount;
+ (void)incrementCounter:(id)counter;
+ (void)logCounter:(id)counter amount:(unint64_t)amount;
+ (void)logDescribedImage:(id)image withComment:(id)comment;
+ (void)logOperation:(id)operation forRequest:(id)request;
+ (void)prepare;
@end

@implementation BICCacheStats

+ (void)prepare
{
  if (qword_3427E8 != -1)
  {
    sub_1E9094();
  }
}

+ (void)logOperation:(id)operation forRequest:(id)request
{
  operationCopy = operation;
  requestCopy = request;
  v8 = mach_absolute_time();
  if (qword_3427F8)
  {
    v9 = v8;
    v11 = dword_3427F0;
    v10 = *algn_3427F4;
    v12 = BCImageCacheLog(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = v9 * v11 / v10 / 0x186A0;
      identifier = [requestCopy identifier];
      *buf = 138413058;
      v22 = identifier;
      v23 = 2112;
      v24 = operationCopy;
      v25 = 2048;
      v26 = v13;
      v27 = 2048;
      generation = [requestCopy generation];
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_INFO, "BICCacheStats: Request$%@,%@,%llu,%lu", buf, 0x2Au);
    }
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_B7AA8;
  v17[3] = &unk_2C8DD0;
  v19 = operationCopy;
  selfCopy = self;
  v18 = requestCopy;
  v15 = operationCopy;
  v16 = requestCopy;
  os_unfair_lock_lock(&unk_342800);
  sub_B7AA8(v17);
  os_unfair_lock_unlock(&unk_342800);
}

+ (void)logDescribedImage:(id)image withComment:(id)comment
{
  imageCopy = image;
  commentCopy = comment;
  if (qword_3427F8)
  {
    identifier = [imageCopy identifier];
    v8 = [identifier isEqualToString:qword_3427F8];
    if (!v8)
    {
      if (!identifier || !qword_3427F8)
      {
        goto LABEL_16;
      }

      commentCopy = BCImageCacheLog(v8);
      if (os_log_type_enabled(commentCopy, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = identifier;
        _os_log_impl(&dword_0, commentCopy, OS_LOG_TYPE_INFO, "BICCacheStats: Skip %@", buf, 0xCu);
      }

      goto LABEL_15;
    }

    image = [imageCopy image];
    cGImage = [image CGImage];

    if (!cGImage)
    {
LABEL_16:

      goto LABEL_17;
    }

    commentCopy = [NSString stringWithFormat:@"ID_%@-Timestamp_%llu-%@.png", identifier, mach_absolute_time() * dword_3427F0 / *algn_3427F4 / 0xF4240, commentCopy];
    v12 = objc_alloc_init(CIContext);
    v13 = [[CIImage alloc] initWithCGImage:cGImage];
    v14 = NSTemporaryDirectory();
    v15 = [v14 stringByAppendingPathComponent:commentCopy];
    v16 = [NSURL fileURLWithPath:v15];

    v21 = 0;
    [v12 writePNGRepresentationOfImage:v13 toURL:v16 format:kCIFormatRGBA8 colorSpace:objc_msgSend(v13 options:"colorSpace") error:{&__NSDictionary0__struct, &v21}];
    v17 = v21;
    v18 = BCImageCacheLog(v17);
    v19 = v18;
    if (v17)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        absoluteString = [v16 absoluteString];
        *buf = 138412802;
        v23 = absoluteString;
        v24 = 2112;
        v25 = commentCopy;
        v26 = 2112;
        v27 = v17;
        _os_log_error_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "BICCacheStats: Failed to %@ for %@, %@", buf, 0x20u);
LABEL_13:
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      absoluteString = [v16 absoluteString];
      *buf = 138412546;
      v23 = absoluteString;
      v24 = 2112;
      v25 = commentCopy;
      _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "BICCacheStats: %@ for %@", buf, 0x16u);
      goto LABEL_13;
    }

LABEL_15:
    goto LABEL_16;
  }

LABEL_17:
}

+ (void)incrementCounter:(id)counter
{
  counterCopy = counter;
  v4 = counterCopy;
  if (qword_3427F8)
  {
    v5 = BCImageCacheLog(counterCopy);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "BICCacheStats: Counter$%@,1", &v6, 0xCu);
    }
  }
}

+ (void)addToCounter:(id)counter amount:(unint64_t)amount
{
  counterCopy = counter;
  v6 = counterCopy;
  if (qword_3427F8)
  {
    v7 = BCImageCacheLog(counterCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2048;
      amountCopy = amount;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BICCacheStats: Counter$%@,%llu", &v8, 0x16u);
    }
  }
}

+ (void)logCounter:(id)counter amount:(unint64_t)amount
{
  counterCopy = counter;
  v6 = counterCopy;
  if (qword_3427F8)
  {
    v7 = BCImageCacheLog(counterCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412546;
      v9 = v6;
      v10 = 2048;
      amountCopy = amount;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "BICCacheStats: Value$%@,%llu", &v8, 0x16u);
    }
  }
}

+ (id)operationToLogString:(id)string
{
  v3 = qword_342810;
  stringCopy = string;
  if (v3 != -1)
  {
    sub_1E90A8();
  }

  v5 = [qword_342808 indexOfObject:stringCopy];

  return [NSString stringWithFormat:@"%lu, ", v5];
}

@end