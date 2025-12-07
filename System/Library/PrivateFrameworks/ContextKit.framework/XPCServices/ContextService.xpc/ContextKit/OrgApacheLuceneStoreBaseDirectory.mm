@interface OrgApacheLuceneStoreBaseDirectory
- (id)description;
- (id)obtainLockWithNSString:(id)string;
- (void)dealloc;
- (void)ensureOpen;
@end

@implementation OrgApacheLuceneStoreBaseDirectory

- (id)obtainLockWithNSString:(id)string
{
  lockFactory = self->lockFactory_;
  if (!lockFactory)
  {
    JreThrowNullPointerException();
  }

  return [(OrgApacheLuceneStoreLockFactory *)lockFactory obtainLockWithOrgApacheLuceneStoreDirectory:self withNSString:string];
}

- (void)ensureOpen
{
  v2 = atomic_load(&self->isOpen_);
  if ((v2 & 1) == 0)
  {
    v3 = new_OrgApacheLuceneStoreAlreadyClosedException_initWithNSString_(@"this Directory is closed");
    objc_exception_throw(v3);
  }
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = OrgApacheLuceneStoreBaseDirectory;
  v2 = [(OrgApacheLuceneStoreDirectory *)&v11 description];
  return JreStrcat("$$@", v3, v4, v5, v6, v7, v8, v9, v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBaseDirectory;
  [(OrgApacheLuceneStoreBaseDirectory *)&v3 dealloc];
}

@end