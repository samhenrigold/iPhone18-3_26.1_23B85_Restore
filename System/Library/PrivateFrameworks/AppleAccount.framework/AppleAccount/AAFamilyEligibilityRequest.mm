@interface AAFamilyEligibilityRequest
- (id)urlRequest;
- (id)urlString;
@end

@implementation AAFamilyEligibilityRequest

- (id)urlString
{
  v2 = +[AAURLConfiguration urlConfiguration];
  familyEligibilityURL = [v2 familyEligibilityURL];

  return familyEligibilityURL;
}

- (id)urlRequest
{
  v9.receiver = self;
  v9.super_class = AAFamilyEligibilityRequest;
  urlRequest = [(AAFamilyRequest *)&v9 urlRequest];
  v4 = [urlRequest mutableCopy];

  if (!self->_iTunesAccount)
  {
    v6 = _AALogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B6F6A000, v6, OS_LOG_TYPE_DEFAULT, "No iTunes account provided to family eligibility request.", v8, 2u);
    }
  }

  return v4;
}

@end