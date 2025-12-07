@interface DefaultObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DefaultObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  v11 = objc_msgSend_valueForKey_(objectCopy, v10, pathCopy);
  if (qword_1EAFE38A0 != -1)
  {
    sub_19B7A35BC();
  }

  v12 = qword_1EAFE3898;
  if (os_log_type_enabled(qword_1EAFE3898, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = pathCopy;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_INFO, "[CMMslDefaultObserver] Received KVO for key,%{public}@,value,%{public}@", &v13, 0x16u);
  }

  sub_19B4C5788(context, pathCopy, v11);
}

@end