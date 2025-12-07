@interface SigSonify
+ (BOOL)ConvertException:(const exception *)exception toError:(id *)error;
+ (BOOL)ConvertSystemError:(const system_error *)error toError:(id *)toError;
+ (BOOL)FillUnknownError:(id *)error;
+ (id)sonifySignature:(id)signature withSampleRate:(unsigned int)rate error:(id *)error;
@end

@implementation SigSonify

+ (id)sonifySignature:(id)signature withSampleRate:(unsigned int)rate error:(id *)error
{
  signatureCopy = signature;
  v6 = gsl::make_span<shazam::spectral_peak_compact_t const>([signatureCopy bytes], objc_msgSend(signatureCopy, "length"));
  shazam::packed_signature_view::packed_signature_view(v10, v6, v7);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)2147483647>>(v9);
}

+ (BOOL)ConvertSystemError:(const system_error *)error toError:(id *)toError
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (toError)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:(*(error->var0 + 2))(error encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v7 = MEMORY[0x277CCA9B8];
    var0 = error->var2.var0;
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    *toError = [v7 errorWithDomain:@"com.shazam.sigsonify" code:var0 userInfo:v9];
  }

  return toError != 0;
}

+ (BOOL)ConvertException:(const exception *)exception toError:(id *)error
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:(*(exception->var0 + 2))(exception encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v6 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA450];
    v10[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    *error = [v6 errorWithDomain:@"com.shazam.sigsonify" code:-100 userInfo:v7];
  }

  return error != 0;
}

+ (BOOL)FillUnknownError:(id *)error
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    v4 = MEMORY[0x277CCA9B8];
    v7 = *MEMORY[0x277CCA450];
    v8[0] = @"Something unexpected happened.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    *error = [v4 errorWithDomain:@"com.shazam.sigsonify" code:-200 userInfo:v5];
  }

  return error != 0;
}

@end