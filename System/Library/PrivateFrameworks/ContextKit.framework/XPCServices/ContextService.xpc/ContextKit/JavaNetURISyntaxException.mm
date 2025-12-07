@interface JavaNetURISyntaxException
- (id)getMessage;
- (id)getReason;
- (void)dealloc;
@end

@implementation JavaNetURISyntaxException

- (id)getReason
{
  v3.receiver = self;
  v3.super_class = JavaNetURISyntaxException;
  return [(JavaLangThrowable *)&v3 getMessage];
}

- (id)getMessage
{
  v12.receiver = self;
  v12.super_class = JavaNetURISyntaxException;
  getMessage = [(JavaLangThrowable *)&v12 getMessage];
  if (self->index_ == -1)
  {
    return JreStrcat("$$$", v4, v5, v6, v7, v8, v9, v10, getMessage);
  }

  else
  {
    return JreStrcat("$$I$$", v4, v5, v6, v7, v8, v9, v10, getMessage);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetURISyntaxException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end