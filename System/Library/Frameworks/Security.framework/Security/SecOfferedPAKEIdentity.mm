@interface SecOfferedPAKEIdentity
- (SecOfferedPAKEIdentity)initWithClientIdentity:(id)identity :(id)a4 :(unsigned __int16)a5;
@end

@implementation SecOfferedPAKEIdentity

- (SecOfferedPAKEIdentity)initWithClientIdentity:(id)identity :(id)a4 :(unsigned __int16)a5
{
  v5 = a5;
  identityCopy = identity;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = SecOfferedPAKEIdentity;
  v10 = [(SecOfferedPAKEIdentity *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(SecOfferedPAKEIdentity *)v10 setClient_identity:identityCopy];
    [(SecOfferedPAKEIdentity *)v11 setServer_identity:v9];
    [(SecOfferedPAKEIdentity *)v11 setPake_scheme:v5];
  }

  return v11;
}

@end