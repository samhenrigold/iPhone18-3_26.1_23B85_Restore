@interface NearFieldSessionShim
- (id)getUnderlyingNFSession:(id *)session;
- (id)transceive:(id)transceive toOS:(int64_t)s outError:(id *)error;
- (id)transceiveSensitive:(id)sensitive outError:(id *)error;
- (unint64_t)validatePairing:(id *)pairing;
- (void)dealloc;
@end

@implementation NearFieldSessionShim

- (void)dealloc
{
  (*(self->_onDealloc + 2))();
  v3.receiver = self;
  v3.super_class = NearFieldSessionShim;
  [(NearFieldSessionShim *)&v3 dealloc];
}

- (id)transceive:(id)transceive toOS:(int64_t)s outError:(id *)error
{
  transceiveCopy = transceive;
  v9 = transceiveCopy;
  if (self->_invalidated)
  {
    if (error)
    {
      v10 = sub_1000554DC(transceiveCopy);
      *error = SESCreateAndLogError();
    }

    v11 = 0;
  }

  else
  {
    session = self->_session;
    seid = self->_seid;
    v19 = 0;
    v11 = [(NFSecureElementManagerSession *)session transceive:v9 forSEID:seid toOS:s error:&v19];
    v14 = v19;
    v15 = v14;
    if (v11)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      if (error)
      {
        v17 = sub_1000554DC(v14);
        *error = SESCreateAndLogError();
      }

      self->_invalidated = 1;
    }
  }

  return v11;
}

- (unint64_t)validatePairing:(id *)pairing
{
  if (self->_invalidated)
  {
    v4 = 4279897;
    if (pairing)
    {
      v5 = sub_1000554DC(self);
      *pairing = SESCreateAndLogError();
    }
  }

  else
  {
    v6 = [(NFSecureElementManagerSession *)self->_session validateSEPairings:0];
    if (v6)
    {
      if (v6 == 27)
      {
        return 0;
      }

      else
      {
        v4 = 4279897;
        if (pairing)
        {
          v7 = sub_1000554DC(v6);
          *pairing = SESCreateAndLogError();
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

- (id)getUnderlyingNFSession:(id *)session
{
  if (self->_invalidated)
  {
    if (session)
    {
      v4 = sub_1000554DC(self);
      *session = SESCreateAndLogError();
    }

    v5 = 0;
  }

  else
  {
    v5 = self->_session;
  }

  return v5;
}

- (id)transceiveSensitive:(id)sensitive outError:(id *)error
{
  sensitiveCopy = sensitive;
  v7 = sensitiveCopy;
  if (self->_invalidated)
  {
    if (error)
    {
      v8 = sub_1000554DC(sensitiveCopy);
      *error = SESCreateAndLogError();

      error = 0;
    }
  }

  else
  {
    error = [(NFSecureElementManagerSession *)self->_session transceive:sensitiveCopy forSEID:self->_seid toOS:0 secureZeroOut:1 error:error];
  }

  return error;
}

@end