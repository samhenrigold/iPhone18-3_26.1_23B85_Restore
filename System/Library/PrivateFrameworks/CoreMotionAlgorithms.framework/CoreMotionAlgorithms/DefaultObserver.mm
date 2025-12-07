@interface DefaultObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DefaultObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  v11 = objc_msgSend_valueForKey_(objectCopy, v10, pathCopy);
  if (qword_27EE375E0 != -1)
  {
    sub_245F2ACAC();
  }

  v12 = qword_27EE375D8;
  if (os_log_type_enabled(qword_27EE375D8, OS_LOG_TYPE_INFO))
  {
    v13 = 138543618;
    v14 = pathCopy;
    v15 = 2114;
    v16 = v11;
    _os_log_impl(&dword_245D80000, v12, OS_LOG_TYPE_INFO, "[CMMslDefaultObserver] Received KVO for key,%{public}@,value,%{public}@", &v13, 0x16u);
  }

  sub_245DF9778(context, pathCopy, v11);
}

@end