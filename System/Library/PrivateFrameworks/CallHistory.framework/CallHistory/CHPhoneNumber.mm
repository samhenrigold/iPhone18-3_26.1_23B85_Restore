@interface CHPhoneNumber
- (CHPhoneNumber)initWithDigits:(id)digits isoCountryCode:(id)code;
- (NSString)formattedRepresentation;
- (NSString)normalizedRepresentation;
@end

@implementation CHPhoneNumber

- (NSString)formattedRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  if (![(CHPhoneNumber *)self formattedRepresentationAttempted])
  {
    logHandle = [(CHLogger *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      digits = [(CHPhoneNumber *)self digits];
      isoCountryCode = [(CHPhoneNumber *)self isoCountryCode];
      v13 = 138412546;
      v14 = digits;
      v15 = 2114;
      v16 = isoCountryCode;
      _os_log_impl(&dword_1C3E90000, logHandle, OS_LOG_TYPE_DEFAULT, "Not formatted. So let's create a CFPhoneNumberRef. Num: %@, iso: %{public}@", &v13, 0x16u);
    }

    digits2 = [(CHPhoneNumber *)self digits];
    isoCountryCode2 = [(CHPhoneNumber *)self isoCountryCode];
    v8 = CFPhoneNumberCreate();

    if (v8)
    {
      String = CFPhoneNumberCreateString();
      formattedRepresentation = self->_formattedRepresentation;
      self->_formattedRepresentation = String;

      CFRelease(v8);
    }

    [(CHPhoneNumber *)self setFormattedRepresentationAttempted:1];
  }

  v11 = self->_formattedRepresentation;

  return v11;
}

- (CHPhoneNumber)initWithDigits:(id)digits isoCountryCode:(id)code
{
  digitsCopy = digits;
  codeCopy = code;
  v14.receiver = self;
  v14.super_class = CHPhoneNumber;
  v8 = [(CHLogger *)&v14 initWithDomain:"CHPhoneNumber"];
  if (v8)
  {
    v9 = [digitsCopy copy];
    digits = v8->_digits;
    v8->_digits = v9;

    v11 = [codeCopy copy];
    isoCountryCode = v8->_isoCountryCode;
    v8->_isoCountryCode = v11;
  }

  return v8;
}

- (NSString)normalizedRepresentation
{
  if (![(CHPhoneNumber *)self normalizedRepresentationAttempted])
  {
    digits = [(CHPhoneNumber *)self digits];
    isoCountryCode = [(CHPhoneNumber *)self isoCountryCode];
    v5 = CFPhoneNumberCreate();

    if (v5)
    {
      String = CFPhoneNumberCreateString();
      normalizedRepresentation = self->_normalizedRepresentation;
      self->_normalizedRepresentation = String;

      CFRelease(v5);
    }

    [(CHPhoneNumber *)self setNormalizedRepresentationAttempted:1];
  }

  v8 = self->_normalizedRepresentation;

  return v8;
}

@end