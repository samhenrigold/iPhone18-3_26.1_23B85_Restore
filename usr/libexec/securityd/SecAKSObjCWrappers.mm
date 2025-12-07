@interface SecAKSObjCWrappers
+ (BOOL)aksDecryptWithKeybag:(int)keybag keyclass:(int)keyclass ciphertext:(id)ciphertext outKeyclass:(int *)outKeyclass plaintext:(id)plaintext personaId:(const void *)id personaIdLength:(unint64_t)length error:(id *)self0;
+ (BOOL)aksEncryptWithKeybag:(int)keybag keyclass:(int)keyclass plaintext:(id)plaintext outKeyclass:(int *)outKeyclass ciphertext:(id)ciphertext personaId:(const void *)id personaIdLength:(unint64_t)length error:(id *)self0;
@end

@implementation SecAKSObjCWrappers

+ (BOOL)aksDecryptWithKeybag:(int)keybag keyclass:(int)keyclass ciphertext:(id)ciphertext outKeyclass:(int *)outKeyclass plaintext:(id)plaintext personaId:(const void *)id personaIdLength:(unint64_t)length error:(id *)self0
{
  v13 = *&keyclass;
  v14 = *&keybag;
  ciphertextCopy = ciphertext;
  plaintextCopy = plaintext;
  v23 = 0;
  v17 = [ciphertextCopy length];
  bytes = [ciphertextCopy bytes];
  if (id)
  {
    v19 = sub_100192CEC(@"od", v14, v13, v17, bytes, outKeyclass, plaintextCopy, id, length, &v23);
  }

  else
  {
    v19 = sub_10000D43C(@"od", v14, 0, v13, v17, bytes, outKeyclass, plaintextCopy, 0, &v23);
  }

  v20 = v19;
  v21 = v23;
  if (error)
  {
    *error = v23;
  }

  else if (v23)
  {
    v23 = 0;
    CFRelease(v21);
  }

  return v20;
}

+ (BOOL)aksEncryptWithKeybag:(int)keybag keyclass:(int)keyclass plaintext:(id)plaintext outKeyclass:(int *)outKeyclass ciphertext:(id)ciphertext personaId:(const void *)id personaIdLength:(unint64_t)length error:(id *)self0
{
  v13 = *&keyclass;
  v14 = *&keybag;
  plaintextCopy = plaintext;
  ciphertextCopy = ciphertext;
  v23 = 0;
  v17 = [plaintextCopy length];
  bytes = [plaintextCopy bytes];
  if (id)
  {
    v19 = sub_100192CEC(@"oe", v14, v13, v17, bytes, outKeyclass, ciphertextCopy, id, length, &v23);
  }

  else
  {
    v19 = sub_10000D43C(@"oe", v14, 0, v13, v17, bytes, outKeyclass, ciphertextCopy, 0, &v23);
  }

  v20 = v19;
  v21 = v23;
  if (error)
  {
    *error = v23;
  }

  else if (v23)
  {
    v23 = 0;
    CFRelease(v21);
  }

  return v20;
}

@end