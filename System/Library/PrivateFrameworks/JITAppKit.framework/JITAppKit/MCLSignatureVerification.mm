@interface MCLSignatureVerification
+ (BOOL)verifySignatureOf:(id)of with:(id)with using:(id)using;
@end

@implementation MCLSignatureVerification

+ (BOOL)verifySignatureOf:(id)of with:(id)with using:(id)using
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](of);
  MEMORY[0x277D82BE0](with);
  MEMORY[0x277D82BE0](using);
  v11 = sub_255600AAC();
  v16 = v5;
  v9 = sub_255600AAC();
  v14 = v6;
  v10 = sub_255600AAC();
  v12 = v7;
  swift_getObjCClassMetadata();
  sub_2555F794C(v11, v16, v9, v14, v10, v12);

  MEMORY[0x277D82BD8](using);

  MEMORY[0x277D82BD8](with);

  MEMORY[0x277D82BD8](of);
  return sub_25560076C() & 1;
}

@end