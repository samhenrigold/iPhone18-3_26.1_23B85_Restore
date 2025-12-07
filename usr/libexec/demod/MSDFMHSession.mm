@interface MSDFMHSession
- (void)authenticate:(id)authenticate forTask:(id)task completion:(id)completion;
@end

@implementation MSDFMHSession

- (void)authenticate:(id)authenticate forTask:(id)task completion:(id)completion
{
  authenticateCopy = authenticate;
  taskCopy = task;
  completionCopy = completion;
  if (os_variant_has_internal_content())
  {
    info = [taskCopy info];
    fmhURLOverride = [(MSDSessionFMHTrustEvaluate *)info fmhURLOverride];

    if (fmhURLOverride)
    {
      protectionSpace = [authenticateCopy protectionSpace];
      host = [protectionSpace host];
      fmhURLOverride2 = [(MSDSessionFMHTrustEvaluate *)info fmhURLOverride];
      host2 = [fmhURLOverride2 host];
      v16 = [host isEqualToString:host2];

      if (v16)
      {
        goto LABEL_6;
      }
    }
  }

  info = objc_alloc_init(MSDSessionFMHTrustEvaluate);
  protectionSpace2 = [authenticateCopy protectionSpace];
  v18 = -[MSDSessionFMHTrustEvaluate trustServer:isRedirect:](info, "trustServer:isRedirect:", [protectionSpace2 serverTrust], objc_msgSend(taskCopy, "redirected"));

  if (v18)
  {
LABEL_6:
    protectionSpace3 = [authenticateCopy protectionSpace];
    v21 = +[NSURLCredential credentialForTrust:](NSURLCredential, "credentialForTrust:", [protectionSpace3 serverTrust]);

    completionCopy[2](completionCopy, 0, v21);
    goto LABEL_10;
  }

  v22 = sub_100063A54(v19);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    sub_1000CC3FC(taskCopy, v22);
  }

  completionCopy[2](completionCopy, 2, 0);
LABEL_10:
}

@end